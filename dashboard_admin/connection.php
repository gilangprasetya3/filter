<?php

function koneksiDB() {
$hostname = "localhost";
$username = "root";
$password = "";
$db_name = "1absensi";

$db = mysqli_connect($hostname, $username, $password, $db_name);

if (!$db) {
    die("Koneksi Database Gagal : " .mysqli_connect_error());
} else {
    return $db;
}
}
function selectAllData() {
    $query = "SELECT * FROM tb_buku";
    $result = mysqli_query(koneksiDB(), $query);
    return $result;
}

function insertData($data) {
    $query = "INSERT INTO tb_buku VALUES ('".$data['kode_buku']. "','" . $data['nama_buku'] . "','" . $data['title'] . "','" . $data['size'] . "','" . $data['ekstensi'] . "','" . $data['berkas'] . "','" . $data['tgl_file'] . "','" . $data['jenis'] . "') ";

    $result = mysqli_query(koneksiDB(), $query);

    if (!$result) {
        return 0;
    } else {
        return 1;
    }
}
 ?>