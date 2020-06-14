<?php
session_start();

require_once "./functions/customFunctions.php";
require_once "./models/Database.php";

$db = new Database();

$result = logCurrentAction($db, $_SESSION['admin']->USER_ID, $_SESSION['admin']->ADMIN_ID, 'test');

echo $result;