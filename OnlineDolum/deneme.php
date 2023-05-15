<?php
require '../baglan.php';

if (isset($_POST['kartno']) && isset($_POST['miktar'])) {
    $kartNo = $_POST['kartno'];
    $miktar = $_POST['miktar'];

    $query = $db->prepare("UPDATE kent_kart SET Bakiye = Bakiye + :miktar WHERE Kart_no = :kartNo");
    $query->bindParam(':miktar', $miktar);
    $query->bindParam(':kartNo', $kartNo);
    $query->execute();

    $successMessage = "Bakiye Başarıyla Yüklendi";
}
?>
