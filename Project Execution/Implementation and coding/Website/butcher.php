<?php
require_once "./models/Product.php";

$pageTitle = basename(__FILE__, '.php');

// import header from partials
require_once "./partials/header-partial.php";

// page specific query
$query = "SELECT * FROM PRODUCTS WHERE PRODUCT_CATEGORY_ID = 4";

$paginationQuery = "SELECT * FROM (
            SELECT
            products.*,
            row_number() over (ORDER BY product_id ASC) line_number
            FROM products WHERE product_category_id = 4
        ) WHERE line_number BETWEEN ? AND ? ORDER BY line_number";

?>
    <!-- apply page-specific css -->
    <link rel="stylesheet" href="./assets/css/shop.css">
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
                <a href="./shop.php" class="nav-link">Products</a>
            </li>
            <li class="nav-item link-separator">/</li>
            <li class="nav-item">
                <a class="nav-link active">Butcher</a>
            </li>
        </ul>
    </section>

    <main class="container">
        <div class="left">
            <div class="top">
                <div class="top-options">
                    <select name="orderby" class="orderby" aria-label="Shop order">
                        <option value="menu_order" selected='selected'>Default sorting</option>
                        <option value="popularity">Sort by popularity</option>
                        <option value="rating">Sort by average rating</option>
                        <option value="date">Sort by latest</option>
                        <option value="price">Sort by price: low to high</option>
                        <option value="price-desc">Sort by price: high to low</option>
                    </select>
                </div>
            </div> <!-- /top -->

            <div class="middle">
                <!--display products with pagination-->
                <?php require "./partials/products-pagination-partial.php" ?>
            </div>
        </div> <!-- /left -->

        <div class="right">
            <div class="product-filter">
                <h3>Filter By Price</h3>
                <div class="slidecontainer">
                    <input type="range" min="1" max="100" value="50" class="slider" id="priceRange">
                </div>
                <div class="output">
                    <button class="filterBtn">Filter</button>
                    <p class="price-range">Price: $<span class="min-price">0</span>-$<span class="max-price">20</span>
                    </p>
                </div>
                <div class="product-categories">
                    <h3>Product Categories</h3>
                    <ul class="categories-list">
                        <li class="category-item">
                            <a href="./bakery.php" class="category-link">Bakery</a>
                        </li>
                        <li class="category-item">
                            <a href="./delicatessen.php" class="category-link">Delicatessen</a>
                        </li>
                        <li class="category-item">
                            <a href="./greengrocer.php" class="category-link">Greengrocer</a>
                        </li>
                        <li class="category-item">
                            <a class="category-link">Butcher</a>
                        </li>
                        <li class="category-item">
                            <a href="./fishmonger.php" class="category-link">Fishmonger</a>
                        </li>
                    </ul>
                </div>
            </div> <!-- /product-filter -->
        </div> <!-- /right -->
    </main>

    <!-- import footer from partials -->
<?php require_once "./partials/footer-partial.php"; ?>