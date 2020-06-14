<?php
$pageTitle = basename(__FILE__, '.php');

// import header from partials
require_once "./partials/header-partial.php";

?>

    <!--apply page-specific css-->
    <link rel="stylesheet" href="./assets/css/shop.css">
    <link rel="stylesheet" href="./assets/css/about-us.css">
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
                <a class="nav-link active">About Us</a>
            </li>
        </ul>
    </section>
    <div class="about-container container">
        <div class="about-heading">
            <h1>Welcome to The Clehuderfax E-Chain</h1>
            <p class="styled-p">a friendly store!</p>
        </div>

        <div class="about-content">
            <img src="./assets/img/about.jpg" alt="">
            <div class="about-text">
                <h3>A Friendly Store</h3>
                <p>
                    Clehuderfax E-Chain promises to make online delivery, shopping and online payment fast, easy and
                    secure for our valued customers.
                    We have also made it convenient for our trust worthy traders and suppliers to register and start
                    their own trading and supplying business with ease.
                    Order the best of seasonal farm fresh food, great local finds, fresh and nutrious seafood items and
                    exclusive bakery and deli items from all of your verified traders and suppliers.
                    We assure our customers to trust our products and services, as we source only the highest-quality
                    products through a number of verification procedures.
                </p>
            </div>
        </div>

    </div>

    <!--import footer from partials-->
<?php require_once "./partials/footer-partial.php"; ?>