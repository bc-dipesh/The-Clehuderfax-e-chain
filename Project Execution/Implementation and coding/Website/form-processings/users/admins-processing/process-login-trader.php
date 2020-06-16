<?php
session_start();

require_once "../../../models/Database.php";
require_once "../../../functions/customFunctions.php";

$db = new Database();

// get user and trader details
$user = getUserWithEmail($db, $_POST['traderEmail']);
$trader = getTraderWithUserId($db, $user->USER_ID);

// destroy the admin session and set trader session
session_unset();
session_destroy();
session_start();

$_SESSION['user'] = $user;
$_SESSION['trader'] = $trader;
$_SESSION['loginMsg'] = "You have successfully logged in.";

// redirect back to trader dashboard
header("location: ../../../users/traders/traders-dashboard.php");