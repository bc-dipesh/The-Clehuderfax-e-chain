<!--Make session variable available to all pages that includes this partial-->
<?php session_start() ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta nme="author" content="The Influencers">
    <meta name="description" content="Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa, a.">

    <title>The Clehuderfax E-Chain | <?php echo ucfirst($pageTitle); ?> </title>

    <!-- External stylesheet -->
    <link rel="stylesheet" href="./assets/css/global.css">
    <link rel="stylesheet" href="./assets/css/animate.min.css">

    <!--    Alertify-->
    <link rel="stylesheet" href="./assets/css/alertify.min.css">
    <link rel="stylesheet" href="./assets/css/default.min.css">
    <script src="./assets/js/alertify.min.js"></script>

    <!-- Icons -->
    <script type="module" src="https://unpkg.com/ionicons@5.0.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule="" src="https://unpkg.com/ionicons@5.0.0/dist/ionicons/ionicons.js"></script>

    <!-- Alpine.js -->
    <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js" defer></script>