<?php
// Materi 5.2 - Pengenalan PHP
echo "Hello World! <br>";

// Materi 5.3 - Variabel
$nim = "1301165454";
$nama = "Baharudin";
echo "NIM : " . $nim . "<br>";
echo "Nama : " . $nama . "<br>";

// Materi 5.4 - Konstanta
define("NAMA", "Baharuddin");
define("NIM", "1301165454");
echo "Nama : " . NAMA . "<br>";
echo "NIM : " . NIM . "<br>";

// Materi 5.5 - Operator dalam PHP
$a = 10;
$b = 5;
echo "Penambahan : " . ($a + $b) . "<br>";
echo "Pengurangan : " . ($a - $b) . "<br>";
echo "Perkalian : " . ($a * $b) . "<br>";
echo "Pembagian : " . ($a / $b) . "<br>";

// Materi 5.6 - Struktur Kondisi (IF-ELSE)
$nilai = 80;
if ($nilai >= 60) {
    echo "Lulus <br>";
} else {
    echo "Tidak Lulus <br>";
}

// Materi 5.7 - Perulangan (Looping)
echo "Perulangan for: ";
for ($i = 1; $i <= 5; $i++) {
    echo $i . " ";
}
echo "<br>";

echo "Perulangan while: ";
$j = 1;
while ($j <= 5) {
    echo $j . " ";
    $j++;
}
echo "<br>";

// Materi 5.8 - Function
function luasPersegi($sisi) {
    return $sisi * $sisi;
}

$sisiPersegi = 5;
echo "Luas Persegi dengan sisi $sisiPersegi : " . luasPersegi($sisiPersegi) . "<br>";

// Materi 5.9 - Array
$buah = array("Apel", "Jeruk", "Mangga");
echo "Buah-buahan: " . $buah[0] . ", " . $buah[1] . ", " . $buah[2] . "<br>";

// Materi 5.10 - GET dan POST (contoh sederhana)
if (isset($_GET['nama'])) {
    $nama = $_GET['nama'];
    echo "Nama yang diterima melalui GET: " . $nama . "<br>";
}

if (isset($_POST['user'])) {
    $user = $_POST['user'];
    echo "Username yang diterima melalui POST: " . $user . "<br>";
}
?>
