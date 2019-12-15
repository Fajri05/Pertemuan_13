<?php

    include "connection.php";

    $operasi = $_GET["operasi"];

    switch ($operasi) {

        case "view":
            $query_tampil_admin = mysqli_query($con, "SELECT * FROM admin") or die (mysqli_error($con));
            $data_array = array();

            while ($data = mysqli_fetch_assoc($query_tampil_admin)){
                $data_array[]=$data;
            }
            echo json_encode($data_array);

        break;

        case "insert":
            $nama_admin = $_POST['nama_admin'];
            $username = $_POST['username'];
            $password = $_POST['password'];
            
            $query_insert_data = mysqli_query($con, "INSERT INTO admin(nama_admin,username,password) VALUES('$nama_admin', '$username', md5('$password'))");

            if ($query_insert_data) {
                $last_id = $con->insert_id;
                echo "Data berhasil Di tambahkan. Id terakhir yang ditambahkan adalah " . $last_id;
            } 
            else {
                echo "Maaf Insert Ke Dalam Database Error" . mysqli_error($con);
            }

        break;

        case "get_data_by_id":
            $id =(int)$_GET['id'];
            $query_tampil_biodata = mysqli_query($con, "SELECT * FROM admin WHERE id_admin='$id'") or die (mysqli_error($con));
            $data_array = array();
            $data_array = mysqli_fetch_assoc($query_tampil_biodata);
            echo "[" .json_encode ($data_array) . "]";

        break;

        case "update":
            $id =(int)$_GET['id'];
                                                    
            $nama_admin = $_POST['nama_admin'];
            $username = $_POST['username'];
            $password = $_POST['password'];

            $query_update_biodata = mysqli_query($con, "UPDATE admin SET nama_admin = '$nama_admin', username='$username', password=md5('$password') WHERE id_admin='$id'");

            if ($query_update_biodata) {
                echo "Data Berhasil di update";
            }
            else {
                echo mysqli_error($con);
            }

        break;

        case "delete":
            $id = $_GET['id'];
            $query_delete_biodata = mysqli_query($con, "DELETE FROM admin WHERE id_admin='$id'");
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