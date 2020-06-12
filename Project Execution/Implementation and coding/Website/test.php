<?php
$to = "darkbolt32@gmail.com";
$subject = "Email Verification";
$message = "<html><body>
<p>Dear</p>
<p>We're glad that you've joined TheClechuderfaxE-chain but it seems that you haven't started your shopping yet.</p>
<p>Click the link below to start shopping by verifying your email</p>
<input type='button' value='verifyEmail' onclick=\"location.href='http://localhost/the-clechuderfax-e-chain/';\">
</body></html>";
$headers = "MIME-Version: 1.0" . "\r\n";
$headers .= "Content-Type:text/html;charset=UTF-8" . "\r\n";
$headers .= "From:noreply@TheClechuderfaxE-chain.com" . "\r\n";
mail("darkbolt32@gmail.com", $subject, $message, $headers);