<?php
session_start();

// import database
require_once "../models/Database.php";
$db = new Database();

$quantity = $_POST['prodQuantity'];
$productId = $_POST['productId'];

// loop and update the correct basket product
foreach ($_SESSION['basketProducts'] as &$basketProduct) {
    if ($basketProduct->PRODUCT_ID == $productId) {
        $basketProduct->QUANTITY = $quantity;

        // update the database
        $query = "UPDATE BASKET_PRODUCTS SET QUANTITY = ? WHERE PRODUCT_ID = ?";
        $stmt = $db->conn->prepare($query);

        $stmt->execute([$quantity, $productId]);
    }
}