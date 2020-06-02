<!-- Sign in  Form -->
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

        <?php unset($_SESSION['msg']); ?>
        <div class="signin-content">
            <div class="signin-image">
                <figure><img src="../../assets/img/logo/logo.png" alt="sing up image"></figure>
                <a href="../../index.php" class="signup-image-link">Back to home</a>
            </div>

            <div class="signin-form">
                <h2 class="form-title">Admins Sign in</h2>
                <form action="../../form-processings/users/admins-processing/process-admins-sign-in-form.php" method="POST" class="register-form" id="login-form">
                    <div class="form-group">
                        <label for="email"><i class="zmdi zmdi-account material-icons-name"></i></label>
                        <input type="email" name="email" id="email" placeholder="Your Email" required
                               value="<?php if (isset($_SESSION['email'])) echo $_SESSION['email']; ?>"
                        />
                    </div>
                    <div class="form-group">
                        <label for="password"><i class="zmdi zmdi-lock"></i></label>
                        <input type="password" name="password" id="password" placeholder="Password" required/>
                    </div>
                    <?php if (isset($_SESSION['error'])) : ?>
                        <div class="alert alert-danger" role="alert">
                            <?php echo $_SESSION['error']; ?>
                        </div>
                    <?php endif; ?>
                    <?php unset($_SESSION['email']); ?>
                    <?php unset($_SESSION['error']); ?>
                    <div class="form-group">
                        <input type="checkbox" name="remember-me" id="remember-me" class="agree-term"/>
                        <label for="remember-me" class="label-agree-term"><span><span></span></span>Remember me</label>
                    </div>
                    <div class="form-group form-button">
                        <input type="submit" name="signin" id="signin" class="form-submit" value="Log in"/>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>