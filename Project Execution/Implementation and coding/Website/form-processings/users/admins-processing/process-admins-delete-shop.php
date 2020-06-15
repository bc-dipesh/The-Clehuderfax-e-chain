<?php
session_start();

function setNotification($result)
{
    if ($result) {
        $_SESSION['deleteResponse'] = "Shop Successfully deleted.";
    } else {
        $_SESSION['deleteResponse'] = "There was a problem while deleting the shop.";
    }
}

function authenticateAccess()
{
    if (!isset($_SESSION['admin']) and !isset($_POST['delete'])) {
        header("location: ../../../users/admins/admins-sign-in.php");
    }
}


authenticateAccess();

// import necessary files
require_once "../../../functions/customFunctions.php";
require_once "../../../models/Database.php";

$db = new Database();
$shopId = $_POST['delete'];

try {
    $result = deleteShop($db, $shopId);
    setNotification($result);
} catch (ArgumentCountError $ex) {
    logErrorToFile($ex);
} catch (PDOException $ex) {
    logErrorToFile($ex);
}

header("location: ../../../users/admins/shops.php");

