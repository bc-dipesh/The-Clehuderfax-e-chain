<?php
session_start();

require_once "../models/Database.php";

$db = new Database();
$query = "select extract(month from payment_date) \"Month\",
count(payment_date) \"Orders\"
from users,
     customers,
     baskets,
     payments
where users.user_id = customers.user_id
  and customers.customer_id = baskets.customer_id
  and payments.BASKET_ID = baskets.BASKET_ID
  and active = 0
  and customers.customer_id = ?
group by extract(month from payment_date)";

$stmt = $db->conn->prepare($query);
$stmt->execute([$_SESSION['customer']->CUSTOMER_ID]);
$products = $stmt->fetchAll();

// ... send the data to the request.
echo json_encode($products, JSON_PRETTY_PRINT);

