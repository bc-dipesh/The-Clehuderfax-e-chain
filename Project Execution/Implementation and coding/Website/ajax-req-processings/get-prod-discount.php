<?php
session_start();

require_once "../models/Database.php";
$db = new Database();


if (isset($_GET['prodId']) and isset($_SESSION['customer'])) {
    $query = "SELECT * FROM OFFERS WHERE PRODUCT_ID = ?";
    $stmt = $db->conn->prepare($query);
    $stmt->execute([$_GET['prodId']]);
    $offer = $stmt->fetch();

    echo number_format($offer->PERCENTAGE_OFF, 2);
} else {
    header("location: ../users/customers/customers-sign-in.php");
}