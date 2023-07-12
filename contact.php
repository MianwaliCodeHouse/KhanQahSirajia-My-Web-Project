<?php
session_start();
if(isset($_SESSION["msg"])){
  if(!empty($_SESSION["msg"])){
    $msg=$_SESSION["msg"];
    echo "<script>alert('$msg')</script>";
    unset($_SESSION["msg"]);
  }
}

?>


<!DOCTYPE html>
<html>
<head>
  <title>Khanqah Sirajia - Hajj & Training - Contact</title>
  <link rel="stylesheet" href="css/contact.css">
  <link rel="stylesheet" href="css/common.css">
  <link rel="shortcut icon" href="assets/favicon.png" type="image/x-icon">
</head>
<body>
  <?php include "component/header.html"?>

  <section>
    <div class="contact-info">
      <h1>Contact Information</h1>
      <p><strong>Address: <br></strong> Khanqah Sirajia Hajj & Umrah Services (PVT) Ltd.
        Safa Marwah Market, Faisal Arcade Gulbarg Chowk Mianwali (City</p>
      <p><strong>Email:<br></strong> khanqahsirajea@yahoo.com , szsaeed1970@gmail.com , anajeeb8@gmail.com , abdulrauf@khanqahsirajea.com.pk , shakeelmk@khanqahsirajea.com.pk
      </p>
      <p><strong>Phone:<br></strong> +92-459-231246 , +92-332-8542545 , +92-333-5104334 , +92-300-7280804 , +92-300-4824008</p>
      <p><strong>Social Media:</strong></p>
      <div class="icons">
        <a href="#" target="_blank"><img src="assets/whatsapp.webp" alt="Twitter"></a>
        <a href="#" target="_blank"><img src="assets/facebook.webp" alt="Facebook"></a>
        <a href="#" target="_blank"><img src="assets/instagram.webp" alt="Instagram"></a>
        <a href="#" target="_blank"><img src="assets/twiter.webp" alt="Instagram"></a>
      </div>
    </div>

    <div class="contact-form">
      <h2>Feed Back</h2>
      <form action="sndFeedback.php" method="post">
        <input type="text" name="name" placeholder="Your Name" required>
        <input type="email" name="email" placeholder="Your Email" required>
        <input type="number" name="mobile" placeholder="Your Mobile Number" required>
        <textarea name="msg" placeholder="Your Message" rows="6" required></textarea>
        <button type="submit">Send Message</button>
      </form>
    </div>
  </section>

  <div class="map" style="display:block;margin: 1rem auto;max-width: 1000px;">
  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3361.8563606803227!2d71.53039257567562!3d32.58335459385797!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39271829a5be969f%3A0xd889cd06ffc226da!2sKhanqah%20Sirajia%20Hajj%20Umrah%20Services%20Pvt%20Ltd!5e0!3m2!1sen!2s!4v1688894372179!5m2!1sen!2s" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
</div>


<?php include "component/footer.html"?>
</body>
</html>
