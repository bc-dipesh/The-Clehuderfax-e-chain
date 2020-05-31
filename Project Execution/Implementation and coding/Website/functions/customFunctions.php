<?php
// database query constatns
define("FETCH_USER_WITH_ID", "SELECT * FROM USERS WHERE USER_ID = ?");
define("FETCH_USER_WITH_EMAIL", "SELECT * FROM USERS WHERE EMAIL = ?");
define("FETCH_CUSTOMER_WITH_USER_ID", "SELECT * FROM CUSTOMERS WHERE USER_ID = ?");
define("FETCH_TRADER_WITH_USER_ID", "SELECT * FROM TRADERS WHERE USER_ID = ?");
define("FETCH_PRODUCT_WITH_PRODUCT_ID", "SELECT * FROM PRODUCTS WHERE PRODUCT_ID = ?");
define("FETCH_ALL_PRODUCTS", "SELECT * FROM PRODUCTS");
define("FETCH_BASKET_WITH_CUSTOMER_ID", "SELECT * FROM BASKETS WHERE CUSTOMER_ID = ?");
define("FETCH_BASKET_PRODUCTS_WITH_BASKET_ID", "SELECT * FROM BASKET_PRODUCTS WHERE BASKET_ID = ?");
define("SEARCH_PRODUCTS", "SELECT * FROM PRODUCTS WHERE LOWER(PRODUCT_NAME) LIKE '%'?'%'");
define("PASSWORD_RESET", "UPDATE USERS SET PASSWORD = null WHERE USER_ID = ?");
define("SET_VERIFICATION_TOKEN", "UPDATE USERS SET VERIFICATION_TOKEN = ? WHERE USER_ID = ?");

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
    $stmt->execute([$customerId]);

    return $stmt->fetch();
}

// fetch basketProducts
function getBasketProductsWithBasketId($db, $basketId)
{
    $stmt = prepareStmt($db, FETCH_BASKET_PRODUCTS_WITH_BASKET_ID);
    $stmt->execute([$basketId]);

    return $stmt->fetchAll();
}

// fetch product data from database
function getProduct($db, $productId)
{
    $stmt = prepareStmt($db, FETCH_PRODUCT_WITH_PRODUCT_ID);
    $stmt->execute([$productId]);

    return $stmt->fetch();
}

function searchProducts($db, $searchProd)
{
    $stmt = prepareStmt($db, "SELECT * FROM products WHERE LOWER(PRODUCT_NAME) LIKE '%$searchProd%'");
    $stmt->execute();

    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}

// pretty print var_dump
function prettyPrint($var)
{
    echo "<pre>";
    var_dump($var);
    echo "</pre>";
    exit();
}

