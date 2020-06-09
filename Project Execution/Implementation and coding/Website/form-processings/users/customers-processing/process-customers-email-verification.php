<?php
session_start();

require_once "../../../models/Database.php";

$db = new Database();

// check if the email verification request is authentic
if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    if (!empty($_GET['email']) and !empty($_GET['token'])) {
        // search and verify the email and verification token from the database
        $query = "SELECT * FROM USERS WHERE EMAIL = ? AND VERIFICATION_TOKEN = ?";
        $stmt = $db->conn->prepare($query);
        $stmt->execute([$_GET['email'], $_GET['token']]);
        $user = $stmt->fetch();

        if ($user) {
            // update the verification flag and token in the database
            $query = "UPDATE USERS SET IS_VERIFIED = 1, ACCOUNT_STATUS = 1, VERIFICATION_TOKEN = ? WHERE USER_ID = ?";
            $stmt = $db->conn->prepare($query);
            if ($stmt->execute([null, $user->USER_ID])) {
                // since user has verified the email-address also add the user to customer and create a basket
                // first create new customer entry
                $query = "INSERT INTO CUSTOMERS (USER_ID) VALUES (?)";
                $stmt = $db->conn->prepare($query);
                $stmt->execute([$user->USER_ID]);

                // then, get the customer id to create basket
                $query = "SELECT * FROM CUSTOMERS WHERE USER_ID = ?";
                $stmt = $db->conn->prepare($query);
                $stmt->execute([$user->USER_ID]);
                $customer = $stmt->fetch();

                // now create basket for the newly verified customer
                $query = "INSERT INTO BASKETS (CUSTOMER_ID, ACTIVE) VALUES (?, ?)";
                $stmt = $db->conn->prepare($query);
                $stmt->execute([$customer->CUSTOMER_ID, 1]);

                $_SESSION['msg'] = "Thank you for verifying your email address. We hope that you enjoy our services.";
                header("location: ../../../users/customers/customers-sign-in.php");
            } else {
                $_SESSION['msg'] = "There was a problem while we were verifying your request, please try again.";
                header("location: ../../../users/customers/customers-sign-in.php");
            }
        }
    }
}


// $2y$10$uK3pf6T9MtHy30Ao3HpjvOQA00gsePHVNpAcdAml92tf0BIStbaHi