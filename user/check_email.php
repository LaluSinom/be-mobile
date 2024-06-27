<?php
// check email dengan php
include('../koneksi.php');
$email = $_POST['email'];
$sql = "SELECT * FROM tbl_user WHERE 
email='$email'";
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
