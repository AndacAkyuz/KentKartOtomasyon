<?php
require '../baglan.php';

if(isset($_POST['Kart_no'])){
    $kartNo = $_POST['Kart_no'];
    
    $query = $db->prepare("SELECT * FROM kent_kart WHERE Kart_no = ? AND Bakiye = 'bakiye' AND Son_kullanma_tarihi='sonKullanmaTarihi'");
    $query->bindParam(':kartNo', $kartNo);
    $query->execute();
    
    if($query->rowCount() > 0){
        $result = $query->fetch(PDO::FETCH_ASSOC);
        $bakiye = $result['Bakiye'];
        $sonKullanmaTarihi = $result['Son_kullanma_tarihi'];
    }
    else{
        // Kart numarası veritabanında bulunamadı
        $bakiye = "Kart numarası bulunamadı";
        $sonKullanmaTarihi = "Kart numarası bulunamadı";
    }
}
else{
    // Form gönderilmedi
    $bakiye = "";
    $sonKullanmaTarihi = "";
}

?>


<!DOCTYPE html>
<html lang="tr">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no"> 
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <script src="bakiyesorgu.js"></script>  <!-- .js dosyası kullanımı -->
    <link rel="stylesheet" href="bakiyesorgu.css">  <!-- .css dosyası kullanımı -->
    <link rel="icon" href="/Photos/mini_logo.ico" type="image/x-icon"> 
    <link rel="shortcut icon" href="/Photos/mini_logo.ico" type="image/x-icon"> 
    <title>FOA Kent Kart</title> 
    <header class="header">
        <a href="#" class="logo">
          <img src="../Photos/mini_logo.ico" alt="logo">
        </a>
        <h1>FOA Kent Kart Otomasyonu</h1>
    </header>
</head>
<body>
    <br><br><br><br> 
    <a href="../kentkart.html" class="back-button">
        Geri &#8592;
    </a>
    <div>
        <form method="POST" action="">
            <label for="Kart_no">Kentkart Numarası :</label>
            <input type="text" id="Kart_no" name="Kart_no">
            <button type="submit">Getir</button>
        </form>
    </div>
    
    <table>
        <thead>
            <tr>
                <th>Bölüm</th>
                <th>Miktar</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Bakiye</td>
                <td id="Bakiye"><?php echo $bakiye; ?></td>
            </tr>
            <tr>
                <td>Son Kullanma Tarihi</td>
                <td id="Son-kullanma-tarihi"><?php echo $sonKullanmaTarihi; ?></td>
</tr>

