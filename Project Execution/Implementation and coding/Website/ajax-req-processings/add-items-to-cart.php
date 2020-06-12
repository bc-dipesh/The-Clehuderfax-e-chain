<?php
session_start();

// prepares statement for execution
function prepareStatement($db, $query)
{
    return $db->conn->prepare($query);
}

// gets new total product quantity
function getNewTotalQuantity($db, $productQuantity, $productId, $product)
{
    // get the current product quantity in the customer basket product
    $query = "SELECT QUANTITY FROM BASKET_PRODUCTS WHERE PRODUCT_ID = $productId AND BASKET_ID = ?";
    $stmt = prepareStatement($db, $query);
    $stmt->execute([$_SESSION['basket']->BASKET_ID]);
    $basketProduct = $stmt->fetch();

    // calculate new total
    $newProdQuantity = number_format($productQuantity) + number_format($basketProduct->QUANTITY);

    // check if the new total is not more than the number of products allowed to buy in a single time.
    // and return the final product quantity.
    if ($newProdQuantity <= $product->MAX_ORDER) {
        return $newProdQuantity;
    } else {
        return 10; // default max number of product customer can buy.
    }
}

if (isset($_SESSION['customer'])) {
// import database
    require_once "../models/Database.php";

// the response message
    $responseMsg = "";

// get POST data
    $productId = $_POST['productId'];
    isset($_POST['prodQuantity']) ? $productQuantity = $_POST['prodQuantity'] : $productQuantity = 1;

// get product request from the id.
    $db = new Database();
    $query = "SELECT * FROM PRODUCTS WHERE PRODUCT_ID = ?";
    $stmt = prepareStatement($db, $query);
    $stmt->execute([$_POST['productId']]);
    $product = $stmt->fetch();

    $prodFound = false;

    if (!empty($_SESSION['basketProducts'])) {
        foreach ($_SESSION['basketProducts'] as $basketProduct) {
            // determine whether the current product is already in the basket
            if ($productId == $basketProduct->PRODUCT_ID) {
                $prodFound = true;
            }
        }
    }

// if it is not present then insert new product in the database.
    if (!$prodFound) {
        $query = "INSERT INTO BASKET_PRODUCTS (PRODUCT_ID, BASKET_ID, QUANTITY) VALUES (?, ?, ?)";
        $stmt = prepareStatement($db, $query);
        if ($stmt->execute([$productId, $_SESSION['basket']->BASKET_ID, $productQuantity])) {
            $responseMsg = "Successfully added $product->PRODUCT_NAME to the cart.";
        } else {
            $responseMsg = "Error adding $product->PRODUCT_NAME to the cart.";
        }
    } // if found then update the product product quantity in the database.
    elseif ($prodFound and isset($_POST['prodQuantity'])) {
        // calculate new quantity
        $newTotalProdQuantity = getNewTotalQuantity($db, $productQuantity, $productId, $product);

        $query = "UPDATE BASKET_PRODUCTS SET QUANTITY = ? WHERE PRODUCT_ID = ? AND BASKET_ID = ?";
        $stmt = prepareStatement($db, $query);

        if ($stmt->execute([$newTotalProdQuantity, $productId, $_SESSION['basket']->BASKET_ID])) {
            $responseMsg = "Successfully updated $product->PRODUCT_NAME quantity in the cart.";
        } else {
            $responseMsg = "Error updating $product->PRODUCT_NAME quantity in the cart.";
        }
    } elseif ($prodFound and !isset($_POST['prodQuantity'])) {
        $responseMsg = "Product is already in the cart, please click the product image to update its quantity in the cart.";
    }

// store the new/updated basket product/basket products in session
    $query = "SELECT * FROM BASKET_PRODUCTS WHERE BASKET_PRODUCTS.BASKET_ID = ?";
    $stmt = prepareStatement($db, $query);
    $stmt->execute([$_SESSION['basket']->BASKET_ID]);
    $basketProducts = $stmt->fetchAll();
    $_SESSION['basketProducts'] = $basketProducts;

// send the response message back to the ajax-request
    echo $responseMsg;

} else {
    $responseMsg = "Please login before adding items to cart";
    echo $responseMsg;
}