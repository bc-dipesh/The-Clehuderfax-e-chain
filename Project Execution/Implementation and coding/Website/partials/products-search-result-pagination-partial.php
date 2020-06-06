<?php
// pagination for searched products result
$items = "";
$db = new Database();

$searchProd = strtolower($_GET['prodToSearch']);
$items = searchProducts($db, $searchProd);

$resultsPerPage = 6;
$currentNumOfResults = count($items);
$numberOfPages = ceil($currentNumOfResults / $resultsPerPage);

// set the current page number
if (!isset($_GET['page'])) {
    $currentPage = 1;
} else {
    $currentPage = $_GET['page'];
}

// start and end numbers of products to display for the current page
$startLimitNumber = ($currentPage - 1) * $resultsPerPage;
$endLimitNumber = $startLimitNumber + $resultsPerPage;

if ($currentPage > 1) {
    $startLimitNumber++;
}

$paginationQuery = "SELECT * FROM (
            SELECT
            products.*,
            row_number() over (ORDER BY product_id ASC) line_number
            FROM products WHERE LOWER(PRODUCT_NAME) LIKE '%$searchProd%'
        ) WHERE line_number BETWEEN ? AND ? ORDER BY line_number";

$stmt = $db->conn->prepare($paginationQuery);
$stmt->execute([$startLimitNumber, $endLimitNumber]);
$items = $stmt->fetchAll(PDO::FETCH_ASSOC);

?>
<!--Display styling-->
<div class="product-grid">
    <?php if (count($items) == 0) : ?>
        <p>Product not found</p>
    <?php else: ?>
        <?php for ($i = 0; $i < count($items); $i++) : ?>
            <div class="product-card animate__animated animate__zoomIn">
                <a href="./product-details.php?prod_id=<?php echo $items[$i]['PRODUCT_ID']; ?>"><img class="product-img" src="./assets/img/products/<?php echo $items[$i]['IMAGE']; ?>"
                                                                                                     alt=""></a>
                <h3><?php echo $items[$i]['PRODUCT_NAME']; ?></h3>
                <p class="price light-grey">$<?php echo $items[$i]['RATE']; ?></p>
                <button id="<?php echo $items[$i]['PRODUCT_ID']; ?>" type="button" class="add-to-cart-btn">Add to Cart</button>
            </div>
        <?php endfor; ?>
    <?php endif; ?>

    <div class="bottom">
        <?php for ($page = 1;
                   $page <= $numberOfPages;
                   $page++) {
            if ($page == $currentPage) {
                echo "<a href='$pageTitle.php?prodToSearch=$searchProd&page=$page'><span class='current-page'>$page</span></a>";
            } else {
                echo "<a href='$pageTitle.php?prodToSearch=$searchProd&page=$page'><span>$page</span></a>";
            }
            ?>
        <?php } ?>
    </div>

</div> <!-- /product-grid -->



