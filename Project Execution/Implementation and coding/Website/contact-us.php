<?php
$pageTitle = basename(__FILE__, '.php');
$alert = "";

// import header from partials
require_once "./partials/header-partial.php";

// determine the type of alert
if (isset($_GET['msgClass'])) {
    ($_GET['msgClass'] == 'success') ?

        $alert = "<div class='alert success animate__animated animate__fadeIn'>
        <span class='closebtn'>&times;</span>
        <strong>Message sent successfully!</strong>.
    </div>"
        :

        $alert = "<div class='alert animate__animated animate__fadeIn'>
        <span class='closebtn'>&times;</span>
        <strong>Unable to send message!</strong>.
    </div>";

}

?>
    <!--apply page-specific css-->
    <link rel="stylesheet" href="./assets/css/shop.css">
    <link rel="stylesheet" href="./assets/css/contact-us.css">
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
                <a class="nav-link active">Contact Us</a>
            </li>
        </ul>
    </section>

    <div class="contact-container container">
        <h1>Contact detail</h1>
        <div class="ways-to-contact">
            <div class="contact phone">
                <ion-icon class="contact-icon" name="phone-portrait-outline"></ion-icon>
                <h5>Phone</h5>
                <p>+977 (1) 5970003</p>
            </div>
            <div class="border"></div>
            <div class="contact location">
                <ion-icon class="contact-icon" name="location-outline"></ion-icon>
                <h5>Address</h5>
                <p>The British College
                    Trade Tower,Thapathali
                    Kathmandu,Nepal
                    P.O. Box : 9877</p>
            </div>
            <div class="border"></div>
            <div class="contact email">
                <ion-icon class="contact-icon" name="mail-outline"></ion-icon>
                <h5>Email</h5>
                <p>support@clechuderfax.com</p>
            </div>
        </div>

        <div class="contact-form-container">
            <h2>Get in touch with us</h2>
            <p>For help and inquiry: inquiry about order status, delivery, returns, invoices, or any other order-related
                issues. Please fill in the details below.</p>
        </div>
        <form action="./form-processings/process-contact-form.php" method="post">
            <div class="input-container">
                <input type="text" name="name" placeholder="Name" required>
                <input type="email" name="email" placeholder="Email" required>
                <input type="text" name="website" placeholder="Website">
            </div>
            <div class="text-area-container">
                <textarea rows="10" cols="40" placeholder=" Message" name="message"></textarea>
            </div>
            <div class="button-container">
                <button type="submit" name="submit">Submit</button>
            </div>
        </form>
    </div>

    </div>

    <!--import footer from partials-->
<?php require_once "./partials/footer-partial.php"; ?>