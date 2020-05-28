<?php
session_start();

// import database
require_once "../models/Database.php";
$db = new Database();

$productId = $_POST['productId'];

// loop and delete the correct basket product
foreach ($_SESSION['basketProducts'] as $key => $basketProduct) {
    if ($basketProduct->PRODUCT_ID == $productId) {
        unset($_SESSION['basketProducts'][$key]);

        // remove the record from the database
        $query = "DELETE FROM BASKET_PRODUCTS WHERE PRODUCT_ID = ?";
        $stmt = $db->conn->prepare($query);

        $stmt->execute([$productId]);
    }
}