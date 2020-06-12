<?php
$pageTitle = basename(__FILE__, '.php');

// import header from partials
require_once "./partials/header-partial.php";

?>
    <!-- apply page-specific css -->
    <link rel="stylesheet" href="./assets/css/home.css">
    </head>

    <body>
<?php require_once "./partials/nav-partial.php"; ?>

    <div class="carousel relative">
        <img class="cover mySlides animate__animated animate__fadeIn"
             src="./assets/img/sliderBackground/background-03.png" alt="a cafe shop with tables and chairs">
        <img class="cover mySlides animate__animated animate__fadeIn"
             src="./assets/img/sliderBackground/background-02.png" alt="a cafe shop with tables and chairs">
        <img class="cover mySlides animate__animated animate__fadeIn"
             src="./assets/img/sliderBackground/background-01.png" alt="a cafe shop with tables and chairs">
        <span class="figcaption centered">Welcome to Clehuderfax E-Chain!</span><br>
        <div class="buttons centered">
            <a href="./about-us.php">
                <button class="transparent-btn">Learn More</button>
            </a>
            <a href="./shop.php">
                <button class="opaque-btn">Shop Now</button>
            </a>
        </div> <!-- ./buttons -->
    </div> <!-- ./carousel -->

    <section class="container main-article">
        <article>
            <h1 class="big-heading">Clehuderfax<br>E-Chain</h1>
            <p class="styled-p">Discover our services!</p>
        </article> <!-- ./main-article -->
        <div class="side-content">
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore ipsum ipsa, sequi aspernatur
                temporibus adipisci. Quia excepturi, harum voluptatem veritatis earum eligendi at. Sequi dolorem
                ratione incidunt vitae reprehenderit qui labore reiciendis totam assumenda! Quod veniam quos
                distinctio repudiandae maiores.</p>
        </div> <!-- ./side-content -->
    </section> <!-- ./article-wrapper -->

    <section class="container sub-article">
        <article>
            <img src="./assets/img/products/delicatessen/prod_1.jpg" alt="">
            <h3>Delicatessen</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit, voluptatem.</p>
        </article>
        <article>
            <img src="./assets/img/products/greengrocer/prod_1.jpg" alt="">
            <h3>Greengrocer</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo, soluta?</p>
        </article>
        <article>
            <img src="./assets/img/products/fishmonger/prod_1.jpg" alt="">
            <h3>Fishmonger</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore, iure.</p>
        </article>
        <article>
            <img src="./assets/img/products/butcher/prod_1.jpg" alt="">
            <h3>Butcher</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequuntur, facere?</p>
        </article>
    </section>

    <section class="container categories">
        <article class="categories-article">
            <h2 class="medium-heading">Shop By Categories</h2>
            <p class="styled-p">discover our products!</p>
        </article> <!-- /categories-article -->

        <div class="categories-links">
            <div class="container-sm bakery-delicatessen-wrapper">
                <div class="bakery relative">
                    <a href="./bakery.php">
                        <img src="./assets/img/products/bakery/prod_2.jpg" alt="">
                        <div class="centered">
                            <button class="opaque-btn">Bakery</button>
                        </div> <!-- /centered -->
                    </a>
                </div> <!-- /bakery -->
                <div class="delicatessen relative">
                    <a href="./delicatessen.php">
                        <img class="cover" src="./assets/img/products/delicatessen/prod_2.jpg" alt="">
                        <div class="centered">
                            <button class="opaque-btn">Delicatessen</button>
                        </div> <!-- /centered -->
                    </a>
                </div> <!-- /delicatessen -->
            </div> <!-- /bakery-delicatessen-wrapper -->

            <div class="container-sm greengrocer relative">
                <a href="./greengrocer.php">
                    <img class="cover" src="./assets/img/products/greengrocer/prod_2.jpg" alt="">
                    <div class="centered">
                        <button class="opaque-btn">Greengrocer</button>
                    </div> <!-- /centered -->
                </a>
            </div> <!-- /greengrocer -->

            <div class="container-sm butcher-fishmonger-wrapper">
                <div class="butcher relative">
                    <a href="./butcher.php">
                        <img src="./assets/img/products/butcher/prod_1.jpg" alt="">
                        <div class="centered">
                            <button class="opaque-btn">Butcher</button>
                        </div> <!-- /centered -->
                    </a>
                </div> <!-- /butcher -->
                <div class="fishmonger relative">
                    <a href="./fishmonger.php">
                        <img src="./assets/img/products/fishmonger/prod_1.jpg" alt="">
                        <div class="centered">
                            <button class="opaque-btn">Fishmonger</button>
                        </div> <!-- /centered -->
                    </a>
                </div> <!-- /fishmongerr -->
            </div> <!-- /butcher-fishmonger-wrapper -->

        </div> <!-- /categories-links -->
    </section>

    <!-- page specific js -->
    <script src="./assets/js/carousel.js"></script>
<?php if (isset($_GET['logoutMsg'])) : ?>
    <script>alertify.alert('Alert', 'You have been successfully logged out').set({transition: 'fade'});</script>
    <?php unset($_GET['logoutMsg']); ?>
<?php endif; ?>

    <!-- import footer from partials -->
<?php require_once "./partials/footer-partial.php"; ?>