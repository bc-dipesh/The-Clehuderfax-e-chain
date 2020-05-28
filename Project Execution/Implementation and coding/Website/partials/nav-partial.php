<header class="header">
    <nav class="nav-bar">
        <!--search-form-->
        <form class="search-form" action="search-form.php">
            <input class="search-input" type="text" name="prodToSearch" placeholder="search..." id="prodToSearch">
        </form> <!-- ./search-form -->

        <!--navigation-bar-->
        <ul class="nav-list relative">
            <li class="nav-item">
                <a href="./index.php"
                   class="<?php if (strtolower($pageTitle) == 'index') echo 'active'; ?> nav-link underline">Home</a>
            </li>
            <li class="nav-item">
                <a href="./shop.php"
                   class="<?php if (strtolower($pageTitle) == 'shop') echo 'active'; ?> nav-link underline">Shop</a>
            </li>
            <li class="nav-item logo">
                <a class="nav-link"><img src="./assets/img/logo/logo.png" alt="website logo"></a>
            </li>
            <li class="nav-item">
                <a href="./about-us.php"
                   class="<?php if (strtolower($pageTitle) == 'about-us') echo 'active'; ?> nav-link underline">About
                    Us</a>
            </li>
            <li class="nav-item">
                <a href="./contact-us.php"
                   class="<?php if (strtolower($pageTitle) == 'contact-us') echo 'active'; ?> nav-link underline">Contact
                    Us</a>
            </li>
        </ul> <!-- ./nav-list -->

        <!--        <div class="cart-container">-->
        <!--            <a href="./cart.php">-->
        <!--                <ion-icon class="shopping-cart-icon" name="cart-outline"></ion-icon>-->
        <!--            </a>-->
        <!--        </div>-->

        <div class="hamburger-menu">
            <div class="line line-1"></div>
            <div class="line line-2"></div>
            <div class="line line-3"></div>
        </div> <!-- ./hamburger-menu -->

        <ul class="aside-nav-list">
            <?php if (isset($_SESSION['user'])) : ?>
                <li class="nav-item">
                    <a href="./users/dashboard.php" class="nav-link">Profile</a>
                </li>
                <li class="nav-item">
                    <a href="./users/logout.php" class="nav-link">Logout</a>
                </li>
                <li class="nav-item">
                    <a href="./cart.php" class="nav-link">Cart</a>
                </li>
            <?php else: ?>
                <li class="nav-item">
                    <a href="./users/customers/customers-sign-in.php" class="nav-link">Customer Sign in</a>
                </li>
                <li class="nav-item">
                    <a href="./users/traders/traders-sign-in.php" class="nav-link">Trader Sign in</a>
                </li>
                <li class="nav-item">
                    <a href="./users/customers/customers-sign-up.php" class="nav-link">Customer Sign up</a>
                </li>
                <li class="nav-item">
                    <a href="./users/traders/traders-sign-up.php" class="nav-link">Trader Sign up</a>
                </li>
            <?php endif; ?>
            <li class="nav-item hidden">
                <a href="./index.php" class="active nav-link underline">Home</a>
            </li>
            <li class="nav-item hidden">
                <a href="./shop.php" class="nav-link underline">Shop</a>
            </li>
            <li class="nav-item hidden">
                <a href="./about-us.php" class="nav-link underline">About Us</a>
            </li>
            <li class="nav-item hidden">
                <a href="./contact-us.php" class="nav-link underline">Contact Us</a>
            </li>
        </ul> <!-- ./aside-nav-list -->
    </nav>
</header>