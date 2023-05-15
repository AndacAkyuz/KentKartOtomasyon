<?php

try {
    $db = new PDO("mysql:host=localhost; dbname=loginproje; charset=utf8", 'kentkartizmit' , 'Proje4141.');
    echo "Veritabanı bağlantısı başarılı , ";
} catch (Exception $e) {
    echo "Veritabanı bağlantısı başarısız: " . $e->getMessage();
}

?>
