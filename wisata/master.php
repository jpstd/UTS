<?php

include "koneksi.php";

// Menentukan metode request
$method = $_SERVER['REQUEST_METHOD'];

header('Content-Type: application/json');

switch($method) {
    case 'GET':
        $sql = "SELECT * FROM wisata";
        $stmt = $pdo->query($sql);
        $wisata = $stmt->fetchAll();
        echo json_encode($wisata);
        break;

    case 'POST':
        $data = json_decode(file_get_contents("php://input"));
        if(isset($data->destinasi) && isset($data->kategori) && isset($data->keterangan)&& isset($data->alamat)&& isset($data->biaya)) {
            $sql = "INSERT INTO wisata (destinasi, kategori, keterangan, alamat, biaya) VALUES (?, ?, ?, ?, ?)";
            $stmt = $pdo->prepare($sql);
            $stmt->execute([$data->destinasi, $data->kategori, $data->keterangan, $data->alamat, $data->biaya]);
            echo json_encode(['message' => 'Destinasi berhasil ditambahkan']);
        } else {
            echo json_encode(['message' => 'Data tidak lengkap']);
        }
        break;

    case 'PUT':
        $data = json_decode(file_get_contents("php://input"));
        if(isset($data->nomor) && isset($data->destinasi) && isset($data->kategori) && isset($data->keterangan)&& isset($data->alamat)&& isset($data->biaya)) {
            $sql = "UPDATE wisata SET destinasi=?, kategori=?, keterangan=?, alamat=?, biaya=? WHERE nomor=?";
            $stmt = $pdo->prepare($sql);
            $stmt->execute([$data->destinasi, $data->kategori, $data->keterangan, $data->alamat, $data->biaya, $data->nomor]);
            echo json_encode(['message' => 'Destinasi berhasil diperbarui']);
        } else {
            echo json_encode(['message' => 'Data tidak lengkap']);
        }
        break;

    case 'DELETE':
        $data = json_decode(file_get_contents("php://input"));
        if(isset($data->nomor)) {
            $sql = "DELETE FROM wisata WHERE nomor=?";
            $stmt = $pdo->prepare($sql);
            $stmt->execute([$data->nomor]);
            echo json_encode(['message' => 'Destinasi berhasil dihapus']);
        } else {
            echo json_encode(['message' => 'Destinasi tidak ditemukan']);
        }
        break;

    default:
        echo json_encode(['message' => 'Metode tidak dikenali']);
        break;
}

?>
