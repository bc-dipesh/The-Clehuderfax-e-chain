<?php

session_start();

if (!isset($_SESSION['admin']) and !isset($_SESSION['updateBtn'])) {
    header("location: ../../../users/admins/admins-sign-in.php");
}

// import necessary files
require_once "../../../functions/customFunctions.php";
require_once "../../../models/Database.php";

//prettyPrint($_POST);

$db = new Database();

// get form data
$userId = trim($_POST['userId']);
$firstName = trim($_POST['firstName']);
$lastName = trim($_POST['lastName']);
$email = trim($_POST['email']);
$phone = trim($_POST['phone']);
$address = trim($_POST['address']);
$accountStatus = $_POST['accountStatus'];

// update profile
$query = "UPDATE USERS SET FIRST_NAME = ?, LAST_NAME = ?, EMAIL = ?, PHONE_NUMBER = ?, ADDRESS = ?, ACCOUNT_STATUS = ? WHERE USER_ID = ?";
$stmt = $db->conn->prepare($query);
$result = $stmt->execute([$firstName, $lastName, $email, $phone, $address, $accountStatus, $userId]);

// set session
if ($result) {
    $_SESSION['updateResponse'] = "Successfully updated $firstName $lastName profile.";
} else {
    $_SESSION['updateResponse'] = "There was an error while updating $firstName $lastName profile.";
}


header("location: ../../../users/admins/users.php");