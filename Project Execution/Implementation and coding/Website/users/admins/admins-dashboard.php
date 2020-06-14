<?php
// determine page title
$pageTitle = basename(__FILE__, ".php");

// import necessary files
require_once "../../template-assets/template-partials/header-partial.php";
require_once "../../models/Database.php";

if (!isset($_SESSION['admin'])) {
    header("location: ./admins-sign-in.php");
}

$db = new Database();

// ... get total customers.
$query = "SELECT COUNT(U.USER_ID) \"numOfCustomers\" FROM USERS U, CUSTOMERS C WHERE U.USER_ID = C.USER_ID";
$stmt = $db->conn->prepare($query);
$stmt->execute();
$numOfCustomers = $stmt->fetch()->numOfCustomers;

// ... get total traders.
$query = "SELECT COUNT(U.USER_ID) \"numOfTraders\" FROM USERS U, TRADERS T WHERE U.USER_ID = T.USER_ID";
$stmt = $db->conn->prepare($query);
$stmt->execute();
$numOfTraders = $stmt->fetch()->numOfTraders;

// ... get total shops.
$query = "SELECT count(shop_id) \"totalShops\" from shops";
$stmt = $db->conn->prepare($query);
$stmt->execute();
$numOfShops = $stmt->fetch();

?>

</head>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

    <!--    import the sidebar-->
    <?php require_once "../../template-assets/template-partials/admin-side-bar-partial.php"; ?>

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

                    <!-- Total users count   -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-left-primary shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Users
                                        </div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800"><a href="./users.php"><?php echo number_format($numOfCustomers) + number_format($numOfTraders); ?></a></div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-user fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Total customers count  -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-left-primary shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Customers
                                        </div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800"><a href="./customers.php"><?php echo $numOfCustomers; ?></a></div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-user fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Total traders count -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-left-primary shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Traders
                                        </div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800"><a href="./traders.php"><?php echo $numOfTraders; ?></a></div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-user fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Total Shops count  -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-left-primary shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Shops
                                        </div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800"><a href="./shops.php"><?php echo $numOfShops->totalShops; ?></a></div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-shopping-bag fa-2x text-gray-300"></i>
                                    </div>
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
<script src="../../template-assets/js/demo/chart-area-demo.js"></script>
<script src="../../template-assets/js/demo/chart-pie-demo.js"></script>

</body>

</html>