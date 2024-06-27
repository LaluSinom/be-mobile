<?php
include('../koneksi.php');
$nama = $_POST['nama'];
$username = $_POST['username'];
$password = $_POST['password'];
$email = $_POST['email'];
$level = $_POST['level'];

if (
    !empty($nama) || !empty($username) ||
    !empty($password) || !empty($email) ||
    !empty($level)
) {
    $sqlCheck = "SELECT COUNT(*) FROM tbl_users WHERE 
                email='$email' AND username='$username'";
    $queryCheck = mysqli_query($conn, $sqlCheck);
    $hasilCheck = mysqli_fetch_array($queryCheck);
    if ($hasilCheck[0] == 0) {
        // jika data belum ada
        $sql = "INSERT INTO tbl_users(nama,username,password,email,level) VALUES 
                ('$nama','$username','$password','$email','$level')";
        $query = mysqli_query($conn, $sql);
        if (mysqli_affected_rows($conn) > 0) {
            $data['status'] = 200;
            $data['result'][] = 'Data Berhasil Disimpan';
            // echo json_encode($data);

        } else {
            $data['status'] = 400;
            $data['result'][] = 'Data Gagal Disimpan';
            // echo json_encode($data);
        }
    } else {
        // jika data sudah ada
        $data['status'] = 400;
        $data['result'][] = 'Data Sudah Ada';
        // echo json_encode($data);
    }
} else {
    $data['status'] = 400;
    $data['result'][] = 'Data Tidak Boleh Kosong';
    // echo json_encode($data);
}
print_r(json_encode($data));
