<?php
$host = getenv('MYSQLHOST') ?: 'monorail.proxy.rlwy.net';
$user = getenv('MYSQLUSER') ?: 'root';
$pass = getenv('MYSQLPASSWORD') ?: 'oLIPUFqIVgnLFvaMLPPqWuReumRzpbxd';
$dbname = getenv('MYSQLDATABASE') ?: 'railway';
$port = (int)(getenv('MYSQLPORT') ?: 51206);

$conn = mysqli_connect($host, $user, $pass, $dbname, $port);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

mysqli_set_charset($conn, "utf8mb4");
?>