<?php

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

require_once "./emailLayout.php";

// finally send email to the customer
$to = 'dipesh.bc@es.cloudfactory.com';
$subject = "Payment Successful";
$headers = "MIME-Version: 1.0" . "\r\n";
$headers .= "Content-Type:text/html;charset=UTF-8" . "\r\n";
$headers .= "From:noreply@TheClechuderfaxE-chain.com" . "\r\n";
mail($to, $subject, $message, $headers);