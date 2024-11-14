<?php
include 'config.php';

// Ambil data dari tabel program
$stmt = $conn->query("SELECT * FROM program");
$programs = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Program Pelatihan</title>
</head>
<body>
    <h1>Program Pelatihan</h1>
    <table border="1">
        <tr>
            <th>Nama Program</th>
            <th>Deskripsi</th>
            <th>Jadwal</th>
            <th>Biaya</th>
            <th>Materi</th>
        </tr>
        <?php foreach ($programs as $program): ?>
            <tr>
                <td><?= htmlspecialchars($program['nama_program']); ?></td>
                <td><?= htmlspecialchars($program['deskripsi']); ?></td>
                <td><?= htmlspecialchars($program['jadwal']); ?></td>
                <td><?= htmlspecialchars(number_format($program['biaya'])); ?></td>
                <td><?= htmlspecialchars($program['materi']); ?></td>
            </tr>
        <?php endforeach; ?>
    </table>
</body>
</html>
