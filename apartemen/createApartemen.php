<?php
include('../koneksi.php');
$nama_apartemen = $_POST['nama_apartemen'];
$alamat = $_POST['alamat'];
$gambar = $_POST['gambar'];

if (
    !empty($nama_apartemen) || !empty($alamat) ||
    !empty($gambar)
) {
    $sqlCheck = "SELECT COUNT(*) FROM apartemen WHERE 
                nama_apartemen='$nama_apartemen'";
    $queryCheck = mysqli_query($conn, $sqlCheck);
    $hasilCheck = mysqli_fetch_array($queryCheck);
    if ($hasilCheck[0] == 0) {
        // jika data belum ada
        $sql = "INSERT INTO apartemen (nama_apartemen,alamat,gambar) VALUES ('$nama_apartemen','$alamat','$gambar')";
        $query = mysqli_query($conn, $sql);
        if (mysqli_affected_rows($conn)>0) {
            $data['status'] = 200;
            $data['result'] = 'Data berhasil ditambahkan';
        } else {
            $data['status'] = 400;
            $data['result'][] = 'Data Gagal Disimpan';
            // echo json_encode($data);
        }
    } else {
        $data['status'] = 400;
        $data['result'] = 'Data sudah ada';
    }
}else {
    $data['status'] = 400;
    $data['result'][] = 'Data Tidak Boleh Kosong';
    // echo json_encode($data);
}

print_r(json_encode($data));
