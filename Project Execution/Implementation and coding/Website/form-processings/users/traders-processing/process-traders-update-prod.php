<?php
session_start();
$pageTitle = basename(__FILE__, ".php");

if (!isset($_SESSION['trader']) and !isset($_SESSION['addBtn'])) {
    header("location: ../../../users/traders/traders-sign-in.php");
}

// import necessary files
require_once "../../../functions/customFunctions.php";
require_once "../../../models/Database.php";

$db = new Database();

// get form data
$prodName = trim($_POST['productName']);
$prodDesc = trim($_POST['productDescription']);
$prodRate = $_POST['productRate'];
$isAvailable = $_POST['productAvailability'];
$allergyInfo = trim($_POST['productAllergyInfo']);
$minOrder = $_POST['productMinOrder'];
$maxOrder = $_POST['productMaxOrder'];
$quantity = $_POST['productQuantity'];
$img = "";

if (empty($_FILES['productImage']['name'])) {
    $img = trim($_POST['defaultImage']);
} else {
    $categoryName = strtolower(getCategoryNameByProductId($db, $_POST['productId']));
    // upload image
    $target_dir = "../../../assets/img/products/$categoryName/";
    $target_file = $target_dir . basename($_FILES["productImage"]["name"]);
    // prettyPrint($target_file);
    $uploadOk = 1;
    $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

    // Check if image file is a actual image or fake image
    if (isset($_POST["submit"])) {
        $check = getimagesize($_FILES["productImage"]["tmp_name"]);
        if ($check !== false) {
            // echo "File is an image - " . $check["mime"] . ".";
            $uploadOk = 1;

            // Check if file already exists
            if (file_exists($target_file)) {
                $_SESSION['imgUploadResponse'] = "Sorry, file already exists.";
                $uploadOk = 0;
            }

            // Check file size
            if ($_FILES["productImage"]["size"] > 500000) {
                $_SESSION['imgUploadResponse'] = "Sorry, your file is too large.";
                $uploadOk = 0;
            }

            // Allow certain file formats
            if (
                $imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
                && $imageFileType != "gif"
            ) {
                $_SESSION['imgUploadResponse'] = "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
                $uploadOk = 0;
            }
        } else {
            $_SESSION['imgUploadResponse'] = "File is not an image.";
            $uploadOk = 0;
        }
    }

    // Check if $uploadOk is set to 0 by an error
    if ($uploadOk == 0) {
        $_SESSION['imgUploadResponse'] = "Sorry, your file was not uploaded.";
        // if everything is ok, try to upload file
    } else {
        if (move_uploaded_file($_FILES["productImage"]["tmp_name"], $target_file)) {
            $_SESSION['imgUploadResponse'] = "The file " . basename($_FILES["productImage"]["name"]) . " has been uploaded.";
            $img = "$categoryName/" . basename($_FILES["productImage"]["name"]);
        } else {
            $_SESSION['imgUploadResponse'] = "Sorry, there was an error uploading your file.";
        }
    }
}

// update products 
$result = updateProductWithId($db, $prodName, $prodDesc, $prodRate, $isAvailable, $img, $allergyInfo, $minOrder, $maxOrder, $quantity, $_POST['productId']);

if ($result) {
    $_SESSION['updateResponse'] = "Product Successfully updated.";
    header("location: ../../../users/traders/traders-product.php");
} else {
    $_SESSION['updateResponse'] = "There was some problem while updating the product. Please try again.";
    header("location: ../../../users/traders/traders-product.php");
}
