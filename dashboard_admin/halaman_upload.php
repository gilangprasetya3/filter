<?php
session_start();
if (isset($_POST['logout'])) {
    session_destroy();
    header("Location:../index.php?message=Anda telah Logout");
}
?>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.108.0">
    <title>RSUD PASAR REBO</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/dashboard/">





    <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }

        .b-example-divider {
            height: 3rem;
            background-color: rgba(0, 0, 0, .1);
            border: solid rgba(0, 0, 0, .15);
            border-width: 1px 0;
            box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
        }

        .b-example-vr {
            flex-shrink: 0;
            width: 1.5rem;
            height: 100vh;
        }

        .bi {
            vertical-align: -.125em;
            fill: currentColor;
        }

        .nav-scroller {
            position: relative;
            z-index: 2;
            height: 2.75rem;
            overflow-y: hidden;
        }

        .nav-scroller .nav {
            display: flex;
            flex-wrap: nowrap;
            padding-bottom: 1rem;
            margin-top: -1px;
            overflow-x: auto;
            text-align: center;
            white-space: nowrap;
            -webkit-overflow-scrolling: touch;
        }
    </style>


    <!-- Custom styles for this template -->
    <link href="dashboard.css" rel="stylesheet">
</head>


<body>

    <header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
        <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3 fs-6" href="#">RSUD PS. REBO</a>
        <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <input class="form-control form-control-dark w-100 rounded-0 border-0" type="text" placeholder="Search" aria-label="Search">
        <div class="navbar-nav">
            <div class="nav-item text-nowrap">
                    <button class="nav-link px-3 btn btn-outline-dark" type="submit" name='logout'>
                        Sign Out
                    </button>
                </form>
            </div>
        </div>
    </header>

    <div class="container-fluid">
        <div class="row">
            <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
                <div class="position-sticky pt-3 sidebar-sticky">
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link" href="index.php">
                                <span data-feather="home" class="align-text-bottom"></span>
                                Home
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="library.php">
                                <span data-feather="skip-back" class="align-text-bottom"></span>
                                back
                            </a>
                   
                        </li>
                    </ul>
                </div>
            </nav>

            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                    <h1 class="h2">Upload File</h1>
                </div>
                <h2 class="mb-4 tambah">Upload File RSUD PS. REBO</h2>
                <form action="ScriptFileUpload.php" method="POST" enctype="multipart/form-data">
				<div class="mb-3">
                        <label class="form-label">Nomor</label>
                        <input type="number" class="form-control" placeholder="" name="kode" value="" placeholder="">
                    </div>
					<div class="mb-3">
                        <label class="form-label">Nama</label>
                        <input type="text" class="form-control" placeholder="" name="nama" value="" placeholder="">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Tanggal</label>
                        <input type="date" class="form-control" placeholder="" name="tanggal" value="" placeholder="">
                    </div>
					
		                <div class="mb-3">
                        <label class="form-label">Jenis Dokumen</label>
                        <select class="form-select" aria-label="Default select example" name="jenis" value="" placeholder="">
                            <option selected disabled>Pilih Jenis Dokumen</option>
                            <option value="Keputusan Direktur RSUD Pasar Rebo">Keputusan Direktur RSUD Pasar Rebo</option>
                            <option value="Surat Edaran Direktur RSUD Pasar Rebo">Surat Edaran Direktur RSUD Pasar Rebo</option>
                            <option value="SK Direktur">SK Direktur</option>
                            <option value="Peraturan Gubernur">Peraturan Gubernur</option>
                            <option value="Peraturan DPRD">Peraturan DPRD</option>
                            <option value="Peraturan Daerah">Peraturan Daerah</option>
                            <option value="Keputusan Menteri">Keputusan Menteri</option>
                            <option value="Keputusan Gubernur">Keputusan Gubernur</option>
                            <option value="Keputusan Sekretaris Daerah">Keputusan Sekretaris Daerah</option>
                            <option value="Keputusan Kepala Dinas">Keputusan Kepala Dinas</option>
                            <option value="Keputusan Kepala Biro">Keputusan Kepala Biro</option>
                            <option value="Surat Edaran Gubernur">Surat Edaran Gubernur</option>
                            <option value="Surat Edaran Kepala Daerah">Surat Edaran Kepala Daerah</option>
                            <option value="Surat Edaran">Surat Edaran</option>
                            <option value="Pengumuman Gubernur">Pengumuman Gubernur</option>
                            <option value="Seruan Gubernur">Seruan Gubernur</option>
                            <option value="Naskah Akademik">Naskah Akademik</option>
                            <option value="PPID">PPID</option>
                        </select>
                    </div>
                    <div class="mb-4">Upload File :
		<input type="file" name="berkas" accept="application/pdf">
		</div>
        <div class="mb-3">
                    <div class=" col-12">
                        <button type="submit" class="btn btn-primary mx-1">Upload</button>
                        <button type="reset" class="btn btn-warning">Reset</button>
                    </div>
                </form>
            </main>
        </div>
    </div>
    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script>
    <script src="dashboard.js"></script>
</body>
