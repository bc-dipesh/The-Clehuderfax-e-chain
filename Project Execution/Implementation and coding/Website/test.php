<?php
$response = [
    'address_city' => 'San Jose',
    'address_country' => 'United States',
    'address_country_code' => 'US',
    'address_name' => 'John Doe',
    'address_state' => 'CA',
    'address_status' => 'confirmed',
    'address_street' => '1 Main St',
    'address_zip' => '95131',
    'business' => 'sb-gt6q91448148@business.example.com',
    'charset' => 'UTF-8',
    'charset_original' => 'windows-1252',
    'custom' => '',
    'discount' => '0.00',
    'ebay_txn_id1' => '',
    'ebay_txn_id2' => '',
    'first_name' => 'John',
    'insurance_amount' => '0.00',
    'item_name1' => 'Dill',
    'item_name2' => 'Rosemary',
    'item_number1' => '',
    'item_number2' => '',
    'last_name' => 'Doe',
    'mc_currency' => 'USD',
    'mc_fee' => '0.50',
    'mc_gross' => '6.96',
    'mc_gross_1' => '2.49',
    'mc_gross_2' => '4.47',
    'mc_handling' => '0.00',
    'mc_handling1' => '0.00',
    'mc_handling2' => '0.00',
    'mc_shipping' => '0.00',
    'mc_shipping1' => '0.00',
    'mc_shipping2' => '0.00',
    'num_cart_items' => '2',
    'payer_email' => 'sb-ohlya1945761@personal.example.com',
    'payer_id' => 'ZVUHVPJRSYYYA',
    'payer_status' => 'verified',
    'payment_date' => '20:29:11 Jun 14, 2020 PDT',
    'payment_fee' => '0.50',
    'payment_gross' => '6.96',
    'payment_status' => 'Completed',
    'payment_type' => 'instant',
    'protection_eligibility' => 'Eligible',
    'quantity1' => '1',
    'quantity2' => '3',
    'receiver_email' => 'sb-gt6q91448148@business.example.com',
    'receiver_id' => 'THEVRBPAN29P8',
    'residence_country' => 'US',
    'shipping_discount' => '0.00',
    'shipping_method' => 'Default',
    'tax' => '0.00',
    'tax1' => '0.00',
    'tax2' => '0.00',
    'transaction_subject' => '',
    'txn_id' => '0E992972C3265430B',
    'txn_type' => 'cart',
];
$count = 0;
foreach ($response as $key => $data)
{
    if(strstr($key, 'item_name')) {
        ++$count;
    }

}

echo $count;