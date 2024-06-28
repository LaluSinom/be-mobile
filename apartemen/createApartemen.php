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

if (
    !empty($nama_apartemen) || !empty($alamat) ||
    !empty($gambar)
) {
        // jika data belum ada
        $sql = "INSERT INTO apartemen (nama_apartemen,alamat,gambar) VALUES ('$nama_apartemen','$alamat','$gambar')";
        $query = mysqli_query($conn, $sql);
        if (mysqli_affected_rows($conn)>0) {
            $data['status'] = 200;
            $data['result'] = 'Data berhasil ditambahkan';
        } else {
            $data['status'] = 400;
            $data['result'] = 'Data Gagal Disimpan';
            // echo json_encode($data);
        }
    }else {
    $data['status'] = 400;
    $data['result'] = 'Data Tidak Boleh Kosong';
    // echo json_encode($data);
}

print_r(json_encode($data));