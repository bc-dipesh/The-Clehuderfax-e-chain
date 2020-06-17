<?php
session_start();

require_once "./models/Database.php";
$db = new Database();

$traders = array(1, 2);

foreach ($traders as $id) {
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

    echo "<pre>";
    echo $emailMessage;
    echo "<br>";
}
