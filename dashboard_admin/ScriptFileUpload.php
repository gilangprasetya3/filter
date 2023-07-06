<?php 
	include 'connection.php';
	
	$kode = $_POST['kode'];
	$nama = $_POST['nama'];
	$namaFile = $_FILES['berkas']['name'];
	$x = explode(".", $namaFile);
	$ekstensiFile = strtolower(end($x));
	$ukuranFile	= $_FILES['berkas']['size'];
	$file_tmp = $_FILES['berkas']['tmp_name'];
	$tgl_file = $_POST['tanggal'];
	$jenis = $_POST['jenis'];

	// Lokasi Penempatan file
	$dirUpload = "file/";
	$linkBerkas = $dirUpload.$namaFile;

	// Menyimpan file
	$terupload = move_uploaded_file($file_tmp, $linkBerkas);

	$dataArr = array(
        'kode_buku' => $kode, 
        'nama_buku' => $nama,
        'title' => $namaFile, 
        'size' => $ukuranFile, 
        'ekstensi' => $ekstensiFile, 
        'berkas' => $linkBerkas,
		'tgl_file' => $tgl_file,
		'jenis' => $jenis,
    );

	if ($terupload && (insertData($dataArr) == 1)) {
	    echo "Upload berhasil!";
	    header("Location: library.php", true, 301);
        exit();
	} else {
	    echo "Upload Gagal!";
	    header("Location: UploadGagal.php", true, 301);
        exit();
	}

 ?>