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

        // verify the password.
        $result = password_verify($password, $user->PASSWORD);

        if ($result) {
            if ($user->IS_VERIFIED == false) {
                // redirect user to login prompting him/her to verify email first
                $_SESSION['error'] = "Please verify your email before logging in.";
                header("location: ../../../users/customers/customers-sign-in.php");
            } else {
                // if verified set the customer session and grab his/her basket products if there is any
                // get required data
                $customer = getCustomerWithUserId($db, $user->USER_ID);
                $basket = getBasketWithCustomerId($db, $customer->CUSTOMER_ID);
                $basketProducts = getBasketProductsWithBasketId($db, $basket->BASKET_ID);

                // set session data
                $_SESSION['user'] = $user;
                $_SESSION['customer'] = $customer;
                $_SESSION['basket'] = $basket;
                $_SESSION['basketProducts'] = $basketProducts;
                $_SESSION['loginMsg'] = "You have successfully logged in.";

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