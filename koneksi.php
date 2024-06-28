<?php

$hostname = 'localhost';
$username = 'root';
$password = '';
$database = 'mobile3';

$conn = mysqli_connect($hostname, $username, $password, $database);

if (!$conn) {
    echo "Koneksi gagal";
}