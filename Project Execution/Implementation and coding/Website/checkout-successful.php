<?php

session_start();
if (!isset($_SESSION['customer'])) {
    header("location: ./users/customers/customers-sign-in.php");
}

// import necessary files
require_once "./models/Database.php";
require_once "./functions/customFunctions.php";

if (isset($_GET['tx'])) {
    $tx = $_GET['tx'];
    // verify with PayPal
    $result = verifyTx($tx);

    if ($result['status'] == 200) {

        $db = new Database();
        $basketId = $_SESSION['basket']->BASKET_ID;
        $amt = $_GET["amt"];
        $paymentMethod = "PayPal";
        $traders = [];

        $query = "INSERT INTO PAYMENTS (BASKET_ID, PAYMENT_METHOD, AMOUNT, PAYMENT_DATE)
             values (?, ?, ?, localtimestamp(2))";
        $stmt = $db->conn->prepare($query);

        saveInvoice($db, $_SESSION['collectionSlotId']);

        try {
            $stmt->execute([$basketId, $paymentMethod, $amt]);
            foreach ($_SESSION['basketProducts'] as $basketProduct) {
                // get traders and their information
                $query = "SELECT U.FIRST_NAME, U.LAST_NAME, U.EMAIL, P.PRODUCT_NAME, P.PRODUCT_ID, P.RATE, T.TRADER_ID
                        FROM USERS U, TRADERS T, TRADER_TYPES TT, SHOPS S, PRODUCT_CATEGORIES PC, PRODUCTS P, BASKET_PRODUCTS BP    
                        WHERE U.USER_ID = T.USER_ID
                        AND T.TRADER_ID = TT.TRADER_ID
                        AND TT.TRADER_ID = S.TRADER_ID
                        AND TT.TRADER_TYPE_ID = S.TRADER_TYPE_ID
                        AND S.SHOP_ID = PC.SHOP_ID
                        AND PC.PRODUCT_CATEGORY_ID = P.PRODUCT_CATEGORY_ID
                        AND P.PRODUCT_ID = BP.PRODUCT_ID
                        AND BP.PRODUCT_ID = ?";
                $stmt = $db->conn->prepare($query);
                $stmt->execute([$basketProduct->PRODUCT_ID]);
                $user = $stmt->fetch();

                // store the tradersId and their email
                $traders[$user->TRADER_ID] = $user->EMAIL;

                // get the product details
                $product = getProduct($db, $basketProduct->PRODUCT_ID);
                $newQuantity = $product->QUANTITY - $basketProduct->QUANTITY;

                // update products stock in database
                $query = "UPDATE PRODUCTS SET QUANTITY = ? WHERE PRODUCT_ID = ?";
                $stmt = $db->conn->prepare($query);
                $stmt->execute([$newQuantity, $product->PRODUCT_ID]);
            }

            $traders = array_unique($traders);

            foreach ($traders as $id => $email) {
                $query = "SELECT P.PRODUCT_NAME, P.RATE, BP.QUANTITY, T.TRADER_ID FROM TRADERS T, TRADER_TYPES TT, SHOPS S, PRODUCT_CATEGORIES PC, PRODUCTS P, BASKET_PRODUCTS BP
                    WHERE T.TRADER_ID = TT.TRADER_ID
                    AND TT.TRADER_ID = S.TRADER_ID
                    AND TT.TRADER_TYPE_ID = S.TRADER_TYPE_ID
                    AND S.SHOP_ID = PC.SHOP_ID
                    AND PC.PRODUCT_CATEGORY_ID = P.PRODUCT_CATEGORY_ID
                    AND P.PRODUCT_ID = BP.PRODUCT_ID
                    AND T.TRADER_ID = ?
                    AND P.PRODUCT_ID = ?";

                foreach ($_SESSION['basketProducts'] as $basketProduct) {
                    $stmt = $db->conn->prepare($query);
                    $stmt->execute([$id, $basketProduct->PRODUCT_ID]);
                    $result = $stmt->fetch();
                    if ($result) {
                        // send the email to respective traders.
                        $total = number_format($result->RATE, 2) * $result->QUANTITY;
                        $to = $email;
                        $subject = "New Payment Received";
                        $message = "<p>New Payment Received!</p>
                                <p>You have just received a payment for your product.</p>
                                <ul>
                                <li>Name: $result->PRODUCT_NAME</li>
                                <li>Quantity: $result->QUANTITY</li>
                                <li>Rate: $result->RATE</li>
                                <li>Total: £$total</li>
                                </ul>";
                        $headers = "MIME-Version: 1.0" . "\r\n";
                        $headers .= "Content-Type:text/html;charset=UTF-8" . "\r\n";
                        $headers .= "From:noreply@TheClechuderfaxE-chain.com" . "\r\n";
                        mail($to, $subject, $message, $headers);
                    }
                }
            }

            // finally send email to the customer
            // send the email
            $to = $_SESSION['user']->EMAIL;
            $subject = "Payment Successful";
            $message = "<p>Your Payment of £$amt was successful!</p>
                    <p>Thank you for shopping with us.</p>";
            $headers = "MIME-Version: 1.0" . "\r\n";
            $headers .= "Content-Type:text/html;charset=UTF-8" . "\r\n";
            $headers .= "From:noreply@TheClechuderfaxE-chain.com" . "\r\n";
            mail($to, $subject, $message, $headers);

            // update the basket
            $query = "UPDATE BASKETS SET ACTIVE = ? WHERE BASKET_ID = ?";
            $stmt = $db->conn->prepare($query);
            $stmt->execute([0, $_SESSION['basket']->BASKET_ID]);

            // create new basket for customer
            $query = "INSERT INTO BASKETS (CUSTOMER_ID, ACTIVE) VALUES (?, ?)";
            $stmt = $db->conn->prepare($query);
            $stmt->execute([$_SESSION['customer']->CUSTOMER_ID, 1]);

            // update the session with new basket and basketProduct
            $query = "SELECT * FROM BASKETS WHERE CUSTOMER_ID = ? AND ACTIVE = ?";
            $stmt = $db->conn->prepare($query);
            $stmt->execute([$_SESSION['customer']->CUSTOMER_ID, 1]);
            $basket = $stmt->fetch();

            $_SESSION['basket'] = $basket;
            unset($_SESSION['basketProducts']);
            $_SESSION['basketProducts'] = "";

            $_SESSION['paymentStatus'] = "Successful";
            header("location: ./users/customers/customers-dashboard.php");

            // unset the collection slot
            unset($_SESSION['collectionSlotId']);
        } catch (PDOException $ex) {
            logErrorToFile($ex);
        }
    }
}
