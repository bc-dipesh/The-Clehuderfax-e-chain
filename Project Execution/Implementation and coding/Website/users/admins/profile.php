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
                <h1 class="m-0 font-weight-bold text-primary">Profile</h1>

                <!-- Content Row -->
                <div class="row">

                    <div class="col-md-4">
                        <form role="form"
                              action="../../form-processings/users/admins-processing/process-admins-update-profile.php"
                              method="POST" enctype="multipart/form-data">
                            <div class="col-lg-4 order-lg-1 text-center">
                                <img src="../../assets/img/profile/<?php echo $_SESSION['user']->PROFILE_IMG; ?>"
                                     class="mx-auto img-fluid img-circle d-block" alt="avatar">
                                <h6 class="mt-2">Upload a different photo</h6>
                                <label for="profileImg" class="custom-file">
                                </label>
                                <input name="profileImg" type="file" id="profileImg"
                                       class="form-control-file">
                            </div>

                            <?php if (isset($_SESSION['imgUploadResponse']['success'])) : ?>
                                <div class="alert alert-secondary mt-5" role="alert">
                                    <?php echo $_SESSION['imgUploadResponse']['success']; ?>
                                </div>
                                <?php unset($_SESSION['imgUploadResponse']['success']); ?>
                            <?php elseif (isset($_SESSION['imgUploadResponse']['error'])) : ?>
                                <div class="alert alert-danger mt-5" role="alert">
                                    <?php echo $_SESSION['imgUploadResponse']['success']; ?>
                                </div>
                                <?php unset($_SESSION['imgUploadResponse']['error']); ?>
                            <?php elseif (isset($_SESSION['profileUpdated'])) : ?>
                                <?php if (isset($_SESSION['profileUpdated']['success'])) : ?>
                                    <div class="alert alert-secondary mt-5" role="alert">
                                        <?php echo $_SESSION['profileUpdated']['success']; ?>
                                    </div>
                                    <?php unset($_SESSION['profileUpdated']['success']); ?>
                                <?php elseif (isset($_SESSION['profileUpdated']['error'])) : ?>
                                    <div class="alert alert-danger mt-5" role="alert">
                                        <?php echo $_SESSION['profileUpdated']['error']; ?>
                                    </div>
                                    <?php unset($_SESSION['profileUpdated']['error']); ?>
                                <?php endif; ?>
                            <?php endif; ?>

                    </div>

                    <div class="col-md-4">
                        <div class="form-group row">
                            <label for="firstName"
                                   class="col-lg-3 col-form-label form-control-label">First
                                name</label>
                            <div class="col-lg-9">
                                <input class="form-control" name="firstName" id="firstName"
                                       type="text"
                                       value="<?php echo $_SESSION['user']->FIRST_NAME; ?>">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="lastName"
                                   class="col-lg-3 col-form-label form-control-label">Last
                                name</label>
                            <div class="col-lg-9">
                                <input name="lastName" id="lastName" class="form-control"
                                       type="text"
                                       value="<?php echo $_SESSION['user']->LAST_NAME; ?>">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="email"
                                   class="col-lg-3 col-form-label form-control-label">Email</label>
                            <div class="col-lg-9">
                                <input readonly name="email" id="email" class="form-control" type="email"
                                       value="<?php echo $_SESSION['user']->EMAIL; ?>">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="phone"
                                   class="col-lg-3 col-form-label form-control-label">Phone</label>
                            <div class="col-lg-9">
                                <input name="phone" id="phone" class="form-control" type="text"
                                       value="<?php echo $_SESSION['user']->PHONE_NUMBER; ?>">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="address"
                                   class="col-lg-3 col-form-label form-control-label">Address</label>
                            <div class="col-lg-9">
                                <input name="address" id="address" class="form-control"
                                       type="text"
                                       value="<?php echo $_SESSION['user']->ADDRESS; ?>"
                                       placeholder="address">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label"></label>
                            <div class="col-lg-9">
                                <input type="submit" name="updateProfileBtn" class="btn btn-primary"
                                       value="Save Changes">
                            </div>
                        </div>
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