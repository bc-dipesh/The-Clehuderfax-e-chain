<?php
session_start();

require_once "../../models/Database.php";
require_once "../../functions/customFunctions.php";

$db = new Database();

// sign-up-form validation
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $invalid = [];
    $valid = [];

    // primary validate function
    function validate($str)
    {
        return trim(htmlspecialchars($str));
    }

    // validate password
    if (!(empty($_POST['pass']) and empty($_POST['re_pass']))) {
        $pass = validate($_POST['pass']);
        $re_pass = validate($_POST['re_pass']);

        if ($pass != $re_pass) {
            $invalid['pass'] = "Please re-type passwords correctly to confirm password";
        } elseif (!preg_match('/(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$/', $pass)) {
            $invalid['pass'] = 'Password field should atleast contain one uppercase, one numeric and one symbol.';
        }
    } else {
        $invalid['pass'] = "Password field cannot be empty";
    }

    // store all the messages in the session
    $_SESSION['invalid'] = $invalid;
    $_SESSION['valid'] = $valid;

    // if there are no errors then store the record in the database
    if (empty($_SESSION['invalid'])) {
        $pass = md5($_POST['pass']);

        // store new password in database
        $query = "UPDATE USERS SET PASSWORD = ? WHERE EMAIL = ?";
        $stmt = prepareStmt($db, $query);
        $result = $stmt->execute([$pass, $_POST['email']]);

        if ($result) {
            // set the session message
            $_SESSION['msg'] = "Your password reset was successful now login with your new password.";
            unset($_SESSION['pwdResetRequest']);
            if ($_POST['pwdFor'] == "trader") {
                header("location: ../../users/traders/traders-sign-in.php");
                exit();
            }
            header("location: ../../users/customers/customers-sign-in.php");
            exit();
        } else {
            $_SESSION['error'] = "There was a error while we were resetting your password. Please try again.";
            if ($_POST['pwdFor'] == "trader") {
                header("location: ../../users/traders/traders-create-new-pwd.php");
                exit();
            }
            header("location: ../../users/customers/customers-create-new-pwd.php");
            exit();
        }
    }

    // end of validation
    // redirect back to create-new-password form
    $_SESSION['error'] = "There was a error while we were resetting your password. Please try again.";
    if ($_POST['pwdFor'] == "trader") {
        header("location: ../../users/traders/traders-create-new-pwd.php");
        exit();
    }
    header("location: ../../users/customers/customers-create-new-pwd.php");
    exit();
} else {
    $_SESSION['error'] = "There was a error while we were resetting your password. Please try again.";
    if ($_POST['pwdFor'] == "trader") {
        header("location: ../../users/customers/customers-create-new-pwd.php");
        exit();
    }
    header("location: ../../users/customers/customers-create-new-pwd.php");
    exit();
}