<?php
$pageTitle = basename(__FILE__, '.php');

// import header from partials
require_once "./partials/header-partial.php";
require_once "./models/Database.php";
$db = new Database();

if (isset($_SESSION['basketProducts'])) {
    $basketProducts = $_SESSION['basketProducts'];
}

// get a specific product
function getProduct($db, $productId)
{
    $query = "SELECT * FROM PRODUCTS WHERE PRODUCT_ID = ?";
    $stmt = $db->conn->prepare($query);
    $stmt->execute([$productId]);
    return $stmt->fetch(PDO::FETCH_OBJ);
}

?>

    <!--apply page-specific css-->
    <link rel="stylesheet" href="./assets/css/shop.css">
    <link rel="stylesheet" href="./assets/css/about-us.css">
    <link rel="stylesheet" href="./assets/css/cart-1.css">

    <!--Jquery-->
    <script src="./assets/js/jquery.min.js"></script>

    </head>

    <body>
    <?php require_once "./partials/nav-partial.php"; ?>
    <section class="hero relative">
        <img src="./assets/img/background/background_1.jpg" alt="Hero Image">
        <ul class="shop-nav-link centered">
            <li class="nav-item">
                <a href="./index.php" class="nav-link">Home</a>
            </li>
            <li class="nav-item link-separator">/</li>
            <li class="nav-item">
                <a class="nav-link active">Cart</a>
            </li>
        </ul>
    </section>

    <div>
        <div class="column-labels">
            <label class="product-image">Image</label>
            <label class="product-details">Product</label>
            <label class="product-price">Price</label>
            <label class="product-quantity">Quantity</label>
            <label class="product-removal">Remove</label>
            <label class="product-line-price">Total</label>
        </div>

        <?php $totalAmount = 0; ?>
        <?php if (isset($_SESSION['basketProducts']) || empty($basketProducts)) : ?>
            <?php foreach ($basketProducts as $basketProduct) : ?>
                <?php $product = getProduct($db, $basketProduct->PRODUCT_ID); ?>
                <?php $amount = number_format($product->RATE, 2) * number_format($basketProduct->QUANTITY); ?>
                <div class="product">
                    <div class="product-image">
                        <img src="./assets/img/products/<?php echo $product->IMAGE; ?>">
                    </div>
                    <div class="product-details">
                        <div class="product-title"><?php echo $product->PRODUCT_NAME; ?></div>
                        <p class="product-description"><?php echo $product->DESCRIPTION; ?></p>
                    </div>
                    <div class="product-price"><?php echo $product->RATE; ?></div>
                    <div class="product-quantity">
                        <input type="number" value="<?php echo $basketProduct->QUANTITY; ?>" min="1"
                               max="<?php echo $product->MAX_ORDER; ?>">
                        <input id="productId" type="hidden" value="<?php echo $basketProduct->PRODUCT_ID; ?>">
                    </div>
                    <div class="product-removal">
                        <button class="remove-product">
                            Remove
                        </button>
                        <input id="productId" type="hidden" value="<?php echo $basketProduct->PRODUCT_ID; ?>">
                    </div>
                    <div class="product-line-price"><?php echo $amount; ?></div>
                </div>
                <?php $totalAmount += number_format($amount); ?>
            <?php endforeach; ?>
        <?php else: ?>
        <ul class="nav-item">
            <a class="nav-link" href="./users/customers/customers-sign-in.php">Cart is empty click here to login to add items to cart</a>
        </ul>
        <?php endif; ?>

        <div class="totals">
            <div class="totals-item">
                <label>Subtotal</label>
                <div class="totals-value" id="cart-subtotal">0</div>
            </div>
            <div class="totals-item">
                <label>Tax (5%)</label>
                <div class="totals-value" id="cart-tax">0</div>
            </div>
            <div class="totals-item">
                <label>Shipping</label>
                <div class="totals-value" id="cart-shipping">0</div>
            </div>
            <div class="totals-item totals-item-total">
                <label>Grand Total</label>
                <div class="totals-value" id="cart-total"><?php echo $totalAmount; ?></div>
            </div>
        </div>
        <button class="checkout">Checkout</button>
    </div>

    <!--page specific js-->
    <script src="./assets/js/cart-1.js"></script>
    <!--    <script src="./assets/js/cart.js"></script>-->

    <!--import footer from partials-->
<?php require_once "./partials/footer-partial.php"; ?>