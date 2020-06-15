<?php

// import necessary files.
require_once "./models/Database.php";
require_once "./functions/customFunctions.php";
require_once "./paypal-config.php";

session_start();

if (!isset($_POST["checkoutBtn"])) {
    header("location: ./shop.php");
}

$db = new Database();

$basketProducts = "";
$basketProducts = $_SESSION['basketProducts'];

// if basketProducts is empty redirect user to shop page.
if (empty($basketProducts)) {
    header("location: ./shop.php");
}

$user = "";
$user = $_SESSION['user'];

?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="The Influencers">

    <title>The Clechuderfax E-chain | Checkout</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/checkout/">

    <!-- Custom styles for this template -->
    <link href="./assets/css/app.css" rel="stylesheet">
    <link href="./assets/css/checkout.css" rel="stylesheet">
</head>

<body class="bg-light">

<div class="container">
    <div class="py-5 text-center">
        <img class="d-block mx-auto mb-4" src="./assets/img/logo/logocroppes.png" width="300px" alt="Website Logo">
        <h2>Checkout form</h2>
    </div>

    <form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="POST" class="needs-validation" novalidate>
        <?php $count = 1; ?>
        <input type="hidden" name="cmd" value="_cart">
        <input type="hidden" name="upload" value="1">
        <input type='hidden' name='business' value='<?php echo PAYPAL_EMAIL_ID; ?>'>
        <input type='hidden' name='currency_code' value='<?php echo PAYPAL_CURRENCY; ?>'>
        <input type='hidden' name='notify_url'
               value='<?php PAYPAL_NOTIFY_URL; ?>'>
        <input type='hidden' name='return'
               value='<?php PAYPAL_RETURN_URL; ?>'>

        <?php foreach ($basketProducts as $basketProduct) : ?>
            <?php $product = getProduct($db, $basketProduct->PRODUCT_ID); ?>
            <input type="hidden" name="item_name_<?php echo $count; ?>"
                   value="<?php echo $product->PRODUCT_NAME; ?>"/>
            <input type="hidden" name="quantity_<?php echo $count; ?>"
                   value="<?php echo $basketProduct->QUANTITY; ?>"/>
            <input type="hidden" name="amount_<?php echo $count; ?>"
                   value="<?php echo number_format($product->RATE, 2); ?>"/>
            <?php ++$count; ?>
        <?php endforeach; ?>

        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="firstName">First name</label>
                <input type="text" class="form-control" id="firstName" placeholder=""
                       value="<?php echo $user->FIRST_NAME; ?>" required>
                <div class="invalid-feedback">
                    Valid first name is required.
                </div>
            </div>
            <div class="col-md-6 mb-3">
                <label for="lastName">Last name</label>
                <input type="text" class="form-control" id="lastName" placeholder=""
                       value="<?php echo $user->LAST_NAME; ?>" required>
                <div class="invalid-feedback">
                    Valid last name is required.
                </div>
            </div>
        </div>

        <div class="mb-3">
            <label for="email">Email</label>
            <input required type="email" class="form-control" id="email" placeholder="you@example.com"
                   value="<?php echo $user->EMAIL; ?>">
            <div class="invalid-feedback">
                Please enter a valid email address for shipping updates.
            </div>
        </div>

        <div class="mb-3">
            <label for="collectionSlot">Collection Slot</label>
            <select onchange="setCollectionSlot()" class="custom-select d-block w-100" name="collectionSlot"
                    id="collectionSlot" required>
                <option value="">Choose...</option>
                <!--determine and display only the slots that is wihtin 24 hours from now-->
                <?php
                $query = "SELECT * FROM COLLECTION_SLOTS WHERE UPPER(COLLECTION_DAY) != TRIM(TO_CHAR(SYSDATE, 'DAY')) AND AVAILABLE_ORDER != 0";
                $stmt = $db->conn->prepare($query);
                $stmt->execute();
                $collectionSlots = $stmt->fetchAll();
                ?>

                <?php foreach ($collectionSlots as $collectionSlot) : ?>
                    <option value="<?php echo $collectionSlot->COLLECTION_SLOT_ID; ?>"><?php echo ucfirst($collectionSlot->COLLECTION_TIME); ?></option>
                <?php endforeach; ?>
            </select>
            <div class="invalid-feedback">
                Please select a valid slot.
            </div>
        </div>

        <hr class="mb-4">

        <button class="btn btn-primary" type="submit" name="paypal">Checkout with paypal</button>
        <a class="btn btn-dark" href="./cart.php" role="button">Go Back To Cart</a>
        <div id="paypal-button-container"></div>
    </form>

    <footer class="my-5 pt-5 text-muted text-center text-small">
        <p class="mb-1">&copy; 2019-2020 The Clechuderfax E-chain</p>
        <ul class="list-inline">
            <li class="list-inline-item"><a href="#">Privacy</a></li>
            <li class="list-inline-item"><a href="#">Terms</a></li>
            <li class="list-inline-item"><a href="#">Support</a></li>
        </ul>
    </footer>
</div>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<!--    bootstrap js-->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
<script src="./template-assets/vendor/jquery/jquery.min.js"></script>
<script>
    // JavaScript for disabling form submissions if there are invalid fields
    (function () {
        'use strict';

        window.addEventListener('load', function () {
            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            let forms = document.getElementsByClassName('needs-validation');

            // Loop over them and prevent submission
            let validation = Array.prototype.filter.call(forms, function (form) {
                form.addEventListener('submit', function (event) {
                    if (form.checkValidity() === false) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
        }, false);
    })();

    // set the collection slot to session
    function setCollectionSlot() {
        const element = document.getElementById("collectionSlot");
        $.post('./ajax-req-processings/set-collection-slot.php',
            {
                collectionSlotId: parseInt(element.value)
            },
        );
    }
</script>
</body>
</html>
