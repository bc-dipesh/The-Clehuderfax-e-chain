<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="./traders-dashboard.php">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-user"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Trader</div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item active">
        <a class="nav-link" href="./traders-dashboard.php">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span><?php echo $_SESSION['user']->FIRST_NAME . " "; ?>Dashboard</span></a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Nav Item - Tables -->
    <li class="nav-item active">
        <a class="nav-link" href="./traders-product.php">
            <i class="fas fa-fw fa-table"></i>
            <span>Products</span></a>
    </li>

    <!-- Nav Item - Add new product -->
    <li class="nav-item active">
        <a class="nav-link" href="./add-products.php">
            <i class="fas fa-fw fa-table"></i>
            <span>Add Product</span></a>
    </li>

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

</ul>
<!-- End of Sidebar -->