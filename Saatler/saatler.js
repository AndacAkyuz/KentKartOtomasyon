function getKartBakiyesi() {
    var listbox = document.getElementById('kart-listesi');
    var kartId = listbox.options[listbox.selectedIndex].value;

    var xhr = new XMLHttpRequest();

    xhr.open('POST', 'bakiye_sorgula.php', true);
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

    xhr.onload = function() {
      if (xhr.status === 200) {
        var response = JSON.parse(xhr.responseText);
        var bakiye = response.bakiye;
        document.getElementById('bakiye').textContent = bakiye;
        document.getElementById('bakiyePenceresi').style.display = 'block';
      } else {
        alert('Bir hata oluştu. Lütfen tekrar deneyin.');
      }
    };

    xhr.send('kartId=' + kartId);
  }