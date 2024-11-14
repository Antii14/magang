// kelola_program.php
include 'config.php';

// Tampilkan daftar program
$stmt = $conn->query("SELECT * FROM user WHERE role = '2'");
while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    echo "Nama: " . htmlspecialchars($row['nama']) . "<br>";
    echo "<a href='edit_program.php?id=".$row['id']."'>Edit</a> | ";
    echo "<a href='delete_program.php?id=".$row['id']."'>Hapus</a><br><br>";
}
