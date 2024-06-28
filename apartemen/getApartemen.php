<?php

include('../koneksi.php');
$sql = "SELECT * FROM apartemen";
$query = mysqli_query($conn, $sql);
// jika data yang ada pada table > 0
if (mysqli_num_rows($query) > 0) {
    while ($row = mysqli_fetch_object($query)) {
        // angka 200 pada api = success
        $data['status'] = 200;
        // menampilkan data pada table
        $data['result'][] = $row;
    }
} else {
    // angka 400 pada api=error
    $data['status'] = 400;
    $data['result'] = "Data Not Found";
}
// cetak pada layar menggunakan Json_encode
print_r(json_encode($data));