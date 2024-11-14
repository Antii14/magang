<?php
// config.php
$host = 'localhost'; // Ganti sesuai konfigurasi server Anda
$dbname = 'db_lembaga_pelatihan';
$username = 'root'; // Username MySQL Anda
$password = ''; // Password MySQL Anda

try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}
?>
