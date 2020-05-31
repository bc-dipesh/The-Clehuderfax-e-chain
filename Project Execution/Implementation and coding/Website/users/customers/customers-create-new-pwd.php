<?php
$pageTitle = basename(__FILE__, ".php");

// include all the necessary partials
require_once "../../partials/users-partial/header-partial.php";

// check if password reset request is legitimate
if (!isset($_SESSION['pwdResetRequest'])) {
    header("location: ../../users/customers/customers-sign-in.php");
}

require_once "../../partials/users-partial/customers-partial/customers-create-new-pwd-form-partial.php";
require_once "../../partials/users-partial/footer-partial.php";
