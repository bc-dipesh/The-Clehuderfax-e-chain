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

        $invoiceId = saveInvoice($db, $_SESSION['collectionSlotId']);

        $query = "INSERT INTO PAYMENTS (BASKET_ID, INVOICE_ID, PAYMENT_METHOD, AMOUNT, PAYMENT_DATE)
             values (?, $invoiceId, ?, ?, localtimestamp(2))";
        $stmt = $db->conn->prepare($query);


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
                $invoiceData = "";
                $totalAmount = 0;
                $collectionDayTime = "";
                $invoiceDate = "";

                $query = "SELECT PRODUCT_NAME, RATE, BP.QUANTITY, T.TRADER_ID FROM TRADERS T, SHOPS S, PRODUCT_CATEGORIES PC, PRODUCTS P, BASKET_PRODUCTS BP, BASKETS B
                WHERE BP.BASKET_ID = B.BASKET_ID
                AND BP.PRODUCT_ID = P.PRODUCT_ID
                AND P.PRODUCT_CATEGORY_ID = PC.PRODUCT_CATEGORY_ID
                AND PC.SHOP_ID = S.SHOP_ID
                AND S.TRADER_ID = T.TRADER_ID
                AND T.TRADER_ID = ?
                AND B.ACTIVE = 1";
                $stmt = $db->conn->prepare($query);
                $stmt->execute([$id]);
                $results = $stmt->fetchAll();
                if ($results) {
                    foreach ($results as $result) {
                        $total = $result->RATE * $result->QUANTITY;
                        $invoiceData .= "<tr>
                                <td>$result->PRODUCT_NAME</td>
                                <td>£$result->RATE/-</td>
                                <td>$result->QUANTITY</td>
                                <td>£$total/-</td>
                            </tr>";
                        $totalAmount += $total;
                    }

                    $invoiceData .= "<tr>
                                <td colspan='5' style='text-align:right; padding:10px;'>
                                        <strong>Total : </strong>£$totalAmount/-
                                </td>
                             </tr>";
                }
                // get the email layout
                require "./email-layouts/traders-invoice-layout.php";

                // send the email to respective traders.
                $to = $email;
                $subject = "New Payment Received";
                $headers = "MIME-Version: 1.0" . "\r\n";
                $headers .= "Content-Type:text/html;charset=UTF-8" . "\r\n";
                $headers .= "From:noreply@TheClechuderfaxE-chain.com" . "\r\n";
                mail($to, $subject, $emailMessage, $headers);
            }

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

            // create invoice
            $invoiceDetails = getInvoiceDetails($db, $invoiceId);
            $invoiceData = "";
            $totalAmount = 0;
            $collectionDayTime = "";
            $invoiceDate = "";

            foreach ($invoiceDetails as $invoiceItem) {
                $invoiceData .= "<tr>
                    <td>$invoiceItem->PRODUCT_NAME</td>
                    <td>£$invoiceItem->RATE/-</td>
                    <td>$invoiceItem->QUANTITY</td>
                    <td>£$invoiceItem->TOTAL/-</td>
                </tr>";
                $totalAmount += $invoiceItem->TOTAL;
                $collectionDayTime = $invoiceItem->COLLECTION_TIME;
                $invoiceDate = $invoiceItem->INVOICE_DATE;
            }
            $invoiceData .= "<tr>
                    <td colspan='5' style='text-align:right; padding:10px;'>
                            <strong>Total : </strong>£$totalAmount/-
                    </td>
                 </tr>";

            require_once "./email-layouts/customers-invoice-layout.php";

            // finally send email to the customer
            $to = $_SESSION['user']->EMAIL;
            $subject = "Payment Successful";
            $headers = "MIME-Version: 1.0" . "\r\n";
            $headers .= "Content-Type:text/html;charset=UTF-8" . "\r\n";
            $headers .= "From:noreply@TheClechuderfaxE-chain.com" . "\r\n";
            mail($to, $subject, $emailMessage, $headers);

            // unset the collection slot
            unset($_SESSION['collectionSlotId']);

            $_SESSION['basket'] = $basket;
            unset($_SESSION['basketProducts']);
            $_SESSION['basketProducts'] = "";
            $_SESSION['paymentStatus'] = "Successful";
            header("location: ./users/customers/customers-dashboard.php");
        } catch (PDOException $ex) {
            logErrorToFile($ex);
        }
    }
}
