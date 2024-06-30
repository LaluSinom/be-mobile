<?php

$hostname = 'localhost';
$username = 'root';
$password = 'andikabn0';
$database = 'mobile3';

$conn = mysqli_connect($hostname, $username, $password, $database);

if (!$conn) {
    echo "Koneksi gagal";
}