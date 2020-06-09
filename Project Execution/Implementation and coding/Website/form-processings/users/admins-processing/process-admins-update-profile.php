<?php

session_start();

if (!isset($_SESSION['admin']) and !isset($_SESSION['updateProfileBtn'])) {
    header("location: ../../../users/admins/admins-sign-in.php");
}

// import necessary files
require_once "../../../functions/customFunctions.php";
require_once "../../../models/Database.php";

$db = new Database();

// get form data
$firstName = trim($_POST['firstName']);
$lastName = trim($_POST['lastName']);
$email = trim($_POST['email']);
$phone = trim($_POST['phone']);
$address = trim($_POST['address']);
$img = "";
$result = "";

if (empty($_FILES['profileImg']['name'])) {
    // update profile
    $query = "UPDATE USERS SET FIRST_NAME = ?, LAST_NAME = ?, EMAIL = ?, PHONE_NUMBER = ?, ADDRESS = ? WHERE USER_ID = ?";
    $stmt = $db->conn->prepare($query);
    $result = $stmt->execute([$firstName, $lastName, $email, $phone, $address, $_SESSION['user']->USER_ID]);

    // get updated data
    $query = "SELECT * FROM USERS WHERE USER_ID = ?";
    $stmt = $db->conn->prepare($query);
    $result = $stmt->execute([$_SESSION['user']->USER_ID]);

    // update user session
    if ($result) {
        $_SESSION['profileUpdated']['success'] = "Successfully updated profile data.";
        $_SESSION['user'] = $stmt->fetch();
    } else {
        $_SESSION['profileUpdated']['error'] = "There was an error while updating your profile data.";
    }

} else {
    // upload image
    $target_dir = "../../../assets/img/profile/" . $_SESSION['user']->USER_ID;
    $imageFileType = strtolower(pathinfo(basename($_FILES["profileImg"]["name"]), PATHINFO_EXTENSION));
    $target_file = "$target_dir/profile.$imageFileType";
    $uploadOk = 1;

    // Check if image file is a actual image or fake image
    if (isset($_POST["submit"])) {
        $check = getimagesize($_FILES["profileImg"]["tmp_name"]);
        if ($check !== false) {
            $uploadOk = 1;

            // Check file size
            if ($_FILES["productImage"]["size"] > 500000) {
                $_SESSION['imgUploadResponse']['error'] = "Sorry, your file is too large.";
                $uploadOk = 0;
            }

            // Allow certain file formats
            if (
                $imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
                && $imageFileType != "gif"
            ) {
                $_SESSION['imgUploadResponse']['error'] = "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
                $uploadOk = 0;
            }
        } else {
            $_SESSION['imgUploadResponse']['error'] = "File is not an image.";
            $uploadOk = 0;
        }
    }

    // Check if $uploadOk is set to 0 by an error
    if ($uploadOk == 0) {
        $_SESSION['imgUploadResponse']['error'] = "Sorry, your file was not uploaded.";
        // if everything is ok, try to upload file
    } else {
        if (!file_exists($target_dir)) {
            mkdir($target_dir);
            if (move_uploaded_file($_FILES["profileImg"]["tmp_name"], $target_file)) {
                $_SESSION['imgUploadResponse']['success'] = "The file " . basename($_FILES["profileImg"]["name"]) . " has been uploaded.";
                $img = $_SESSION['user']->USER_ID . "/profile.$imageFileType";
            } else {
                $_SESSION['imgUploadResponse']['error'] = "Sorry, there was an error uploading your profile image.";
            }
        } else {
            if (move_uploaded_file($_FILES["profileImg"]["tmp_name"], $target_file)) {
                $_SESSION['imgUploadResponse']['success'] = "The file " . basename($_FILES["profileImg"]["name"]) . " has been uploaded.";
                $img = $_SESSION['user']->USER_ID . "/profile.$imageFileType";
            } else {
                $_SESSION['imgUploadResponse']['error'] = "Sorry, there was an error uploading your profile image.";
            }
        }
    }

    // update profile
    $query = "UPDATE USERS SET FIRST_NAME = ?, LAST_NAME = ?, EMAIL = ?, PHONE_NUMBER = ?, ADDRESS = ?, PROFILE_IMG = ? WHERE USER_ID = ?";
    $stmt = $db->conn->prepare($query);
    $result = $stmt->execute([$firstName, $lastName, $email, $phone, $address, $img, $_SESSION['user']->USER_ID]);

    // get updated data
    $query = "SELECT * FROM USERS WHERE USER_ID = ?";
    $stmt = $db->conn->prepare($query);
    $result = $stmt->execute([$_SESSION['user']->USER_ID]);

    // update user session
    if ($result) {
        $_SESSION['user'] = $stmt->fetch();
    }
}

header("location: ../../../users/admins/profile.php");