<?php
session_start();

if (!isset($_SESSION['trader']) and !isset($_POST['delete'])) {
    header("location: ../../../users/traders/traders-sign-in.php");
}

// import necessary files
require_once "../../../functions/customFunctions.php";
require_once "../../../models/Database.php";

$db = new Database();

$product = getProduct($db, $_POST['delete']);

if ($product) {
    unlink("../../../assets/img/products/$product->IMAGE");
    deleteProduct($db, $product->PRODUCT_ID);
    $_SESSION['deleteResponse'] = "Product Successfully deleted.";
    header("location: ../../../users/traders/traders-product.php");
} else {
    $_SESSION['deleteResponse'] = "There was a problem while deleting your product.";
    header("location: ../../../users/traders/traders-product.php");
}
