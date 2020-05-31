<?php
require_once "./models/Database.php";

// pagination for all products
$items = "";

$db = new Database();
$conn = $db->conn;

$stmt = $conn->prepare($query);
$stmt->execute();
$items = $stmt->fetchAll(PDO::FETCH_ASSOC);

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

$stmt = $conn->prepare($paginationQuery);
$stmt->execute([$startLimitNumber, $endLimitNumber]);
$items = $stmt->fetchAll(PDO::FETCH_ASSOC);

?>
<!--Display styling-->
<div class="product-grid">
    <?php if (count($items) == 0) : ?>
        <p>No products available for now</p>
    <?php else: ?>
        <?php for ($i = 0; $i < count($items); $i++) : ?>
            <div class="product-card animate__animated animate__zoomIn">
                <a href="./product-details.php?prod_id=<?php echo $items[$i]['PRODUCT_ID']; ?>"><img class="product-img" src="./assets/img/products/<?php echo $items[$i]['IMAGE']; ?>"
                                                                               alt=""></a>
                <h3><?php echo $items[$i]['PRODUCT_NAME']; ?></h3>
                <p class="price light-grey">$<?php echo $items[$i]['RATE']; ?></p>
                <p><?php echo $items[$i]['DESCRIPTION']; ?></p>
                <button id="<?php echo $items[$i]['PRODUCT_ID']; ?>" type="button" class="add-to-cart-btn">Add to Cart</button>
            </div>
        <?php endfor; ?>
    <?php endif; ?>

    <div class="bottom">
        <?php for ($page = 1;
        $page <= $numberOfPages;
        $page++) {
        if ($page == $currentPage) {
        echo "<a href='$pageTitle.php?page=$page'><span class='current-page'>$page</span></a>";
        } else {
        echo "<a href='$pageTitle.php?page=$page'><span>$page</span></a>";
        }
        ?>
        <?php } ?>
    </div>

</div> <!-- /product-grid -->



