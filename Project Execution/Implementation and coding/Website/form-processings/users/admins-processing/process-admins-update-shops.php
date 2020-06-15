<?php
session_start();

function setNotification($result)
{
    if ($result) {
        $_SESSION['updateResponse'] = "Shop Successfully updated.";
    } else {
        $_SESSION['updateResponse'] = "There was a problem while Updating the shop.";
    }
}

function authenticateAccess()
{
    if (!isset($_SESSION['admin']) and !isset($_SESSION['updateBtn'])) {
        header("location: ../../../users/admins/admins-sign-in.php");
    }
}

authenticateAccess();

// import necessary files
require_once "../../../functions/customFunctions.php";
require_once "../../../models/Database.php";

$db = new Database();

try {
    $result = updateShop($db, $_POST['shopId'], $_POST['shopName']);
    setNotification($result);
} catch (ArgumentCountError $ex) {
    logErrorToFile($ex);
} catch (PDOException $ex) {
    logErrorToFile($ex);
}

header("location: ../../../users/admins/shops.php");