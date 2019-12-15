<?php

    include "connection.php";

    $operasi = $_GET["operasi"];

    switch ($operasi) {

        case "view":
            $query_tampil_buku = mysqli_query($con, "SELECT * FROM buku") or die (mysqli_error($con));
            $data_array = array();

            while ($data = mysqli_fetch_assoc($query_tampil_buku)){
                $data_array[]=$data;
            }
            echo json_encode($data_array);

        break;

        case "insert":

            $id_kategori = $_POST['id_kategori'];
            $judul_buku = $_POST['judul_buku'];
            $pengarang = $_POST['pengarang'];
            $thn_terbit = $_POST['thn_terbit'];
            $penerbit = $_POST['penerbit'];
            $isbn = $_POST['isbn'];
            $jumlah_buku = $_POST['jumlah_buku'];
            $lokasi = $_POST['lokasi'];
            $tgl_input = $_POST['tgl_input'];
            $status_buku = $_POST['status_buku'];
            
            $query_insert_data = mysqli_query($con, "INSERT INTO buku(id_kategori, judul_buku, pengarang, thn_terbit, penerbit, isbn, jumlah_buku, lokasi, thl_input, status_buku) VALUES('$id_kategori', '$judul_buku', '$pengarang', '$thn_tebit', '$penerbit', '$isbn', '$jumlah_buku', '$lokasi', '$tgl_input', '$status_buku'");

            if ($query_insert_data) {
                echo "Data berhasil Di tambahkan";
            } 
            else {
                echo "Maaf Insert Ke Dalam Database Error" . mysqli_error($con);
            }

        break;

        case "get_data_by_id":
            $id =(int)$_GET['id'];
            $query_tampil_buku_byid = mysqli_query($con, "SELECT * FROM buku WHERE id_buku='$id'") or die (mysqli_error($con));
            $data_array = array();
            $data_array = mysqli_fetch_assoc($query_tampil_buku_byid);
            echo "[" .json_encode ($data_array) . "]";

        break;

        case "update":
            $id =(int)$_GET['id'];
                                                    
            $id_kategori = $_POST['id_kategori'];
            $judul_buku = $_POST['judul_buku'];
            $pengarang = $_POST['pengarang'];
            $thn_terbit = $_POST['thn_terbit'];
            $penerbit = $_POST['penerbit'];
            $isbn = $_POST['isbn'];
            $jumlah_buku = $_POST['jumlah_buku'];
            $lokasi = $_POST['lokasi'];
            $tgl_input = $_POST['tgl_input'];
            $status_buku = $_POST['status_buku'];

            $query_update_buku = mysqli_query($con, "UPDATE anggota SET id_kategori='$id_kategori', judul_buku='$judul_buku', pengarang='$pengarang', thn_terbit='$thn_tebit', penerbit='$penerbit', isbn='$isbn', jumlah_buku='$jumlah_buku', lokasi='$lokasi', tgl_input='$tgl_input', status_buku='$status_buku' WHERE id_buku='$id'");

            if ($query_update_buku) {
                echo "Data Berhasil di update";
            }
            else {
                echo mysqli_error($con);
            }

        break;

        case "delete":
            $id = $_GET['id'];
            $query_delete_buku = mysqli_query($con, "DELETE FROM buku WHERE id_buku='$id'");
            if ($query_delete_buku) {
                echo "Data Berhasil Dihapus";
            }
            else{
                echo mysqli_error($con);
            }
        break;

        default;
        break;

}

?>