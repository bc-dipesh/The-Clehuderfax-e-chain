<?php
session_start();

require_once "../../../models/Database.php";
require_once "../../../functions/customFunctions.php";

$db = new Database();

// sign-in-request validation
if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    // primary validate function
    function validate($str)
    {
        return trim(htmlspecialchars($str));
    }

    // check and evaluate only if email and password field are not empty
    if (isset($_POST['email']) and isset($_POST['pwdResetRequestBtn'])) {
        // clean form data.
        $email = validate($_POST['email']);

        // generate a random verification token to verify email address
        $token = md5(rand(0, 1000));

        // get the user
        $user = getUserWithEmail($db, $email);

        // check if there is a user with the email in the database
        if (!empty($user)) {
            // insert the token generated to reset password reset
            $result = setVerificationToken($db, $token, $user->USER_ID);

            if ($result) {
                // send the password reset email
                $to = $email;
                $subject = "Password reset request";
                $message = "
            We just received your password reset request!
            You can reset your account password by clicking the link below.
            'http://localhost/the-clechuderfax-e-chain/form-processings/users/process-pwd-request-verification.php?email=$email&token=$token'
            ";
                $headers = "MIME-Version: 1.0" . "\r\n";
                $headers .= "Content-Type:text/html;charset=UTF-8" . "\r\n";
                $headers .= "From:noreply@TheClechuderfaxE-chain.com" . "\r\n";
                mail($to, $subject, $message, $headers);

                // set the session message
                // unset all the sessions
                session_unset();
                $_SESSION['msg'] = "Your password reset request was sent successfully. Please check your email.";
                header("location: ../../../users/customers/customers-forgot-password.php");
                exit();
            }
        } else {
            $_SESSION['error'] = "There was a problem submitting your password reset request";
            // don't give much information to the person trying to reset the password
            header("location: ../../../users/customers/customers-forgot-password.php");
        }
    } else {
        $_SESSION['error'] = "There was a problem submitting your password reset request";
        // don't give much information to the person trying to reset the password
        header("location: ../../../users/customers/customers-forgot-password.php");
        exit();
    }
}