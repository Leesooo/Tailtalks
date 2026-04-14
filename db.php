<?php
// Database configuration for Railway
$host = getenv('MYSQLHOST') ?: "localhost";
$user = getenv('MYSQLUSER') ?: "root";
$pass = getenv('MYSQLPASSWORD') ?: "";
$dbname = getenv('MYSQLDATABASE') ?: "tailtalks_db";
$port = getenv('MYSQLPORT') ?: "3306";

// 1. Create connection
$conn = mysqli_connect($host, $user, $pass, $dbname, $port);

// 2. Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// 3. Set charset
mysqli_set_charset($conn, "utf8mb4");
?>