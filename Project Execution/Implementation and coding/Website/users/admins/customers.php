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

                <!-- DataTables  for customers-->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">List of Customers</h6>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                <tr>
                                    <th>EDIT</th>
                                    <th>DELETE</th>
                                    <th>FIRST NAME</th>
                                    <th>LAST NAME</th>
                                    <th>IMAGE</th>
                                    <th>EMAIL</th>
                                    <th>ADDRESS</th>
                                    <th>PHONE</th>
                                    <th>IS VERIFIED</th>
                                </tr>
                                </thead>
                                <tfoot>
                                <tr>
                                    <th>EDIT</th>
                                    <th>DELETE</th>
                                    <th>FIRST NAME</th>
                                    <th>LAST NAME</th>
                                    <th>IMAGE</th>
                                    <th>EMAIL</th>
                                    <th>ADDRESS</th>
                                    <th>PHONE</th>
                                    <th>IS VERIFIED</th>
                                </tr>
                                </tfoot>
                                <tbody>
                                <?php
                                // ... get all the users.
                                $query = "SELECT * FROM USERS U, CUSTOMERS C WHERE U.USER_ID = C.USER_ID";
                                $stmt = $db->conn->prepare($query);
                                $stmt->execute();
                                $users = $stmt->fetchAll();
                                ?>

                                <?php foreach ($users as $user) : ?>
                                    <tr>
                                        <td>
                                            <form action="./update-users.php"
                                                  method="POST">
                                                <button type="submit" name="update"
                                                        value="<?php echo $user->USER_ID; ?>"
                                                        class="btn btn-warning btn-xs update">Update
                                                </button>
                                            </form>
                                        </td>
                                        <td>
                                            <form action="../../form-processings/users/admins-processing/process-admins-delete-users.php"
                                                  method="POST">
                                                <button type="submit" name="delete"
                                                        value="<?php echo $user->USER_ID; ?>"
                                                        class="btn btn-danger btn-xs delete">Delete
                                                </button>
                                            </form>
                                        </td>
                                        <td><?php echo $user->FIRST_NAME; ?></td>
                                        <td><?php echo $user->LAST_NAME; ?></td>
                                        <td><img src="../../assets/img/profile/<?php echo $user->PROFILE_IMG; ?>" class="img-thumbnail"></td>
                                        <td><?php echo $user->EMAIL; ?></td>
                                        <td><?php echo $user->ADDRESS; ?></td>
                                        <td><?php echo $user->PHONE_NUMBER; ?></td>
                                        <td><?php echo getHumanRepresentation($user->IS_VERIFIED); ?></td>
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

<!-- product update info modal -->
<div id="user-update-response-modal" class="modal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">New Notification</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <?php if (isset($_SESSION['updateResponse'])) : ?>
                    <p><?php echo $_SESSION['updateResponse']; ?></p>
                <?php elseif (isset($_SESSION['deleteResponse'])) : ?>
                    <p><?php echo $_SESSION['deleteResponse']; ?></p>
                <?php endif; ?>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<!--import the footer-->
<?php require_once "../../template-assets/template-partials/footer-partial.php"; ?>

<!-- Page level plugins -->
<script src="../../template-assets/vendor/datatables/jquery.dataTables.min.js"></script>
<script src="../../template-assets/vendor/datatables/dataTables.bootstrap4.min.js"></script>

<!-- Page level custom scripts -->
<script src="../../template-assets/js/demo/datatables-demo.js"></script>
    <?php if (isset($_SESSION['updateResponse'])) : ?>
        <script>
            $('#user-update-response-modal').modal('show')
        </script>
        <?php unset($_SESSION['updateResponse']); ?>
    <?php elseif (isset($_SESSION['deleteResponse'])) : ?>
        <script>
            $('#user-update-response-modal').modal('show')
        </script>
        <?php unset($_SESSION['deleteResponse']); ?>
    <?php endif; ?>
</body>

</html>