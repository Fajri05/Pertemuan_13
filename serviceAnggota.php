<?php

    include "connection.php";

    $operasi = $_GET["operasi"];

    switch ($operasi) {

        case "view":
            $query_tampil_anggota = mysqli_query($con, "SELECT * FROM anggota") or die (mysqli_error($con));
            $data_array = array();

            while ($data = mysqli_fetch_assoc($query_tampil_anggota)){
                $data_array[]=$data;
            }
            echo json_encode($data_array);

        break;

        case "insert":

            $username = $_POST['username'];
            $nama_anggota = $_POST['nama_anggota'];
            $gender = $_POST['gender'];
            $no_telp = $_POST['no_telp'];
            $alamat = $_POST['alamat'];
            $email = $_POST['email'];
            $password = $_POST['password'];
            
            $query_insert_data = mysqli_query($con, "INSERT INTO anggota(username,nama_anggota,gender,no_telp,alamat,email,password) VALUES('$username', '$nama_anggota', '$gender', '$no_telp', '$alamat', '$email', md5('$password'))");

            if ($query_insert_data) {
                echo "Data berhasil Di tambahkan";
            } 
            else {
                echo "Maaf Insert Ke Dalam Database Error" . mysqli_error($con);
            }

        break;

        case "get_data_by_id":
            $id =(int)$_GET['id'];
            $query_tampil_biodata = mysqli_query($con, "SELECT * FROM anggota WHERE id_anggota='$id'") or die (mysqli_error($con));
            $data_array = array();
            $data_array = mysqli_fetch_assoc($query_tampil_biodata);
            echo "[" .json_encode ($data_array) . "]";

        break;

        case "update":
            $id =(int)$_GET['id'];
                                                    
            $username = $_POST['username'];
            $nama_anggota = $_POST['nama_anggota'];
            $gender = $_POST['gender'];
            $no_telp = $_POST['no_telp'];
            $alamat = $_POST['alamat'];
            $email = $_POST['email'];
            $password = $_POST['password'];

            $query_update_biodata = mysqli_query($con, "UPDATE anggota SET username='$username', nama_anggota='$nama_anggota', gender='$gender', no_telp='$no_telp', alamat='$alamat', email='$email', password=md5('$password') WHERE id_anggota='$id'");

            if ($query_update_biodata) {
                echo "Data Berhasil di update";
            }
            else {
                echo mysqli_error($con);
            }

        break;

        case "delete":
            $id = $_GET['id'];
            $query_delete_biodata = mysqli_query($con, "DELETE FROM anggota WHERE id_anggota='$id'");
            if ($query_delete_biodata) {
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