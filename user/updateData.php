<?php
include('../koneksi.php');
$nama = $_POST['nama'];
$username = $_POST['username'];
$password = $_POST['password'];
$email = $_POST['email'];
$level = $_POST['level'];
$id = $_POST['id'];
if (
    !empty($nama) && !empty($username) &&
    !empty($email) && !empty($level)
) {
    # code...
    $sql = "UPDATE tbl_users 
            SET nama='$nama',
            username='$username',
            email='$email',
            level='$level'
            WHERE id='$id'";
    $query = mysqli_query($conn, $sql);

    if (mysqli_affected_rows($conn) > 0) {
        # code...
        $data['status'] = 200;
        $data['result'][] = 'Data Berhasil diubah';
    } else {
        # code...
        $data['status'] = 400;
        $data['result'][] = 'Data Gagal diubah';
    }
} else {
    # code...
    $data['status'] = 400;
    $data['result'][] = 'Data Tidak Boleh Kosong';
}
print_r(json_encode($data));
