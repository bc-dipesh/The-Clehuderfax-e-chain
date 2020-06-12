<?php
// destroy all users data in the session.
session_start();
session_unset();
session_destroy();

header("location: ../index.php?logoutMsg=Successful");