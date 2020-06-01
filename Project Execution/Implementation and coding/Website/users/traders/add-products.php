<?php
session_start();
$pageTitle = basename(__FILE__, ".php");

if (!isset($_SESSION['trader'])) {
    header("location: ./traders-sign-in.php");
}

?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="wnameth=device-wnameth, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="The Influencers">

    <title><?php echo ucwords($pageTitle); ?></title>

    <!-- Custom fonts for this template-->
    <link href="../../template-assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../../template-assets/css/sb-admin-2.min.css" rel="stylesheet">
</head>

<body style="background-color:#efefef;">
    <h1 class="display-4 text-center">Add Product</h1>
    <div class="mt-5 d-flex justify-content-center">
        <form action="../../form-processings/users/traders-processing/add-prod.php" method="POST" enctype="multipart/form-data">
            <input type="hidden" name="productId">
            <div class="form-group">
                <label for="productName">Product Name</label>
                <input required type="text" class="form-control" name="productName" placeholder="Enter Product Name"
                value="<?php if(isset($_SESSION['valid']['prodName'])) echo $_SESSION['valid']['prodName']; ?>">
            </div>
            <div class="form-group">
                <label for="productDescription">Description</label>
                <textarea required class="form-control" name="productDescription" rows="3" placeholder="Enter Product Description"><?php if(isset($_SESSION['valid']['prodDesc'])) echo $_SESSION['valid']['prodDesc']; ?></textarea>
            </div>
            <div class="form-group">
                <label for="productRate">Rate</label>
                <input required type="number" step="0.01" class="form-control" name="productRate" placeholder="Enter Product Rate"
                value="<?php if(isset($_SESSION['valid']['prodRate'])) echo $_SESSION['valid']['prodRate']; ?>">
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
                <?php if (isset($_SESSION['emptyImage'])) : ?>
                    <div class="alert alert-danger" role="alert">
                        <?php echo $_SESSION['emptyImage']; ?>
                    </div>
                    <?php unset($_SESSION['emptyImage']); ?>
                <?php endif; ?>
            </div>
            <div class="form-group">
                <label for="productAllergyInfo">Allergy Info</label>
                <textarea required class="form-control" name="productAllergyInfo" rows="3" placeholder="Enter Product Allery Info"><?php if(isset($_SESSION['valid']['allergyInfo'])) echo $_SESSION['valid']['allergyInfo']; ?></textarea>
            </div>
            <div class="form-group">
                <label for="productMinOrder">Minimum Order</label>
                <input required type="number" class="form-control" name="productMinOrder" placeholder="Enter Product Minimum Order"
                value="<?php if(isset($_SESSION['valid']['minOrder'])) echo $_SESSION['valid']['minOrder']; ?>">
            </div>
            <div class="form-group">
                <label for="productMaxOrder">Maximum Order</label>
                <input required type="number" class="form-control" name="productMaxOrder" placeholder="Enter Product Maximum Order"
                value="<?php if(isset($_SESSION['valid']['maxOrder'])) echo $_SESSION['valid']['maxOrder']; ?>">
            </div>
            <div class="form-group">
                <label for="productQuantity">Product Quantity</label>
                <input required type="number" class="form-control" name="productQuantity" placeholder="Enter Product Quantity"
                value="<?php if(isset($_SESSION['valid']['quantity'])) echo $_SESSION['valid']['quantity']; ?>">
            </div>

            <button type="submit" name="addBtn" value="add" class="btn btn-primary">Add Product</button>
            <a href="./traders-product.php"><button type="button" class="btn btn-primary">Go Back</button></a>
            <?php unset($_SESSION['valid']); ?>
        </form>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="../../template-assets/vendor/jquery/jquery.min.js"></script>
    <script src="../../template-assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../../template-assets/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../../template-assets/js/sb-admin-2.min.js"></script>
</body>

</html>