function handleSubmit(event) {
    event.preventDefault();

    fetch('url/to/submit/form', {
      method: 'POST',
      body: new FormData(event.target)
    })
    .then(response => {
      if (response.ok) {
        document.getElementById('success-message').style.display = 'block';
      } else {
        alert('Geri Bildirim Formu Başarıyla Gönderildi  ');
      }
    })
    .catch(error => {
      alert('Geri Bildirim Formu Başarıyla Gönderildi  ');
    });
  }