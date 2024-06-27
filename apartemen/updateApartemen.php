<?php
include('../koneksi.php');
$nama_apartemen = $_POST['nama_apartemen'];
$alamat = $_POST['alamat'];
$gambar = $_POST['gambar'];
$id = $_POST['id'];

if (
    !empty($nama_apartemen) && !empty($alamat) &&
    !empty($gambar)
) {
    $sql = "UPDATE apartemen SET 
            nama_apartemen='$nama_apartemen',
            alamat='$alamat',
            gambar='$gambar'
            WHERE id='$id'";
    $query = mysqli_query($conn, $sql);
    if (mysqli_affected_rows($conn) > 0) {

        $data['status'] = 200;
        $data['result'][] = 'berhasil di update';
    } else {
        # code...
        $data['status'] = 400;
        $data['result'][] = 'Data Gagal diubah';
    }
} else {
    $data['status'] = 400;
    $data['result'] = 'Data not found';
}
print_r(json_encode($data));
