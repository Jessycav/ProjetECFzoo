<?php
$db_host ="eu-cluster-west-01.k8s.cleardb.net";
$db_user ="bb66f332deab0";
$db_pass ="da7df6b4";
$db_name ="heroku_729474d8ba8f9af";

$connect = msqli_connect($db_host, $db_user, $db_pass, $db_name) or die ("database connection error);
