<?php
// determine page title
$pageTitle = basename(__FILE__, ".php");

// import necessary files
require_once "../../template-assets/template-partials/header-partial.php";
require_once "../../functions/customFunctions.php";
require_once "../../models/Database.php";

$db = new Database();

if (!isset($_SESSION['trader'])) {
    header("location: ./traders-sign-in.php");
}

$product = getProduct($db, $_POST['update']);

?>

<!-- Custom styles for this page -->
<link href="../../template-assets/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

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
                <h1 class="m-0 font-weight-bold text-primary">Update Products</h1>
                <div class="row">
                    <div class="col-md-6">
                        <form action="../../form-processings/users/traders-processing/process-traders-update-prod.php"
                              method="POST" enctype="multipart/form-data">
                            <input type="hidden" name="productId"
                                   value="<?php if (!empty($product)) echo $product->PRODUCT_ID; ?>">
                            <div class="form-group">
                                <label for="productName">Product Name</label>
                                <input required type="text" class="form-control" name="productName"
                                       placeholder="Enter Product Name"
                                       value="<?php if (!empty($product)) echo $product->PRODUCT_NAME; ?>">
                            </div>
                            <div class="form-group">
                                <label for="productDescription">Description</label>
                                <textarea required class="form-control" name="productDescription" rows="3"
                                          placeholder="Enter Product Description"><?php if (!empty($product)) echo $product->DESCRIPTION; ?></textarea>
                            </div>
                            <div class="form-group">
                                <label for="productRate">Rate</label>
                                <input required type="number" step="0.01" class="form-control" name="productRate"
                                       placeholder="Enter Product Rate"
                                       value="<?php if (!empty($product)) echo $product->RATE; ?>">
                            </div>
                            <div class="form-group">
                                <label for="productAvailability">Product availability</label>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <label class="input-group-text" for="productAvailability">Options</label>
                                    </div>
                                    <select class="custom-select" name="productAvailability">
                                        <option>Select...</option>
                                        <option value="1" selected>Yes</option>
                                        <option value="0">No</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="productImage">Product Image</label>
                                <input type="file" class="form-control-file" name="productImage">
                                <input type="hidden" name="defaultImage"
                                       value="<?php if (!empty($product)) echo $product->IMAGE; ?>">
                            </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="productAllergyInfo">Allergy Info</label>
                            <textarea required class="form-control" name="productAllergyInfo" rows="3"
                                      placeholder="Enter Product Allery Info"><?php if (!empty($product)) echo $product->ALLERGY_INFO; ?></textarea>
                        </div>
                        <div class="form-group">
                            <label for="productMinOrder">Minimum Order</label>
                            <input required type="number" class="form-control" name="productMinOrder"
                                   placeholder="Enter Product Minimum Order"
                                   value="<?php if (!empty($product)) echo $product->MIN_ORDER; ?>">
                        </div>
                        <div class="form-group">
                            <label for="productMaxOrder">Maximum Order</label>
                            <input required type="number" class="form-control" name="productMaxOrder"
                                   placeholder="Enter Product Maximum Order"
                                   value="<?php if (!empty($product)) echo $product->MAX_ORDER; ?>">
                        </div>
                        <div class="form-group">
                            <label for="productQuantity">Product Quantity</label>
                            <input required type="number" class="form-control" name="productQuantity"
                                   placeholder="Enter Product Quantity"
                                   value="<?php if (!empty($product)) echo $product->QUANTITY; ?>">
                        </div>

                        <button type="submit" name="updateBtn" value="update" class="btn btn-primary">Update
                            Product
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