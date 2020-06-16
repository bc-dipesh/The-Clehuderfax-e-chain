<?php
// determine page title
$pageTitle = basename(__FILE__, ".php");

// import necessary files
require_once "../../template-assets/template-partials/header-partial.php";
require_once "../../models/Database.php";

if (!isset($_SESSION['trader'])) {
    header("location: ./traders-sign-in.php");
}

$db = new Database();
// ... get current month earning
$query = "select extract(month from payment_date) \"Month\", sum((bp.quantity) * p.rate) \"Earning\"
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
  and extract(month from payment_date) = extract(month from localtimestamp(2))
group by extract(month from payment_date)";
$stmt = $db->conn->prepare($query);
$stmt->execute([$_SESSION['trader']->TRADER_ID]);

$monthlyEarning = $stmt->fetch();

// ... get yearly earning
$query = "select extract(year from payment_date)             \"Year\",
       sum((bp.quantity) * p.rate) \"Earning\"
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
  and extract(year from payment_date) = extract(year from localtimestamp(2))
group by extract(year from payment_date)";
$stmt = $db->conn->prepare($query);
$stmt->execute([$_SESSION['trader']->TRADER_ID]);

$yearlyEarning = $stmt->fetch();

// ... get product stock levels
$query = "select count(product_id) \"numOfProducts\", product_id, quantity from shops s, product_categories pc, products p
where s.shop_id = pc.shop_id
and pc.product_category_id = p.product_category_id
and p.quantity < 100
and s.trader_id = ?
group by product_id, quantity";
$stmt = $db->conn->prepare($query);
$stmt->execute([$_SESSION['trader']->TRADER_ID]);

$stock = $stmt->fetch();
$productsLowOnStock = 0;

if ($stock) {
    $productsLowOnStock = $stock->numOfProducts;
}

?>

</head>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

    <!--    import the sidebar-->
    <?php require_once "../../template-assets/template-partials/side-bar-partial.php"; ?>

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">
            <?php require_once "../../template-assets/template-partials/top-bar-partial.php"; ?>

            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
                </div>

                <!-- Content Row -->
                <div class="row">

                    <!-- Earnings (Monthly) Card  -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-left-primary shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Earnings
                                            (Monthly)
                                        </div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">
                                            $<?php if ($monthlyEarning) echo $monthlyEarning->Earning;
                                            echo "0"; ?></div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Earnings (Annual) Card -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-left-success shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Earnings
                                            (Annual)
                                        </div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">
                                            $<?php if ($yearlyEarning) echo $yearlyEarning->Earning; else echo "0"; ?></div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Products Sold Card -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-left-info shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Products
                                            Sold
                                        </div>
                                        <div class="row no-gutters align-items-center">
                                            <div class="col-auto">
                                                <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">50%</div>
                                            </div>
                                            <div class="col">
                                                <div class="progress progress-sm mr-2">
                                                    <div class="progress-bar bg-info" role="progressbar"
                                                         style="width: 50%" aria-valuenow="50" aria-valuemin="0"
                                                         aria-valuemax="100"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Products Low On Stock Card -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-left-warning shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Products
                                            Low On Stock
                                        </div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $productsLowOnStock; ?></div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-comments fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Content Row -->

                <div class="row">

                    <div class="col-12">
                        <!-- Area Chart -->
                        <div class="card shadow mb-4">
                            <!-- Card Header - Dropdown -->
                            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                <h6 class="m-0 font-weight-bold text-primary">Monthly sales</h6>
                            </div>
                            <!-- Card Body -->
                            <div class="card-body">
                                <div class="chart-area">
                                    <canvas id="monthlySalesChart"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->

        <!-- Footer -->
        <footer class="sticky-footer bg-white">
            <div class="container my-auto">
                <div class="copyright text-center my-auto">
                    <span>Copyright &copy; 2020 The Clechuderfax E-chain</span>
                </div>
            </div>
        </footer>
        <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<?php if (isset($_SESSION['loginMsg'])) : ?>
    <script>alertify.alert('Alert', 'You have successfully logged in.').set({transition: 'fade'});</script>
    <?php unset($_SESSION['loginMsg']); ?>
<?php endif; ?>

<!-- import logout modal-->
<?php require_once "../../template-assets/template-partials/logout-modal-partial.php"; ?>

<!--import the footer-->
<?php require_once "../../template-assets/template-partials/footer-partial.php"; ?>
<!-- Page level plugins -->
<script src="../../template-assets/vendor/chart.js/Chart.min.js"></script>

<!-- Page level custom scripts -->
<script src="../../template-assets/js/traders-monthly-sales-chart.js"></script>

</body>

</html>