<?php
session_start();

require_once "../../../models/Database.php";

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

    // validate traderType
    if (empty($_POST['traderType'])) {
        $invalid['traderType'] = 'Please select a trader type';
    } else {
        $traderType = validate($_POST['traderType']);
        if ($traderType >= 1 and $traderType <= 5) {
            $valid['traderType'] = $_POST['traderTYpe'];
        } else {
            $invalid['traderType'] = 'Please select a valid trader type';
        }
    }

    // validate firstName
    if (empty($_POST['firstName'])) {
        $invalid['firstName'] = 'First name field cannot be empty';
    } else {
        $firstName = validate($_POST['firstName']);
        if (!preg_match('/^[a-zA-Z\s]+$/', $firstName)) {
            $invalid['firstName'] = 'Name can only contain letters, numbers and white spaces';
        } else {
            $valid['firstName'] = $firstName;
        }
    }

    // validate lastName
    if (empty($_POST['lastName'])) {
        $invalid['lastName'] = 'Last name field cannot be empty';
    } else {
        $lastName = validate($_POST['lastName']);
        if (!preg_match('/^[a-zA-Z\s]+$/', $lastName)) {
            $invalid['lastName'] = 'Name can only contain letters, numbers and white spaces';
        } else {
            $valid['lastName'] = $lastName;
        }
    }

    // validate phone number
    if (empty($_POST['mobileNumber'])) {
        $invalid['phone'] = 'Phone number field cannot be empty';
    } else {
        $phone = validate($_POST['mobileNumber']);
        if (strlen($phone) > 15) {
            $invalid['phone'] = 'Phone number should not be longer than 15 characters';
        } else {
            $valid['phone'] = $phone;
        }
    }

    // validate email
    if (empty($_POST['email'])) {
        $invalid['email'] = 'Email field cannot be empty';
    } else {
        $email = validate($_POST['email']);
        $stmt = $db->conn->prepare("SELECT * FROM USERS WHERE EMAIL = ?");
        $stmt->execute([$email]);
        $result = $stmt->fetchAll();

        if (count($result) > 0) {
            $invalid['email'] = 'Email already taken';
        } elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $invalid['email'] = 'Please provide a valid Email';
        } else {
            $valid['email'] = $email;
        }
    }

    // validate address
    if (empty($_POST['address'])) {
        $invalid['address'] = 'Address field cannot be empty';
    } else {
        $address = validate($_POST['address']);
        if (strlen($address) < 5) {
            $invalid['address'] = 'Please provide a valid address';
        } else {
            $valid['address'] = $address;
        }
    }

    // validate password
    if (!(empty($_POST['pass']) and empty($_POST['re_pass']))) {
        $pass = validate($_POST['pass']);
        $re_pass = validate($_POST['re_pass']);

        if ($pass != $re_pass) {
            $invalid['pass'] = "Please re-type passwords correctly to confirm password";
        } elseif (!preg_match('/(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$/', $pass)) {
            $invalid['pass'] = 'Please provide a strong password';
        }
    } else {
        $invalid['pass'] = "Password field should atleast contain one uppercase, one numeric and one symbol.";
    }

    // store all the messages in the session
    $_SESSION['invalid'] = $invalid;
    $_SESSION['valid'] = $valid;
    if (isset($_POST['agree-term']) == "agreed") {
        $_SESSION['agree-term'] = "checked";
    }

    // if there are no errors then store the record in the database
    if (empty($_SESSION['invalid'])) {
        // clean record
        $traderType = $_POST['traderType'];
        $firstName = trim($_POST['firstName']);
        $lastName = trim($_POST['lastName']);
        $email = trim($_POST['email']);
        $address = trim($_POST['address']);
        $phone = trim($_POST['mobileNumber']);
        $pass = md5($_POST['pass']);

        // generate a random verification token to verify email address
        $token = md5(rand(0, 1000));

        // store record in database
        $query = "INSERT INTO USERS (FIRST_NAME, LAST_NAME, ADDRESS, EMAIL, PASSWORD, PHONE_NUMBER, VERIFICATION_TOKEN)
VALUES(?, ?, ?, ?, ?, ?, ?)";
        $stmt = $db->conn->prepare($query);
        if ($stmt->execute([$firstName, $lastName, $address, $email, $pass, $phone, $token])) {

            // get the email layout
            require_once "../../../email-layouts/traders-sign-up-layout.php";

            // send the email
            $to = $email;
            $subject = "Email Verification";
            $headers = "MIME-Version: 1.0" . "\r\n";
            $headers .= "Content-Type:text/html;charset=UTF-8" . "\r\n";
            $headers .= "From:noreply@TheClechuderfaxE-chain.com" . "\r\n";
            mail($to, $subject, $emailMessage, $headers);

            // set the session message
            $_SESSION['msg'] = "Successfully signed up. Please verify your email address by clicking the link sent to your email address.";
            header("location: ../../../users/traders/traders-sign-in.php");
            exit();
        } else {
            $_SESSION['msg'] = "Error while signing up. Please try again.";
            header("location: ../../../users/traders/traders-sign-up.php");
            exit();
        }
    }

    // end of validation
    // redirect back to sign-up form
    header("location: ../../../users/traders/traders-sign-up.php");
} else {
    header("location: ../../../users/traders/traders-sign-up.php");
}
