<?php
// database query constants
define("FETCH_USER_WITH_ID", "SELECT * FROM USERS WHERE USER_ID = ?");

define("FETCH_USER_WITH_EMAIL", "SELECT * FROM USERS WHERE EMAIL = ?");

define("FETCH_ADMIN_WITH_USER_ID", "SELECT * FROM ADMINS WHERE USER_ID = ?");

define("FETCH_CUSTOMER_WITH_USER_ID", "SELECT * FROM CUSTOMERS WHERE USER_ID = ?");

define("FETCH_TRADER_WITH_USER_ID", "SELECT * FROM TRADERS WHERE USER_ID = ?");

define("FETCH_PRODUCT_WITH_PRODUCT_ID", "SELECT * FROM PRODUCTS WHERE PRODUCT_ID = ?");

define("DELETE_PRODUCT_WITH_ID", "DELETE FROM PRODUCTS WHERE PRODUCT_ID = ?");

define("FETCH_PRODUCTS_WITH_TRADER_ID", "SELECT P.PRODUCT_CATEGORY_ID, P.PRODUCT_ID, P.PRODUCT_NAME, P.DESCRIPTION, P.RATE, P.IS_AVAILABLE, P.IMAGE, P.ALLERGY_INFO, P.MIN_ORDER, P.MAX_ORDER, P.QUANTITY
                                            FROM TRADER_TYPES TT, SHOPS S, PRODUCT_CATEGORIES PC, PRODUCTS P
                                            WHERE TT.TRADER_ID = S.TRADER_ID
                                            AND TT.TRADER_TYPE_ID = S.TRADER_TYPE_ID
                                            AND S.SHOP_ID = PC.SHOP_ID
                                            AND PC.PRODUCT_CATEGORY_ID = P.PRODUCT_CATEGORY_ID
                                            AND TT.TRADER_ID = ?");

define("FETCH_ALL_PRODUCTS", "SELECT * FROM PRODUCTS");

define("FETCH_PRODUCT_CATEGORY_NAME_BY_PRODUCT_ID", "SELECT CATEGORY_NAME FROM PRODUCT_CATEGORIES PC, PRODUCTS P WHERE PC.PRODUCT_CATEGORY_ID = P.PRODUCT_CATEGORY_ID AND P.PRODUCT_ID = ?");

define("FETCH_PRODUCT_CATEGORY_NAME_BY_TRADER_ID", "SELECT CATEGORY_NAME FROM TRADER_TYPES TT, SHOPS S, PRODUCT_CATEGORIES PC
                                                    WHERE TT.TRADER_ID = S.TRADER_ID
                                                    AND TT.TRADER_TYPE_ID = S.TRADER_TYPE_ID
                                                    AND S.SHOP_ID = PC.SHOP_ID
                                                    AND TT.TRADER_ID = ?");

define("FETCH_PRODUCT_CATEGORY_ID_BY_TRADER_ID", "SELECT PRODUCT_CATEGORY_ID FROM TRADER_TYPES TT, SHOPS S, PRODUCT_CATEGORIES PC
                                                    WHERE TT.TRADER_ID = S.TRADER_ID
                                                    AND TT.TRADER_TYPE_ID = S.TRADER_TYPE_ID
                                                    AND S.SHOP_ID = PC.SHOP_ID
                                                    AND TT.TRADER_ID = ?");

define("ADD_PRODUCT", "INSERT INTO PRODUCTS (PRODUCT_CATEGORY_ID, PRODUCT_NAME, DESCRIPTION, RATE, IS_AVAILABLE, IMAGE, ALLERGY_INFO, MIN_ORDER, MAX_ORDER, QUANTITY) 
                        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

define("UPDATE_PRODUCT_WITH_ID", "UPDATE PRODUCTS SET PRODUCT_NAME = ?, DESCRIPTION = ?, RATE = ?, IS_AVAILABLE = ?, IMAGE = ?, ALLERGY_INFO = ?, MIN_ORDER = ?, MAX_ORDER = ?, QUANTITY = ?
                                WHERE PRODUCT_ID = ?");

define("FETCH_BASKET_WITH_CUSTOMER_ID", "SELECT * FROM BASKETS WHERE CUSTOMER_ID = ? AND ACTIVE = ?");

define("FETCH_BASKET_PRODUCTS_WITH_BASKET_ID", "SELECT * FROM BASKET_PRODUCTS WHERE BASKET_ID = ?");

define("INSERT_INTO_INVOICES", "INSERT INTO INVOICES (INVOICE_ID, COLLECTION_SLOT_ID, INVOICE_DATE, IS_COLLECTED) VALUES (?, ?, localtimestamp, 0)");

define("FETCH_CURRENT_INVOICE_ID", "SELECT INVOICES_SEQ.currval \"ID\" from dual");

//define("SEARCH_PRODUCTS", "SELECT * FROM PRODUCTS WHERE LOWER(PRODUCT_NAME) LIKE '%'?'%'");

define("PASSWORD_RESET", "UPDATE USERS SET PASSWORD = null WHERE USER_ID = ?");

define("SET_VERIFICATION_TOKEN", "UPDATE USERS SET VERIFICATION_TOKEN = ? WHERE USER_ID = ?");

define("GET_SHOP_WITH_ID", "SELECT * FROM SHOPS WHERE SHOP_ID = ?");

define("UPDATE_USER_DETAILS", "UPDATE USERS SET FIRST_NAME = ?, LAST_NAME = ?, EMAIL = ?, PHONE_NUMBER = ?, ADDRESS = ?, ACCOUNT_STATUS = ? WHERE USER_ID = ?");

define("UPDATE_SHOP_DETAILS", "UPDATE SHOPS SET SHOP_NAME = ? WHERE SHOP_ID = ?");

define("LOG_CURRENT_ACTION", "INSERT INTO ACCESS_DETAILS (ACCESSED_USER_ID, ACCESSED_BY_ADMIN_ID, ACTION, ACCESSED_AT) VALUES (?, ?, ?, localtimestamp(2))");

define("DELETE_SHOP", "DELETE FROM SHOPS WHERE SHOP_ID = ?");

define("PAYPAL_IDENTITY_TOKEN", 'AbmurxS_ER98gVSB-YtpiDH1QWNEkFoYur4xetSTjCqB-m73dtryZ_N15X8');

define("GET_USER_WITH_SHOP_ID", "SELECT * FROM TRADERS T, SHOPS S WHERE T.TRADER_ID = S.TRADER_ID AND S.SHOP_ID = ?");

define("GET_INVOICE_DETAILS", "SELECT PRODUCT_NAME, COLLECTION_TIME, TO_CHAR(INVOICE_DATE, 'YYYY-MM-DD') \"INVOICE_DATE\", PAYMENT_METHOD, RATE, BP.QUANTITY, BP.QUANTITY * RATE \"TOTAL\", AMOUNT FROM COLLECTION_SLOTS CS, INVOICES I, PAYMENTS PAY, BASKETS B, BASKET_PRODUCTS BP, PRODUCTS P
WHERE CS.COLLECTION_SLOT_ID = I.COLLECTION_SLOT_ID
  AND I.INVOICE_ID = PAY.INVOICE_ID
  AND PAY.BASKET_ID = B.BASKET_ID
  AND B.BASKET_ID = BP.BASKET_ID
  AND BP.PRODUCT_ID = P.PRODUCT_ID
  AND B.ACTIVE = 0
  AND I.INVOICE_ID = ?");

// generates a prepared statement
function prepareStmt($db, $query)
{
    return $db->conn->prepare($query);
}

// fetch user
function getUserWithId($db, $userId)
{
    $stmt = prepareStmt($db, FETCH_USER_WITH_ID);
    $stmt->execute([$userId]);

    return $stmt->fetch();
}

function getUserWithEmail($db, $email)
{
    $stmt = prepareStmt($db, FETCH_USER_WITH_EMAIL);
    $stmt->execute([$email]);

    return $stmt->fetch();
}

// fetch admin
function getAdminWithUserId($db, $userId)
{
    $stmt = prepareStmt($db, FETCH_ADMIN_WITH_USER_ID);
    $stmt->execute([$userId]);

    return $stmt->fetch();
}

// fetch customer
function getCustomerWithUserId($db, $userId)
{
    $stmt = prepareStmt($db, FETCH_CUSTOMER_WITH_USER_ID);
    $stmt->execute([$userId]);

    return $stmt->fetch();
}

// fetch trader
function getTraderWithUserId($db, $userId)
{
    $stmt = prepareStmt($db, FETCH_TRADER_WITH_USER_ID);
    $stmt->execute([$userId]);

    return $stmt->fetch();
}

// set verification token
function setVerificationToken($db, $token, $userId)
{
    $stmt = prepareStmt($db, SET_VERIFICATION_TOKEN);
    return $stmt->execute([$token, $userId]);
}

// reset user password
function resetPassword($db, $userId)
{
    $stmt = prepareStmt($db, PASSWORD_RESET);
    return $stmt->execute([$userId]);
}

// fetch basket
function getBasketWithCustomerId($db, $customerId)
{
    $stmt = prepareStmt($db, FETCH_BASKET_WITH_CUSTOMER_ID);
    $stmt->execute([$customerId, 1]);

    return $stmt->fetch();
}

// fetch basketProducts
function getBasketProductsWithBasketId($db, $basketId)
{
    $stmt = prepareStmt($db, FETCH_BASKET_PRODUCTS_WITH_BASKET_ID);
    $stmt->execute([$basketId]);

    return $stmt->fetchAll();
}

// add product to database
function addProduct($db, $prodCategory, $prodName, $prodDesc, $prodRate, $isAvailable, $img, $allergyInfo, $minOrder, $maxOrder, $quantity)
{
    $stmt = prepareStmt($db, ADD_PRODUCT);
    return $stmt->execute([$prodCategory, $prodName, $prodDesc, $prodRate, $isAvailable, $img, $allergyInfo, $minOrder, $maxOrder, $quantity]);
}

// update product
function updateProductWithId($db, $prodName, $prodDesc, $prodRate, $isAvailable, $img, $allergyInfo, $minOrder, $maxOrder, $quantity, $productId)
{
    $stmt = prepareStmt($db, UPDATE_PRODUCT_WITH_ID);
    return $stmt->execute([$prodName, $prodDesc, $prodRate, $isAvailable, $img, $allergyInfo, $minOrder, $maxOrder, $quantity, $productId]);
}

// fetch product data from database
function getProduct($db, $productId)
{
    $stmt = prepareStmt($db, FETCH_PRODUCT_WITH_PRODUCT_ID);
    $stmt->execute([$productId]);

    return $stmt->fetch();
}

// remove product from database
function deleteProduct($db, $productId)
{
    $stmt = prepareStmt($db, DELETE_PRODUCT_WITH_ID);

    return $stmt->execute([$productId]);
}

// fetch specific trader products
function getTraderProducts($db, $traderId)
{
    $stmt = prepareStmt($db, FETCH_PRODUCTS_WITH_TRADER_ID);
    $stmt->execute([$traderId]);

    return $stmt->fetchAll();
}

// get the category name of the product
function getCategoryNameByProductId($db, $productId)
{
    $stmt = prepareStmt($db, FETCH_PRODUCT_CATEGORY_NAME_BY_PRODUCT_ID);
    $stmt->execute([$productId]);

    return $stmt->fetch()->CATEGORY_NAME;
}

// get the category name of the product
function getCategoryNameByTraderId($db, $traderId)
{
    $stmt = prepareStmt($db, FETCH_PRODUCT_CATEGORY_NAME_BY_TRADER_ID);
    $stmt->execute([$traderId]);

    return $stmt->fetch()->CATEGORY_NAME;
}

// get the category id
function getCategoryIdByTraderId($db, $traderId)
{
    $stmt = prepareStmt($db, FETCH_PRODUCT_CATEGORY_ID_BY_TRADER_ID);
    $stmt->execute([$traderId]);

    return $stmt->fetch()->PRODUCT_CATEGORY_ID;
}

function getShopWithId($db, $shopId)
{
    $stmt = prepareStmt($db, GET_SHOP_WITH_ID);
    $stmt->execute([$shopId]);

    return $stmt->fetch();
}

// search product in database
//function searchProducts($db, $searchProd)
//{
//    $stmt = prepareStmt($db, "SELECT * FROM products WHERE LOWER(PRODUCT_NAME) LIKE '%$searchProd%'");
//    $stmt->execute();
//
//    return $stmt->fetchAll(PDO::FETCH_ASSOC);
//}

function updateShop($db, $shopId, $shopName)
{
    $stmt = prepareStmt($db, UPDATE_SHOP_DETAILS);
    return $stmt->execute([$shopName, $shopId]);
}

function updateUserProfile($db, $firstName, $lastName, $email, $phone, $address, $accountStatus, $userId)
{
    $stmt = prepareStmt($db, UPDATE_USER_DETAILS);
    return $stmt->execute([$firstName, $lastName, $email, $phone, $address, $accountStatus, $userId]);
}

function deleteShop($db, $shopId)
{
    $stmt = prepareStmt($db, DELETE_SHOP);
    return $stmt->execute([$shopId]);
}

function saveInvoice($db, $collection_slot_id)
{
    $stmt = prepareStmt($db, "SELECT INVOICES_SEQ.nextval \"ID\" from dual");
    $stmt->execute();
    $id = $stmt->fetch();

    $stmt = prepareStmt($db, INSERT_INTO_INVOICES);
    $stmt->execute([$id->ID, $collection_slot_id]);

    return $id->ID;
}

function logCurrentAction($db, $userId, $adminId, $action)
{
    $stmt = prepareStmt($db, LOG_CURRENT_ACTION);
    return $stmt->execute([$userId, $adminId, $action]);
}

function logErrorToFile($ex)
{
    error_log($ex->getMessage() . " " . $ex->getFile() . ", at line " . $ex->getLine() . " " . date("M,d,Y h:i:s A") . "\n", 3, '../../../error-logs/errorLogs.txt');
}

function getTraderWithShopId($db, $shopId)
{
    $stmt = prepareStmt($db, GET_USER_WITH_SHOP_ID);
    $stmt->execute([$shopId]);
    return $stmt->fetch();
}

function getInvoiceDetails($db, $invoiceId)
{
    $stmt = prepareStmt($db, GET_INVOICE_DETAILS);
    $stmt->execute([$invoiceId]);
    return $stmt->fetchAll();
}

function getProdDiscount($db, $prodId)
{
    $stmt = prepareStmt($db, "SELECT PERCENTAGE_OFF FROM OFFERS WHERE PRODUCT_ID = ?");
    $stmt->execute([$prodId]);
    $offer = $stmt->fetch();
    if ($offer) {
        return number_format($offer->PERCENTAGE_OFF, 2);
    }
    return 0.0;
}

// return human representation of true or false
function getHumanRepresentation($value)
{
    return $value < 1 ? "false" : "true";
}

// pretty print var_dump
function prettyPrint($var)
{
    echo "<pre>";
    var_dump($var);
    echo "</pre>";
    exit();
}

function verifyTx($tx)
{
    $request = curl_init();

    // set request options
    curl_setopt_array($request, [
        CURLOPT_URL => 'https://www.sandbox.paypal.com/cgi-bin/webscr',
        CURLOPT_POST => TRUE,
        CURLOPT_POSTFIELDS => http_build_query([
            'cmd' => '_notify-synch',
            'tx' => $tx,
            'at' => PAYPAL_IDENTITY_TOKEN,
        ]),
        CURLOPT_RETURNTRANSFER => TRUE,
        CURLOPT_HEADER => FALSE,
    ]);

    // execute request and get response and status
    $response = curl_exec($request);
    $status = curl_getinfo($request, CURLINFO_HTTP_CODE);

    // close connection
    curl_close($request);

    return [
        "status" => $status,
        "response" => $response
    ];
}

function cleanPayPalResponse($response)
{
    // remove success part (7 characters long)
    $response = substr($response, 7);

    // url decode
    $response = urldecode($response);

    // turn it into associative array
    preg_match_all('/^([^=\s]++)=(.*+)/m', $response, $m, PREG_PATTERN_ORDER);
    $response = array_combine($m[1], $m[2]);

    // fix character encoding if different from utf-8
    if (isset($response['charset']) and strtoupper($response['charset']) !== 'UTF-8') {
        foreach ($response as $key => &$value) {
            $value = mb_convert_encoding($value, 'UTF-8', $response['charset']);
        }
        $response['charset_original'] = $response['charset'];
        $response['charset'] = 'UTF-8';
    }

    // sort on keys for readability (handy when debugging)
    ksort($response);

    return $response;
}