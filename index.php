<!DOCTYPE html>
<html lang="en">
<head>
    <title>FOA Kent Kart Giriş Yap</title>
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
        <h3><span style="color: #DC143C;">Kent Kart</span> Giriş Ekranı</h3>
        <p>Lütfen TC Kimlik Numaranızı ve Şifrenizi Giriniz</p>
        </div>
        <form action="islem.php" method="post">
        <div class="login-form">
          <div class="control-group">
            <input type="text" name="username" class="login-field" placeholder="TC Kimlik Numaranız" id="login-name">
            <label class="login-field-icon fui-user" for="login-name"></label>
          </div>
          <div class="control-group">
              <input type="password" name="password" class="login-field" placeholder="Şifre" id="login-pass">
              <label class="login-field-icon fui-user" for="login-pass"></label>
          </div> 
        </div>
        <button href="index.php" name="giris" class="btn btn-primary btn-large btn-block">Giriş Yap</button>
        </form>
        <a href="kayit.php"><button href="kayit.php" class="btn btn-primary btn-large btn-block">Kayıt Ol</button></a>
       </div>
    </div>
</body>
</html>