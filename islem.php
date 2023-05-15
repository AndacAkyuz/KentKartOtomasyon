<?php

ob_start();
session_start();

require 'baglan.php';

if (isset($_POST['kayit'])) {   //kayıt
    $username = $_POST['username'];
    $password = $_POST['password'];
    $password_again = $_POST['password_again'];

    if (!$username) {
        echo "Lütfen TC Kimlik Numaranızı giriniz";
    } elseif (!$password || !$password_again) {
        echo "Lütfen şifrenizi giriniz";
    } elseif ($password != $password_again) {
        echo "Girdiğiniz Şifreler Uyuşmuyor";
    } else {
        $sorgu = $db->prepare('INSERT INTO kullanıcılar (TCkimlik, sifre) VALUES (?, ?)');
        $ekle = $sorgu->execute([
            $username, $password
        ]);
        if ($ekle) {
            echo "Kayıt Başarıyla Gerçekleştirildi , Yönlendiriliyorsunuz";
            header('refresh:2;url=index.php');
        } else {
            echo "Kayıt Başarısız Bir Hata Oluştu Tekrar Kontrol Edin";
        }
    }
}

if (isset($_POST['giris'])) {  //giriş
    $username = $_POST['username'];
    $password = $_POST['password'];
    if (!$username) {
        echo "Lütfen TC Kimlik Numaranızı giriniz";
    } elseif (!$password) {
        echo "Lütfen şifrenizi giriniz";
    } else {
        $kullanici_sor = $db->prepare('SELECT * FROM kullanıcılar WHERE TCkimlik = ? AND sifre = ?');
        $kullanici_sor->execute([
            $username, $password
        ]);

        $say = $kullanici_sor->rowCount();
        if ($say == 1) {
            $_SESSION['TCkimlik'] = $username;
            echo "Başarıyla Giriş Yaptınız , Yönlendiriliyorsunuz";
            header('refresh:2;url=../kentkart.html');
        } else {
            echo "Giriş Başarısız Bir Hata Oluştu Tekrar Kontrol Edin";
        }
    }
}

?>
