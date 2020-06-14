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

$user = getUserWithId($db, $_POST['update']);

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
                <h1 class="m-0 font-weight-bold text-primary">Update User</h1>
                <div class="row">
                    <div class="col-md-6">
                        <form action="../../form-processings/users/admins-processing/process-admins-update-users.php"
                              method="POST" enctype="multipart/form-data">
                            <input type="hidden" name="userId"
                                   value="<?php if (!empty($user)) echo $user->USER_ID; ?>">

                            <div class="form-group row">
                                <label for="firstName"
                                       class="col-lg-3 col-form-label form-control-label">First
                                    name</label>
                                <div class="col-lg-9">
                                    <input class="form-control" name="firstName" id="firstName"
                                           type="text"
                                           value="<?php echo $user->FIRST_NAME; ?>">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="lastName"
                                       class="col-lg-3 col-form-label form-control-label">Last
                                    name</label>
                                <div class="col-lg-9">
                                    <input name="lastName" id="lastName" class="form-control"
                                           type="text"
                                           value="<?php echo $user->LAST_NAME; ?>">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="email"
                                       class="col-lg-3 col-form-label form-control-label">Email</label>
                                <div class="col-lg-9">
                                    <input readonly name="email" id="email" class="form-control" type="email"
                                           value="<?php echo $user->EMAIL; ?>">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="phone"
                                       class="col-lg-3 col-form-label form-control-label">Phone</label>
                                <div class="col-lg-9">
                                    <input name="phone" id="phone" class="form-control" type="text"
                                           value="<?php echo $user->PHONE_NUMBER; ?>">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="address"
                                       class="col-lg-3 col-form-label form-control-label">Address</label>
                                <div class="col-lg-9">
                                    <input name="address" id="address" class="form-control"
                                           type="text"
                                           value="<?php echo $user->ADDRESS; ?>"
                                           placeholder="address">
                                </div>
                            </div>

                            <div class="form-group">
                                <select name="accountStatus" class="custom-select mr-sm-2"
                                        id="inlineFormCustomSelect">

                                    <option>Account status...</option>
                                    <option value="0" <?php if (!$user->ACCOUNT_STATUS) echo "selected"; ?>>Deactivate</option>
                                    <option value="1" <?php if ($user->ACCOUNT_STATUS) echo "selected"; ?>>Activate</option>
                                </select>
                            </div>

                            <button type="submit" name="updateBtn" value="update" class="btn btn-primary">Update
                                User
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