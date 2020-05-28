<?php
require_once './models/Database.php';
require_once "./models/Product.php";

if (isset($_GET['page'])) {
    $items = '';

    $db = new Database();
    $db->connect();
    $product = new Product();
    $products = $product->getAllProducts();
    $conn = $db->getConnection();

    // pagination logic
    $resultsPerPage = 4;
    $currentNumOfResults = count($products);
    $numberOfPages = ceil($currentNumOfResults / $resultsPerPage);

    // determine the current page number
    if (!isset($_GET['page'])) {
        $currentPage = 1;
    } else {
        $currentPage = $_GET['page'];
    }

    // starting limit number
    $startLimitNumber = ($currentPage - 1) * $resultsPerPage;
    $endLimitNumber = $startLimitNumber + $resultsPerPage;

    if ($currentPage > 1) {
        $startLimitNumber++;
    }

    // limit results for pagination
    $sql = "SELECT * FROM (
            SELECT
            products.*,
            row_number() over (ORDER BY product_id ASC) line_number
            FROM products
        ) WHERE line_number BETWEEN $startLimitNumber AND $endLimitNumber ORDER BY line_number";

    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $items = $stmt->fetchAll(PDO::FETCH_ASSOC);

    echo json_encode($items, JSON_PRETTY_PRINT);
}
