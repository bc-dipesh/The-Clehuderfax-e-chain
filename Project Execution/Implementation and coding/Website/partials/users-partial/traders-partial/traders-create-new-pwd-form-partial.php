<!-- Create new password form -->
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
        <?php unset($_SESSION['error']); ?>
        <div class="signin-content">
            <div class="signin-image">
                <figure><img src="../../assets/img/logo/logo.png" alt="sing up image"></figure>
                <a href="../../index.php" class="signup-image-link">Back to home</a>
            </div>

            <div class="signin-form">
                <h2 class="form-title">Create New Password</h2>
                <form action="../../form-processings/users/process-create-new-pwd-form.php"
                      method="POST" class="register-form" id="login-form">
                    <div class="form-group">
                        <label for="email"><i class="zmdi zmdi-account material-icons-name"></i></label>
                        <input readonly type="email" name="email" id="email" placeholder="Your Email" required
                               value="<?php if (isset($_SESSION['email'])) echo $_SESSION['email']; ?>"
                        />
                    </div>
                    <div class="form-group">
                        <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                        <input required type="password" name="pass" id="pass" placeholder="Password"/>
                    </div>
                    <?php if (isset($_SESSION['invalid']['pass'])) : ?>
                        <div class="alert alert-danger" role="alert">
                            <?php echo $_SESSION['invalid']['pass']; ?>
                        </div>
                    <?php endif; ?>
                    <div class="form-group">
                        <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                        <input required type="password" name="re_pass" id="re_pass" placeholder="Repeat your password"/>
                    </div>

                    <input type="hidden" name="pwdFor" value="trader">

                    <!--Unset all the valid and invalid messages after page reload-->
                    <?php unset($_SESSION['invalid']) ?>
                    <?php unset($_SESSION['valid']) ?>

                    <div class="form-group form-button">
                        <input type="submit" name="createNewPwdBtn" id="signin" class="form-submit" value="Save Password"/>
                    </div>
                </form>

            </div>
        </div>
    </div>
</section>