<?php
session_start();

require_once "../../../models/Database.php";

$db = new Database();

// check if the email verification request is authentic
if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    if (!empty($_GET['email']) and !empty($_GET['token']) and !empty($_GET['type'])) {
        // search and verify the email and verification token from the database
        $query = "SELECT * FROM USERS WHERE EMAIL = ? AND VERIFICATION_TOKEN = ?";
        $stmt = $db->conn->prepare($query);
        $stmt->execute([$_GET['email'], $_GET['token']]);
        $user = $stmt->fetch();

        if ($user) {
            // update the verification flag and token in the database
            $query = "UPDATE USERS SET IS_VERIFIED = 1, VERIFICATION_TOKEN = ? WHERE USER_ID = ?";
            $stmt = $db->conn->prepare($query);
            if ($stmt->execute([null, $user->USER_ID])) {
                // since user has verified the email-address update database with his details
                // first create new trader entry
                $query = "INSERT INTO TRADERS (USER_ID) VALUES (?)";
                $stmt = $db->conn->prepare($query);
                $stmt->execute([$user->USER_ID]);

                // then, get the trader
                $query = "SELECT * FROM TRADERS WHERE USER_ID = ?";
                $stmt = $db->conn->prepare($query);
                $stmt->execute([$user->USER_ID]);
                $trader = $stmt->fetch(PDO::FETCH_OBJ);

                // generate the appropriate description for the trader type
                $description = "";
                $type = $_GET['type'];
                switch ($type) {
                    case 1:
                        $description = "Bakery Trader";
                        break;
                    case 2:
                        $description = "Delicatessen Trader";
                        break;
                    case 3:
                        $description = "Greengrocer Trader";
                        break;
                    case 4:
                        $description = "Butcher Trader";
                        break;
                    case 5:
                        $description = "Fishmonger Trader";
                        break;
                }

                // now add trader to his/her choosen trader type
                $query = "INSERT INTO TRADER_TYPES (TRADER_ID, TRADER_TYPE_ID, DESCRIPTION) VALUES (?, ?, ?)";
                $stmt = $db->conn->prepare($query);
                $stmt->execute([$trader->TRADER_ID, $type, $description]);

                // now assign trader a new shop
                $shopName = "$user->FIRST_NAME $user->LAST_NAME Shop";
                $query = "INSERT INTO SHOPS (TRADER_ID, TRADER_TYPE_ID, SHOP_NAME) VALUES (?, ?, ?)";
                $stmt = $db->conn->prepare($query);
                $stmt->execute([$trader->TRADER_ID, $type, $shopName]);

                $_SESSION['msg'] = "Thank you for verifying your email address. We hope that you enjoy our services.";
                header("location: ../../../users/traders/traders-sign-in.php");
            } else {
                $_SESSION['msg'] = "There was a problem while we were verifying your request, please try again.";
                header("location: ../../../users/traders/traders-sign-in.php");
            }
        }
    } else {
        $_SESSION['requestFailed'] = "There was a problem while we were verifying your request, please try again.";
        header("location: ../../../users/traders/traders-sign-in.php");
    }
}


