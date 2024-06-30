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
$nama_wisata = $data['nama_wisata'];
$gambar = $data['gambar'];
$jam_layanan = $data['jam_layanan'];
$jam_tutup = $data['jam_tutup'];
$alamat = $data['alamat'];

if (
    !empty($id) && !empty($nama_wisata) && !empty($gambar) &&
    !empty($jam_layanan) && !empty($jam_tutup) && !empty($alamat)
) {
    // jika data sudah ada
    $sql = "UPDATE wisata SET 
                nama_wisata = '$nama_wisata',
                gambar = '$gambar',
                jam_layanan = '$jam_layanan',
                jam_tutup = '$jam_tutup',
                alamat = '$alamat'
            WHERE id = $id";
    $query = mysqli_query($conn, $sql);
    if (mysqli_affected_rows($conn) > 0) {
        $data['status'] = 200;
        $data['result'] = 'Data berhasil diupdate';
    } else {
        $data['status'] = 400;
        $data['result'] = 'Data Gagal Diupdate';
    }
} else {
    $data['status'] = 400;
    $data['result'] = 'Data Tidak Boleh Kosong';
}

print_r(json_encode($data));
?>