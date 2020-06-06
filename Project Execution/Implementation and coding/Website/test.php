<?php

$paymentDate = new DateTime("now", new DateTimeZone("ASIA/KATHMANDU"));
echo $paymentDate->format("D");