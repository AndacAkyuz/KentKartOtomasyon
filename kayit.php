<?php
require 'baglan.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title> Giriş Yap</title>
    <link rel="stylesheet" type="text/css" href="giris.css"> 
</head>
<body>
<style>
        body {
            background-image: url("../Photos/kocaeli.jpg");
            background-size: cover;
        }
    </style>
   <div class ="login">
       <div class="login-screen">
        <div class="app-title">
        <h1>Kayıt Ol</h1>
        </div>
        <form action="islem.php" method="post"> 
        <div class="login-form">
          <div class="control-group">
            <input type="text" name="username" class="login-field" placeholder="TC Kimlik Numarası" id="login-name">
            <label class="login-field-icon fui-user" for="login-name"></label>
          </div>
          <div class="control-group">
              <input type="password" name="password" class="login-field" placeholder="Şifre" id="login-pass">
              <label class="login-field-icon fui-user" for="login-pass"></label>
          </div>
          <div class="control-group">
              <input type="password" name="password_again" class="login-field" placeholder="Tekrar Şifre" id="login-pass">
              <label class="login-field-icon fui-user" for="login-pass"></label>
          </div>
          <button href="kayit.php" name="kayit" class="btn btn-primary btn-large btn-block">Kayıt Ol</button>
        </div>
        </form>
        <a href=""><button href="index.php" class="btn btn-primary btn-large btn-block">Giriş Yap</button></a>
       </div>
    </div>
</body>
</html>