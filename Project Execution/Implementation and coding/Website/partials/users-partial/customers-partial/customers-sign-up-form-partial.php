<!-- Sign up form -->
<section class="signup animate__animated animate__fadeIn">
    <div class="container">
        <div class="signup-content">
            <div class="signup-form">
                <?php if (isset($_SESSION['msg'])) : ?>
                    <div class="alert alert-light alert-dismissible fade show text-center" role="alert">
                        <?php echo $_SESSION['msg']; ?>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                <?php endif; ?>

                <?php unset($_SESSION['msg']); ?>

                <h2 class="form-title">Customer Sign up</h2>

                <!--customer signup form-->
                <form action="../../form-processings/users/customers-processing/process-customers-sign-up-form.php" method="POST" class="register-form" id="register-form">
                    <div class="form-group">
                        <label for="firstName"><i class="zmdi zmdi-account material-icons-name"></i></label>
                        <input required type="text" name="firstName" id="firstName" placeholder="Your First Name"
                               value="<?php if (isset($_SESSION['valid']['firstName'])) echo $_SESSION['valid']['firstName']; ?>"
                        />
                    </div>
                    <?php if (isset($_SESSION['invalid']['firstName'])) : ?>
                        <div class="alert alert-danger" role="alert">
                            <?php echo $_SESSION['invalid']['firstName']; ?>
                        </div>
                    <?php endif; ?>
                    <div class="form-group">
                        <label for="lastName"><i class="zmdi zmdi-account material-icons-name"></i></label>
                        <input required type="text" name="lastName" id="lastName" placeholder="Your Last Name"
                               value="<?php if (isset($_SESSION['valid']['lastName'])) echo $_SESSION['valid']['lastName']; ?>"
                        />
                    </div>
                    <?php if (isset($_SESSION['invalid']['lastName'])) : ?>
                        <div class="alert alert-danger" role="alert">
                            <?php echo $_SESSION['invalid']['lastName']; ?>
                        </div>
                    <?php endif; ?>
                    <div class="form-group">
                        <label for="email"><i class="zmdi zmdi-email"></i></label>
                        <input required type="email" name="email" id="email" placeholder="Your Email Address"
                               value="<?php if (isset($_SESSION['valid']['email'])) echo $_SESSION['valid']['email']; ?>"
                        />
                    </div>
                    <?php if (isset($_SESSION['invalid']['email'])) : ?>
                        <div class="alert alert-danger" role="alert">
                            <?php echo $_SESSION['invalid']['email']; ?>
                        </div>
                    <?php endif; ?>
                    <div class="form-group">
                        <label for="address"><i class="zmdi zmdi-my-location"></i></label>
                        <input required type="text" name="address" id="address" placeholder="Your Current Home Address"
                               value="<?php if (isset($_SESSION['valid']['address'])) echo $_SESSION['valid']['address']; ?>"
                        />
                    </div>
                    <?php if (isset($_SESSION['invalid']['address'])) : ?>
                        <div class="alert alert-danger" role="alert">
                            <?php echo $_SESSION['invalid']['address']; ?>
                        </div>
                    <?php endif; ?>
                    <div class="form-group">
                        <label for="mobileNumber"><i class="zmdi zmdi-phone"></i></label>
                        <input required type="text" name="mobileNumber" id="mobileNumber"
                               placeholder="Your Phone Number"
                               value="<?php if (isset($_SESSION['valid']['phone'])) echo $_SESSION['valid']['phone']; ?>"
                        />
                    </div>
                    <?php if (isset($_SESSION['invalid']['phone'])) : ?>
                        <div class="alert alert-danger" role="alert">
                            <?php echo $_SESSION['invalid']['phone']; ?>
                        </div>
                    <?php endif; ?>
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
                    <div class="form-group">
                        <input required type="checkbox" name="agree-term" id="agree-term"
                               class="agree-term" value="agreed" checked/>
                        <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all
                            statements in <a href="../../terms-and-conditions.html" target="_blank" class="term-service">Terms of service</a></label>
                    </div>
                    <div class="form-group form-button">
                        <input required type="submit" name="signup" id="signup" class="form-submit" value="Register"/>
                    </div>
                </form>

                <!--Unset all the valid and invalid messages after page reload-->
                <?php unset($_SESSION['invalid']) ?>
                <?php unset($_SESSION['valid']) ?>
                <?php unset($_SESSION['agree-term']) ?>
            </div>
            <div class="signup-image">
                <figure><img src="../../assets/img/logo/logo.png" alt="sing up image"></figure>
                <a href="./customers-sign-in.php" class="signup-image-link">I am already member</a>
                <a href="../../index.php" class="signup-image-link">Back to home</a>
            </div>
        </div>
    </div>
</section>