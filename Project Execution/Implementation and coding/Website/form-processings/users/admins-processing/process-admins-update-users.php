<?php
session_start();

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

// get form data
$userId = trim($_POST['userId']);
$firstName = trim($_POST['firstName']);
$lastName = trim($_POST['lastName']);
$email = trim($_POST['email']);
$phone = trim($_POST['phone']);
$address = trim($_POST['address']);
$accountStatus = $_POST['accountStatus'];

try {
    $result = updateUserProfile($db, $firstName, $lastName, $email, $phone, $address, $accountStatus, $userId);
} catch (ArgumentCountError $ex) {
    logErrorToFile($ex);
} catch (PDOException $ex) {
    logErrorToFile($ex);
}

// set session
if ($result) {
    try {
        logCurrentAction($db, $userId, $_SESSION['admin']->ADMIN_ID, 'Updated user profile');
    } catch (ArgumentCountError $ex) {
        logErrorToFile($ex);
    } catch (PDOException $ex) {
        logErrorToFile($ex);
    }
    $_SESSION['updateResponse'] = "Successfully updated $firstName $lastName profile.";
} else {
    $_SESSION['updateResponse'] = "There was an error while updating $firstName $lastName profile.";
}


header("location: ../../../users/admins/users.php");