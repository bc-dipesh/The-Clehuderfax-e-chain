
<?php
// PayPal configuration

define('PAYPAL_MODE', 'sandbox'); // sandbox or live
define('PAYPAL_EMAIL_ID', 'sb-gt6q91448148@business.example.com'); //PayPal API Username
define('PAYPAL_PASS', 'QsG$Ww:1'); //Paypal API password
define('PAYPAL_API_SID', 'AY4TVbw0cdkD8j-DYBIy8DaGpVzmm8ThJ4k7SV8Y2XA7uqYySldfUt1jZud2Gb63WswuoOrfBNmm1x3q'); //Paypal API Signature
define('PAYPAL_CURRENCY', 'GBP'); //Paypal Currency Code
define('PAYPAL_RETURN_URL', 'http://localhost/the-clechuderfax-e-chain//checkout-successful.php');
define('PAYPAL_NOTIFY_URL', 'http://localhost/the-clechuderfax-e-chain//notify.php');
define('PAYPAL_CANCEL_URL', 'http://localhost/the-clechuderfax-e-chain//checkout-cancel.php');
