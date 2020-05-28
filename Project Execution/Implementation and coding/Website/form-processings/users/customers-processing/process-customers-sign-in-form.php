<?php
session_start();

require_once "../../../models/Database.php";

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
        $query = "SELECT * FROM USERS WHERE EMAIL = ?";
        $stmt = $db->conn->prepare($query);
        $stmt->execute([$email]);
        $user = $stmt->fetch(PDO::FETCH_OBJ);

        // verify the password.
        $result = password_verify($password, $user->PASSWORD);

        if ($result) {
            if ($user->IS_VERIFIED == false) {
                // redirect user to login prompting him/her to verify email first
                $_SESSION['error'] = "Please verify your email before logging in.";
                header("location: ../../../users/customers/customers-sign-in.php");
            } else {
                // if verified redirect user to the home page
                $_SESSION['user'] = $user;
                header("location: ../../../index.php");
            }
        } else {
            $_SESSION['email'] = $email;
            $_SESSION['error'] = "Email or password incorrect.";
            // don't tell the person trying to log in if either the password or email is incorrect
            header("location: ../../../users/customers/customers-sign-in.php");
        }
    }

}