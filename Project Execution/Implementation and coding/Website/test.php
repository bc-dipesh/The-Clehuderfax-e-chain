<?php
 // get the email layout
 require_once "./email-layouts/traders-sign-up-layout.php";

 // send the email
 $to = 'darkbolt32@gmail.com';
 $subject = "Email Verification";
 $headers = "MIME-Version: 1.0" . "\r\n";
 $headers .= "Content-Type:text/html;charset=UTF-8" . "\r\n";
 $headers .= "From:noreply@TheClechuderfaxE-chain.com" . "\r\n";
 mail($to, $subject, $emailMessage, $headers);

 // set the session message
 $_SESSION['msg'] = "Successfully signed up. Please verify your email address by clicking the link sent to your email address.";
 header("location: ../../../users/traders/traders-sign-in.php");