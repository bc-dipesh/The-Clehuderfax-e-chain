<?php
session_start();

require_once "../models/Database.php";

$db = new Database();

// ... get sold products of trader
$query = "select extract(month from payment_date) \"Month\", count(extract(month from payment_date)) \"Orders\"
from shops s,
     product_categories pc,
     products p,
     baskets b,
     basket_products bp,
     payments
where s.shop_id = pc.shop_id
  and pc.product_category_id = p.product_category_id
  and p.product_id = bp.product_id
  and b.basket_id = bp.basket_id
  and payments.BASKET_ID = b.BASKET_ID
  and active = 0
  and s.trader_id = ?
group by extract(month from payment_date)";

$stmt = $db->conn->prepare($query);
$stmt->execute([$_SESSION['trader']->TRADER_ID]);
$products = $stmt->fetchAll();

// ... send the data to the request.
echo json_encode($products, JSON_PRETTY_PRINT);