<?php
if (isset($_GET['url'])) {
    $file = urldecode($_GET['url']);

    if (file_exists($file)) {
        header('Content-Type: application/pdf');
        header('Content-Disposition: inline; filename="' . basename($file) . '"');
        header('Content-Transfer-Encoding: binary');
        header('Accept-Ranges: bytes');
        header('Cache-Control: public, must-revalidate, max-age=0');
        header('Pragma: public');
        header('Expires: Sat, 26 Jul 1997 05:00:00 GMT');
        header('Content-Length: ' . filesize($file));

        readfile($file);
        exit;
    }
}
?>