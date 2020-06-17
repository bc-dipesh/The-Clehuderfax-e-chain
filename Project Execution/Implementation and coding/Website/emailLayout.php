<?php

$emailMessage = "<!DOCTYPE html>
<html lang='en'>
<head>
      <style>
        .email_table {
            color: #333;
            font-family: sans-serif;
            font-size: 15px;
            font-weight: 300;
            text-align: center;
            border-collapse: separate;
            border-spacing: 0;
            width: 99%;
            margin: 6px auto;
            box-shadow:none;
        }
        table {
            color: #333;
            font-family: sans-serif;
            font-size: 15px;
            font-weight: 300;
            text-align: center;
            border-collapse: separate;
            border-spacing: 0;
            width: 99%;
            margin: 50px auto;
            box-shadow: 0 4px 8px 0 rgba(0,0,0,.16);
        }

        th {font-weight: bold; padding:10px; border-bottom:2px solid #000;}

        tbody td {border-bottom: 1px solid #ddd; padding:10px;}



        .email_main_div{width:700px; margin:auto; background-color:#EEEEEE; min-height:500px; border:2px groove #999999;}
        strong{font-weight:bold;}
        .item_table{text-align:left;}
    </style>
</head>

<body>
<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-67816487-1', 'auto');
    ga('send', 'pageview');

</script>

<div class='email_main_div'>
    <table class='email_table'>
        <tr>
            <td width='400px;' style='text-align:center; padding:10px;'>
                <img src='https://github.com/bc-dipesh/The-Clehuderfax-e-chain/blob/master/Project%20Execution/Implementation%20and%20coding/Website/assets/img/logo/logo.png?raw=true' width='300' height='100px' />
            </td>
        </tr>
    </table>

    <table class='email_table' style='margin-top:14px;'>
        <tbody>
            <tr>
                <td width='350px;' style='text-align:left; padding:10px;'>
                    <strong>Payment Receipt</strong><br />
                    Invoice ID: $invoiceId <br/>
                    Invoice Date: $invoiceDate <br/>
                    Collection Day and Time: $collectionDayTime
                    
                </td>
            </tr>
        </tbody>
    </table>

    <table class='item_table'>
        <thead>
        <tr>
            <th>Product Name</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Total</th>
        </tr>
        </thead>
        <tbody>
        $invoiceData
        </tbody>
    </table>
</div>
</body>
</html>";
