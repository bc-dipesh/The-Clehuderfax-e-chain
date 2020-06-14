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

define("SEARCH_PRODUCTS", "SELECT * FROM PRODUCTS WHERE LOWER(PRODUCT_NAME) LIKE '%'?'%'");

define("PASSWORD_RESET", "UPDATE USERS SET PASSWORD = null WHERE USER_ID = ?");

define("SET_VERIFICATION_TOKEN", "UPDATE USERS SET VERIFICATION_TOKEN = ? WHERE USER_ID = ?");

define("LOG_CURRENT_ACTION", "INSERT INTO ACCESS_DETAILS (ACCESSED_USER_ID, ACCESSED_BY_ADMIN_ID, ACTION, ACCESSED_AT) VALUES (?, ?, ?, localtimestamp(2))");

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

// search product in database
function searchProducts($db, $searchProd)
{
    $stmt = prepareStmt($db, "SELECT * FROM products WHERE LOWER(PRODUCT_NAME) LIKE '%$searchProd%'");
    $stmt->execute();

    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}

function logCurrentAction($db, $userId, $adminId, $action)
{
    $stmt = prepareStmt($db, LOG_CURRENT_ACTION);
    return $stmt->execute([$userId, $adminId, $action]);
}

function logErrorToFile($ex)
{
    error_log($ex->getMessage() . " " . $ex->getFile() . ", at line " . $ex->getLine() . "\n", 3, '../../../error-logs/errorLogs.txt');
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
