<?php
include('../koneksi.php');
$username = $_POST['username'];
$password = $_POST['password'];
$sql = "SELECT * FROM tbl_users WHERE 
username='$username' AND password ='$password'";
$query = mysqli_query($conn, $sql);
// jika data yang ada pada table > 0
if (mysqli_num_rows($query) > 0) {
    while ($row = mysqli_fetch_object($query)) {
        // angka 200 pada api = success
        $data['status'] = 200;
        // menampilkan data pada table
        $data['result'] = $row;
    }
} else {
    // angka 400 pada api=error
    $data['status'] = 400;
    $data['result'] = "Data Not Found";
}
// cetak pada layar menggunakan Json_encode
print_r(json_encode($data));
