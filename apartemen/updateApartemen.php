<?php
header("Access-Control-Allow-Origin: *"); // Allow all origins
header("Access-Control-Allow-Methods: GET, POST, OPTIONS"); // Allow methods
header("Access-Control-Allow-Headers: Content-Type, Authorization"); // Allow headers
header("Content-Type: application/json"); // Specify content type as JSON

include('../koneksi.php');

// Read the raw POST data
$json = file_get_contents('php://input');

// Decode the JSON data into a PHP associative array
$data = json_decode($json, true);

$nama_apartemen = $data['nama_apartemen'];
$alamat = $data['alamat'];
$gambar = $data['gambar'];
$id = $data['id'];

if (!empty($nama_apartemen) && !empty($alamat) && !empty($gambar)) {
    $sql = "UPDATE apartemen SET 
            nama_apartemen='$nama_apartemen',
            alamat='$alamat',
            gambar='$gambar'
            WHERE id='$id'";
    $query = mysqli_query($conn, $sql);
    if (mysqli_affected_rows($conn) > 0) {
        $response['status'] = 200;
        $response['result'] = 'berhasil di update';
    } else {
        $response['status'] = 400;
        $response['result'] = 'Data Gagal diubah';
    }
} else {
    $response['status'] = 400;
    $response['result'] = 'Data not found';
}

echo json_encode($response);