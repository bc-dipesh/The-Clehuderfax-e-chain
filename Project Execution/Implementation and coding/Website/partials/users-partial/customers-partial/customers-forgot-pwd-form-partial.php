<!-- Forgot password  Form -->
<section class="sign-in animate__animated animate__fadeIn">
    <div class="container">
        <?php if (isset($_SESSION['msg'])) : ?>
            <div class="alert alert-light alert-dismissible fade show text-center" role="alert">
                <?php echo $_SESSION['msg']; ?>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        <?php endif; ?>
        <?php if (isset($_SESSION['error'])) : ?>
            <div class="alert alert-danger alert-dismissible fade show text-center" role="alert">
                <?php echo $_SESSION['error']; ?>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        <?php endif; ?>

        <?php unset($_SESSION['msg']); ?>
        <div class="signin-content">
            <div class="signin-image">
                <figure><img src="../../assets/img/logo/logo.png" alt="sing up image"></figure>
                <a href="../../users/customers/customers-sign-in.php" class="signup-image-link">Back to Login</a>
            </div>

            <div class="signin-form">
                <h2 class="form-title">Password reset request</h2>
                <form action="../../form-processings/users/customers-processing/process-customers-forgot-pwd-request.php"
                      method="POST" class="register-form" id="login-form">
                    <div class="form-group">
                        <label for="email"><i class="zmdi zmdi-account material-icons-name"></i></label>
                        <input type="email" name="email" id="email" placeholder="Your Email" required
                               value="<?php if (isset($_SESSION['email'])) echo $_SESSION['email']; ?>"
                        />
                    </div>

                    <?php unset($_SESSION['email']); ?>
                    <?php unset($_SESSION['error']); ?>
                    <div class="form-group form-button">
                        <input type="submit" name="pwdResetRequestBtn" id="signin" class="form-submit"
                               value="Reset Password"/>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>