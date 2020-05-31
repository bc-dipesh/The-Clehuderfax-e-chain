<?php
session_start();

// import necessary files
require_once "../../models/Database.php";
require_once "../../functions/customFunctions.php";

$db = new Database();

// check if the email verification request is authentic
if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    if (!empty($_GET['email']) and !empty($_GET['token'])) {
        // search and verify the email and verification token from the database
        $query = "SELECT * FROM USERS WHERE EMAIL = ? AND VERIFICATION_TOKEN = ?";
        $stmt = $db->conn->prepare($query);
        $stmt->execute([$_GET['email'], $_GET['token']]);
        $user = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($user) {
            // update the verification flag and token in the database
            $query = "UPDATE USERS SET VERIFICATION_TOKEN = ? WHERE USER_ID = ?";
            $stmt = $db->conn->prepare($query);
            if ($stmt->execute([null, $user['USER_ID']])) {
                // now that token is verified, take the user to create new password form
                $_SESSION['msg'] = "Thank you for verifying your password reset request, now you can create your new password";
                $_SESSION['email'] = $_GET['email'];
                $_SESSION['pwdResetRequest'] = true;
                if (isset($_GET['type'])) {
                    header("location: ../../users/traders/traders-create-new-pwd.php");
                } else {
                    header("location: ../../users/customers/customers-create-new-pwd.php");
                }
            } else {
                $_SESSION['error'] = "There was a problem while we were verifying your request, please try again.";

                if (isset($_GET['type'])) {
                    header("location: ../../users/customers/customers-forgot-password.php");
                } else {
                    header("location: ../../users/customers/customers-forgot-password.php");
                }
            }
        } else {
            $_SESSION['error'] = "There was a problem while we were verifying your request, please try again.";
            if (isset($_GET['type'])) {
                header("location: ../../users/customers/customers-forgot-password.php");
            } else {
                header("location: ../../users/customers/customers-forgot-password.php");
            }
        }
    }
}


