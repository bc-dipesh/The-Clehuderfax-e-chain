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
                    Lorem ipsum, dolor sit amet consectetur adipisicing elit. Explicabo obcaecati, expedita sint earum
                    et officia molestiae magni,
                    quae voluptatibus accusantium aliquam blanditiis, rerum fugiat dolore sequi accusamus sapiente
                    tenetur recusandae.
                </p>
            </div>
        </div>

    </div>

    <!--import footer from partials-->
    <?php require_once "./partials/footer-partial.php"; ?>