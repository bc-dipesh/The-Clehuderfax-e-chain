<?php
// determine page title
$pageTitle = basename(__FILE__, ".php");

// import necessary files
require_once "../../template-assets/template-partials/header-partial.php";
require_once "../../functions/customFunctions.php";
require_once "../../models/Database.php";

$db = new Database();

if (!isset($_SESSION['customer'])) {
    header("location: ./customers-sign-in.php");
}
?>

<!-- Custom styles for this page -->
<link href="../../template-assets/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

    <!--    import the sidebar-->
    <?php require_once "../../template-assets/template-partials/cust-side-bar-partial.php"; ?>

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

                <div class="row">
                    <div class="col-12">
                        <!-- Area Chart -->
                        <div class="card shadow mb-4">
                            <!-- Card Header - Dropdown -->
                            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                <h6 class="m-0 font-weight-bold text-primary">Monthly Shopping rate</h6>
                            </div>
                            <!-- Card Body -->
                            <div class="card-body">
                                <div class="chart-area">
                                    <canvas id="shoppingHistoryChart"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- DataTables  for products-->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Shopping History</h6>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                <tr>
                                    <th>DATE</th>
                                    <th>PRODUCT</th>
                                    <th>IMAGE</th>
                                    <th>DESCRIPTION</th>
                                    <th>RATE</th>
                                    <th>QUANTITY</th>
                                </tr>
                                </thead>
                                <tfoot>
                                <tr>
                                    <th>DATE</th>
                                    <th>PRODUCT</th>
                                    <th>IMAGE</th>
                                    <th>DESCRIPTION</th>
                                    <th>RATE</th>
                                    <th>QUANTITY</th>
                                </tr>
                                </tfoot>
                                <tbody>
                                <?php
                                $query = "select first_name, last_name, product_name, image, rate, description, payment_date, basket_products.quantity from users, customers, products, basket_products, baskets, payments
                                        where users.user_id = customers.user_id
                                        and customers.customer_id = baskets.customer_id
                                        and baskets.basket_id = basket_products.basket_id
                                        and basket_products.product_id = products.product_id
                                        and customers.customer_id = ?
                                        and payments.BASKET_ID = baskets.BASKET_ID
                                        and active = 0";
                                $stmt = $db->conn->prepare($query);
                                $stmt->execute([$_SESSION['customer']->CUSTOMER_ID]);
                                $products = $stmt->fetchAll();
                                ?>
                                <?php foreach ($products as $product) : ?>
                                    <tr>
                                        <td><?php echo $product->PAYMENT_DATE; ?></td>
                                        <td><?php echo $product->PRODUCT_NAME; ?></td>
                                        <td><img src="../../assets/img/products/<?php echo $product->IMAGE; ?>"
                                                 class="img-thumbnail"></td>
                                        <td><?php echo $product->DESCRIPTION; ?></td>
                                        <td>$<?php echo $product->RATE; ?></td>
                                        <td><?php echo $product->QUANTITY; ?></td>
                                    </tr>
                                <?php endforeach; ?>
                                </tbody>
                            </table>
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

<?php if (isset($_SESSION['paymentStatus'])) : ?>
    <script>alertify.alert('Alert', 'Your Payment was successful. Please check your email for the receipt.').set({transition: 'fade'});</script>
    <?php unset($_SESSION['paymentStatus']); ?>
<?php endif; ?>

<!-- import logout modal-->
<?php require_once "../../template-assets/template-partials/logout-modal-partial.php"; ?>

<!--import the footer-->
<?php require_once "../../template-assets/template-partials/footer-partial.php"; ?>

<!-- Page level plugins -->
<script src="../../template-assets/vendor/chart.js/Chart.min.js"></script>
<script src="../../template-assets/vendor/datatables/jquery.dataTables.min.js"></script>
<script src="../../template-assets/vendor/datatables/dataTables.bootstrap4.min.js"></script>

<!-- Page level custom scripts -->
<script src="../../template-assets/js/customers-shopping-history-chart.js"></script>
<script src="../../template-assets/js/demo/datatables-demo.js"></script>

</body>

</html>