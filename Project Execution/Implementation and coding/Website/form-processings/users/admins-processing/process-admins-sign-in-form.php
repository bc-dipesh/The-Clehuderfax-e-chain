<?php

require_once "../../../models/Database.php";
require_once "../../../functions/customFunctions.php";

session_start();

$db = new Database();

// sign-in-request validation
if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    // primary validate function
    function validate($str)
    {
        return trim(htmlspecialchars($str));
    }

    // check and evaluate only if email and password field are not empty
    if (isset($_POST['email']) and isset($_POST['password'])) {
        // clean form data.
        $email = validate($_POST['email']);
        $password = validate($_POST['password']);

        // get the user from the database.
        $user = getUserWithEmail($db, $email);

        // get the admin.
        $admin = getAdminWithUserId($db, $user->USER_ID);

        if ($user->USER_ID == $admin->USER_ID) {

            // verify the password.
            if ($password = $user->PASSWORD) {
                // if verified set the customer session and grab his/her basket products if there is any
                // set session data
                $_SESSION['user'] = $user;
                $_SESSION['admin'] = $admin;
                $_SESSION['loginMsg'] = "You have successfully logged in.";

                header("location: ../../../users/admins/admins-dashboard.php");
                exit();
            }
        }
        $_SESSION['email'] = $email;
        $_SESSION['error'] = "Email or password incorrect.";

        // don't tell the person trying to log in if either the password or email is incorrect
        header("location: ../../../users/admins/admins-sign-in.php");
        exit();
    }
}
