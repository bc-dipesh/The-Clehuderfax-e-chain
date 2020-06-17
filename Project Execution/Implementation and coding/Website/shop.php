<?php

$pageTitle = basename(__FILE__, '.php');

// import header from partials
require_once "./partials/header-partial.php";
require_once "./functions/customFunctions.php";

// page specific query
$query = "SELECT * FROM PRODUCTS";
$sortIn = "ASC";
$orderBy = "priceAsc";
$minPrice = 1;
$maxPrice = 10000;

// change the sorting order
if (isset($_GET['orderBy'])) {
    if ($_GET['orderBy'] == "priceDesc") {
        $sortIn = "DESC";
        $orderBy = "priceDesc";
    } else if ($_GET['orderBy'] == "priceAsc") {
        $sortIn = "ASC";
        $orderBy = "priceAsc";
    }
}

// price filter
if (isset($_GET['minPrice']) and isset($_GET['maxPrice'])) {
    $minPrice = $_GET['minPrice'];
    $maxPrice = $_GET['maxPrice'];
    $paginationQuery = "SELECT * FROM (
            SELECT
            products.*,
            row_number() over (ORDER BY RATE $sortIn) line_number
            FROM products
        ) WHERE line_number BETWEEN ? AND ?
          AND RATE BETWEEN $minPrice AND $maxPrice
          ORDER BY line_number";
    // TODO: fix rownum error.
//    $paginationQuery = "SELECT products.*,
//                               ROWNUM
//                        FROM products
//                        WHERE rownum BETWEEN 7
//                            AND 12
//                          AND RATE BETWEEN $minPrice
//                            AND $maxPrice
//                        ORDER BY rownum";
} else {
    $paginationQuery = "SELECT * FROM (
            SELECT
            products.*,
            row_number() over (ORDER BY RATE $sortIn) line_number
            FROM products
        ) WHERE line_number BETWEEN ? AND ? 
        ORDER BY line_number";
}

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
                <a class="nav-link active">Products</a>
            </li>
        </ul>
    </section>

    <main class="container">
        <div class="left">
            <div class="top">
                <div class="top-options">
                    <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="GET"
                          onchange="submit()">
                        <select id="sortSelection" name="orderBy" class="orderby" aria-label="Shop order">
                            <option <?php if ($sortIn == "ASC") echo "selected"; ?> value="priceAsc">Sort by price: low
                                to high
                            </option>
                            <option <?php if ($sortIn == "DESC") echo "selected"; ?> value="priceDesc">Sort by price:
                                high to low
                            </option>
                        </select>
                    </form>
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
                <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="GET">
                    <div class="slidecontainer">
                        <input oninput="updateMinPrice()" name="minPrice" id="minPriceSlider" type="range" min="1"
                               max="100" class="slider"
                               value= <?php if (isset($_GET['minPrice'])) echo $_GET['minPrice']; ?>
                        >
                        <input oninput="updateMaxPrice()" name="maxPrice" id="maxPriceSlider" type="range" min="1"
                               max="1000" class="slider"
                               value= <?php if (isset($_GET['maxPrice'])) echo $_GET['maxPrice']; ?>
                        >
                    </div>
                    <div class="output">
                        <button class="filterBtn" name="priceFilterBtn">Filter</button>
                        <p class="price-range">Price: £<span id="minPriceSpan">0</span>-£<span
                                    id="maxPriceSpan">0</span>
                        </p>
                    </div>
                </form>
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
                            <a href="./butcher.php" class="category-link">Butcher</a>
                        </li>
                        <li class="category-item">
                            <a href="./fishmonger.php" class="category-link">Fishmonger</a>
                        </li>
                    </ul>
                </div>
            </div> <!-- /product-filter -->
        </div> <!-- /right -->
    </main>

    <!--Page specific java script-->
    <script src="./assets/js/add-to-cart.js"></script>

    <!--price filter script-->
    <script>
        let minPrice = document.getElementById("minPriceSlider").value;
        let maxPrice = document.getElementById("maxPriceSlider").value;
        const minPriceSpan = document.getElementById("minPriceSpan");
        const maxPriceSpan = document.getElementById("maxPriceSpan");

        window.onload = () => {
            updateMinPrice();
            updateMaxPrice();
        };


        function updateMinPrice() {
            minPrice = document.getElementById("minPriceSlider").value;
            minPriceSpan.textContent = minPrice;
        }

        function updateMaxPrice() {
            maxPrice = document.getElementById("maxPriceSlider").value;
            maxPriceSpan.textContent = maxPrice;
        }

    </script>

    <!-- import footer from partials -->
<?php require_once "./partials/footer-partial.php"; ?>