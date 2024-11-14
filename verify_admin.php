<?php
include 'config.php';
$stmt = $conn->query("
    SELECT u.nama AS peserta, p.nama_program AS program
    FROM user u
    JOIN peserta_program pp ON u.id = pp.id_peserta
    JOIN program p ON pp.id_program = p.id_program
    WHERE u.role = '2'
");

while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    echo "Peserta: " . htmlspecialchars($row['peserta']) . " - Program: " . htmlspecialchars($row['program']) . "<br>";
}
