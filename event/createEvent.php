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
$nama_event = $data['nama_event'] ?? '';
$tanggal_event = $data['tanggal_event'] ?? '';
$lokasi_event = $data['lokasi_event'] ?? '';
$deskripsi = $data['deskripsi'] ?? '';
$gambar = $data['gambar'] ?? '';

if (
    !empty($nama_event) || !empty($tanggal_event) ||
    !empty($lokasi_event) || !empty($deskripsi) ||
    !empty($gambar)
) {
    $sql = "INSERT INTO event (nama_event, tanggal_event, lokasi_event, deskripsi, gambar) VALUES 
            ('$nama_event', '$tanggal_event', '$lokasi_event', '$deskripsi', '$gambar')";
    $query = mysqli_query($conn, $sql);
    if (mysqli_affected_rows($conn) > 0) {
        $data['status'] = 200;
        $data['result'] = 'Data berhasil ditambahkan';
    } else {
        $data['status'] = 400;
        $data['result'] = 'Data gagal disimpan';
    }
} else {
    $data['status'] = 400;
    $data['result'] = 'Data tidak boleh kosong';
}

echo json_encode($data);
?>
