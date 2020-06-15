<?php
// determine page title
$pageTitle = basename(__FILE__, ".php");

// import necessary files
require_once "../../template-assets/template-partials/header-partial.php";
require_once "../../functions/customFunctions.php";
require_once "../../models/Database.php";

$db = new Database();

if (!isset($_SESSION['admin'])) {
    header("location: ./admins-sign-in.php");
}

$shop = getShopWithId($db, $_POST['update']);

?>

<!-- Custom styles for this page -->
<link href="../../template-assets/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

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
                <h1 class="m-0 font-weight-bold text-primary">Update Shop</h1>
                <div class="row">
                    <div class="col-md-6">
                        <form action="../../form-processings/users/admins-processing/process-admins-update-shops.php"
                              method="POST" enctype="multipart/form-data">
                            <input type="hidden" name="shopId"
                                   value="<?php echo $shop->SHOP_ID; ?>">

                            <div class="form-group row">
                                <label for="shopName"
                                       class="col-lg-3 col-form-label form-control-label">Shop
                                    name</label>
                                <div class="col-lg-9">
                                    <input class="form-control" name="shopName" id="shopName"
                                           type="text"
                                           value="<?php echo $shop->SHOP_NAME; ?>">
                                </div>
                            </div>

                            <button type="submit" name="updateBtn" value="update" class="btn btn-primary">Update
                                Shop
                            </button>
                        </form>
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
                    <span>Copyright &copy; The Clechuderfax E-chain 2020</span>
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

<!-- import logout modal-->
<?php require_once "../../template-assets/template-partials/logout-modal-partial.php"; ?>

<!--import the footer-->
<?php require_once "../../template-assets/template-partials/footer-partial.php"; ?>

</body>

</html>