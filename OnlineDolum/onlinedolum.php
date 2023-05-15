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

<!DOCTYPE html>
<html lang="tr">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <script src="onlinedolum.js"></script>
    <link rel="stylesheet" href="onlinedolum.css">
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
    <h2>Kent Kart Bakiye Yükleme</h2>
    <form action="#" method="post" onsubmit="handleSubmit(event)">
        <label for="kartno">Kent Kart Numarası:</label>
        <input type="text" id="kartno" name="kartno" placeholder="Kent Kart Numarası" required><br><br>
        <label for="miktar">Yüklenecek Tutar:</label>
        <input type="text" id="miktar" name="miktar" placeholder="Yüklenecek Tutar" required><br><br>
        <label for="yukleme-tutari">Hazır Tutar:</label><br>
        <input type="button" id="tutar10" value="10" onclick="document.getElementById('miktar').value='10';">
        <input type="button" id="tutar20" value="20" onclick="document.getElementById('miktar').value='20';">
        <input type="button" id="tutar50" value="50" onclick="document.getElementById('miktar').value='50';">
        <input type="button" id="tutar100" value="100" onclick="document.getElementById('miktar').value='100';">
        <input type="button" id="tutar200" value="200" onclick="document.getElementById('miktar').value='200';"><br><br>
                <button type="submit">Yükle</button>
    </form>
    <div id="success-message" style="display: <?php echo isset($successMessage) ? 'block' : 'none'; ?>;">
        <?php echo $successMessage; ?>
    </div>
</body>
</html>

