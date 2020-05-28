<?php
$pageTitle = basename(__FILE__, '.php');

// import header from partials
require_once "./partials/header-partial.php";

// get product-details
isset($_GET['prod_id']) ? $id = $_GET['prod_id'] : header("location: ./shop.php");

require_once "./models/Database.php";
$db = new Database();

// get the specified product from database
$query = "SELECT * FROM PRODUCTS WHERE PRODUCT_ID = ?";
$stmt = $db->conn->prepare($query);
$stmt->execute([$id]);
$product = $stmt->fetch(PDO::FETCH_OBJ);

// get the product category for the product from database
$query = "SELECT CATEGORY_NAME FROM PRODUCT_CATEGORIES PC, PRODUCTS P 
                    WHERE PC.PRODUCT_CATEGORY_ID = P.PRODUCT_CATEGORY_ID
                    AND P.PRODUCT_ID = ?";
$stmt = $db->conn->prepare($query);
$stmt->execute([$id]);
$prodCategory = $stmt->fetch(PDO::FETCH_OBJ);

// get the basket id for the current customer
$query = "SELECT * FROM BASKETS WHERE BASKETS.CUSTOMER_ID = 10";
$stmt = $db->conn->prepare($query);
$stmt->execute();
$basket = $stmt->fetch(PDO::FETCH_OBJ);

?>
<!--apply page-specific css-->
<link rel="stylesheet" href="./assets/css/shop.css">
<link rel="stylesheet" href="./assets/css/prod-details.css">
<link rel="stylesheet" href="./assets/css/counter.css">

<!--Jquery-->
<script src="./assets/js/jquery.min.js"></script>

</head>

<body>
<?php require_once "./partials/nav-partial.php"; ?>
<main class="container">
    <div class="prod-detail-nav">
        <ul class="shop-nav-link prod-detail-nav-link">
            <li class="nav-item">
                <a href="./index.php" class="nav-link">Home</a>
            </li>
            <li class="nav-item link-separator">/</li>
            <li class="nav-item">
                <a href="./shop.php" class="nav-link">Products</a>
            </li>
            <li class="nav-item link-separator">/</li>
            <li class="nav-item">
                <a class="nav-link active"><?php echo $product->PRODUCT_NAME; ?></a>
            </li>
        </ul>
    </div>

    <div class="prod-detail">
        <div class="prod-detail-top">
            <div class="left">
                <img class="prod-image cover" src="./assets/img/products/<?php echo $product->IMAGE; ?>" alt="">
            </div>
            <div class="right">
                <div class="description">
                    <h1><?php echo $product->PRODUCT_NAME; ?></h1>
                    <p>$<?php echo $product->RATE; ?></p>
                    <p><?php echo $product->DESCRIPTION; ?></p>
                    <p>Maximum order: <span id="maxOrder"><?php echo $product->MAX_ORDER; ?></span></p>
                </div>


                <form class="add-prod-form" action="./cart.php" method="post">
                    <!--product details-->
                    <input type="hidden" name="productId" value="<?php echo $product->PRODUCT_ID; ?>">
                    <input type="hidden" name="basketId" value="<?php echo $basket->BASKET_ID; ?>">
                    <div class="counter">
                        <div class="number-input">
                            <button type="button"
                                    onclick="this.parentNode.querySelector('input[type=number]').stepDown()"></button>
                            <input id="quantity" class="quantity" min="0" max="<?php echo $product->MAX_ORDER; ?>"
                                   name="quantity" value="1" type="number">
                            <button type="button" onclick="this.parentNode.querySelector('input[type=number]').stepUp()"
                                    class="plus"></button>
                        </div>
                    </div>
                    <button id="<?php echo $product->PRODUCT_ID; ?>" class="cart-btn" name="addToCart" type="<?php if(isset($_SESSION['user'])) echo 'submit'; else echo 'button'?>" value="addToCart">Add To Cart</button>
                </form>


                <div class="category">
                    <h5>Category: </h5><span
                            class="prod-category light-grey"><?php echo $prodCategory->CATEGORY_NAME; ?></span>
                </div>
            </div>
        </div>

        <div class="prod-desc-review" x-data="{tab : 'tab1'}">
            <ul class="heading-list">
                <li class="heading-item">
                    <a href="#" @click.prevent="tab = 'tab1'">Description</a>
                </li>
                <li class="heading-item">
                    <a href="#" @click.prevent="tab = 'tab2'">Reviews</a>
                </li>
            </ul>
            <div class="content">
                <p x-show="tab === 'tab1'"><?php echo $product->DESCRIPTION; ?></p>
                <p x-show="tab === 'tab2'">Hello</p>
            </div>
        </div>

    </div>
</main>

<!--Page specific java script-->
<script src="./assets/js/counter.js"></script>
<script src="./assets/js/add-to-cart-with-quantity.js"></script>

<!--import footer from partials-->
<?php require_once "./partials/footer-partial.php"; ?>
