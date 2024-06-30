<?php
header("Access-Control-Allow-Origin: *"); // Allow all origins
header("Access-Control-Allow-Methods: GET, POST, OPTIONS"); // Allow methods
header("Access-Control-Allow-Headers: Content-Type, Authorization"); // Allow headers
header("Content-Type: application/json"); // Specify content type as JSON

include ('../koneksi.php');

// Read the raw POST data
$json = file_get_contents('php://input');

// Decode the JSON data into a PHP associative array
$data = json_decode($json, true);
$id = $data['id'];
if (!empty($id)) {
    $sql = "DELETE FROM event WHERE id='$id'";
    $query = mysqli_query($conn, $sql);
    $data['status'] = 200;
    $data['result'] = 'berhasil di hapus uwu';
} else {
    $data['status'] = 400;
    $data['result'] = 'Data not found';
}
print_r(json_encode($data));