<?php
session_start();

if (!isset($_SESSION['admin']) and !isset($_POST['delete'])) {
    header("location: ../../../users/admins/admins-sign-in.php");
}

// import necessary files
require_once "../../../functions/customFunctions.php";
require_once "../../../models/Database.php";

$db = new Database();

$user = getUserWithId($db, $_POST['delete']);

if ($user) {
    // ... delete user profile image.
    unlink("../../../assets/img/profile/$user->PROFILE_IMG");

    // ... delete user from database
    $query = "DELETE FROM USERS WHERE USER_ID = ?";
    $stmt = $db->conn->prepare($query);
    $stmt->execute([$user->USER_ID]);
    $_SESSION['deleteResponse'] = "User Successfully deleted.";
} else {
    $_SESSION['deleteResponse'] = "There was a problem while deleting the user.";
}

header("location: ../../../users/admins/users.php");
