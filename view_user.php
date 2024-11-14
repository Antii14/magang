<?php
include 'config.php';

// Ambil data dari database
$stmt = $conn->query("SELECT * FROM user WHERE role = '2'");
$users = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Daftar Peserta</title>
</head>
<body>
    <h1>Daftar Peserta</h1>
    <table border="1">
        <tr>
            <th>Nama</th>
            <th>Alamat</th>
            <th>No Telp</th>
            <th>Email</th>
            <th>Foto</th>
        </tr>
        <?php foreach ($users as $user): ?>
            <tr>
                <td><?= htmlspecialchars($user['nama']); ?></td>
                <td><?= htmlspecialchars($user['alamat']); ?></td>
                <td><?= htmlspecialchars($user['no_telp']); ?></td>
                <td><?= htmlspecialchars($user['email']); ?></td>
                <td><img src="uploads/<?= htmlspecialchars($user['foto']); ?>" width="50"></td>
            </tr>
        <?php endforeach; ?>
    </table>
</body>
</html>
