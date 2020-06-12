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

        // get the customer.
        $customer = getCustomerWithUserId($db, $user->USER_ID);

        if (!$user->IS_VERIFIED) {
            // redirect user to login prompting him/her to verify email first
            $_SESSION['error'] = "Please verify your email before logging in.";
            header("location: ../../../users/customers/customers-sign-in.php");
            exit();
        }

        if ($user->USER_ID == $customer->USER_ID and $user->USER_ID != 0) {

            // verify the password.
            $result = md5($password) == ($user->PASSWORD);

            if ($result) {
                // ... check if account is deactivated by the admin.
                if (!$user->ACCOUNT_STATUS) {
                    $_SESSION['error'] = "Your account has been deactivated by the admin please contact us through the contact page.";
                    header("location: ../../../users/customers/customers-sign-in.php");
                    exit();
                }
                // if verified set the customer session and grab his/her basket products if there is any
                // get required data
                $basket = getBasketWithCustomerId($db, $customer->CUSTOMER_ID);
                $basketProducts = getBasketProductsWithBasketId($db, $basket->BASKET_ID);

                // set session data
                $_SESSION['user'] = $user;
                $_SESSION['customer'] = $customer;
                $_SESSION['basket'] = $basket;
                $_SESSION['basketProducts'] = $basketProducts;
                $_SESSION['loginMsg'] = "You have successfully logged in.";

                header("location: ../../../users/customers/customers-dashboard.php");
                exit();
            } else {
                $_SESSION['email'] = $email;
                $_SESSION['error'] = "Password incorrect.";
                header("location: ../../../users/customers/customers-sign-in.php");
                exit();
            }
        }
        // ... unregistered user redirect to signup page.
        $_SESSION['msg'] = "New customer please sign up";
        header("location: ../../../users/customers/customers-sign-up.php");
        exit();
    }
}
