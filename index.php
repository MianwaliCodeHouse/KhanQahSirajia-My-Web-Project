<!DOCTYPE html>
<html>
<head>
  <title>Khanqah Sirajia - Hajj & Umrah Services</title>
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/common.css">
  <link rel="stylesheet" href="css/packages.css">
  <link rel="shortcut icon" href="assets/favicon.png" type="image/x-icon">
</head>
<body>
  <?php 
    include "notification.php";
  ?>

<?php include "component/header.html"?>
<div class="display1">
  <img src="assets/hero.jpg" alt="">
  <div class="header">
    <div class="section">
      <h2>Welcome To</h2>
      <h1>Khanqah Sirajia</h1>
      <p style="max-width: 800px;"><big>Explore our website to learn more about our training programs, access important documents, stay updated with the latest news and events, discover career opportunities, get in touch with our management team, and browse through our gallery to get a glimpse of the sacred journey. <br> <br>
        Start your Hajj preparations with us and embark on a transformative experience that will deepen your connection with Allah and the holy sites of Islam.</big></p>
      <a onclick="show_notification()" class="button">Notification</a>
    </div>
  </div>
</div>
<section class="img-carousel">
  <div class="carousel-container">
    <img class="carousel-image" src="assets/first.jpg" alt="Image 1">
    <img class="carousel-image" src="assets/second.jpg" alt="Image 2">
    <img class="carousel-image" src="assets/third.jpg" alt="Image 3">
  </div>
</section>

<main>
    <?php
    $q = "SELECT * FROM `pakages`";
    $rq = mysqli_query($db, $q);
    if (mysqli_num_rows($rq) > 0) {
    ?>
      <h1>Most Recent Packages</h1>
      <div class="packages">
        <?php
        $i=1;
        while ($i<4) {
          $i=$i+1;
          $data = mysqli_fetch_assoc($rq)
        ?>
          <div class="package">
            <h2><?= $data["title"] ?></h2>
            <img src="admin/<?= $data["img"] ?>" alt="">
            <div class="pbody">
              <p><big>Visa - Included</big></p>
              <p><big>Ticket - Included</big></p>
              <p><big>Transport - Included</big></p>
              <p><big>Accomodation - Included</big></p>
              <p><big><?= $data["days"] ?> - Package</big></p>
              <a href="">Contact us</a>
            </div>
          </div>

        <?php
        }
        ?>
      </div>
      <h1><a href="packages.php" id="view-all-packages">View All Hajj & Umrah Packages</a></h1>
    <?php
    }
    ?>
</main>
<section class="hajj-umrah">
  <div class="section-image">
    <img src="assets/side.jpg" alt="Hajj Image">
  </div>
  <div class="section-content">
    <h2>Hajj & Umrah</h2>
    <p>At Khanqah Sirajia, we offer comprehensive training and guidance for performing Hajj and Umrah. Our programs ensure that all the rituals and gestures are performed correctly and in accordance with the rules and regulations.</p>
    <p>Embark on this spiritual journey to the holy sites of Islam and experience the profound connection with Allah. Our experienced team is dedicated to providing the necessary knowledge and support to make your Hajj and Umrah pilgrimage a memorable and transformative experience.</p>
  </div>
</section>

<div class="two-sections">
  <section style="max-width: 500px;">
    <h2>About Us</h2>
    <p>At Khanqah Sirajia, we are dedicated to providing comprehensive training and guidance for performing Hajj, ensuring that all the gestures are performed correctly and in accordance with the rules and regulations. Our aim is to make your Hajj experience a spiritually fulfilling and memorable journey.</p>
    
  </section>
  <section style="width: 50%;">
    <h2>Contact Us</h2>
    <p>Feel Free to Contact Us for any query.</p>
    <p><a href="#" target="_blank"><img src="assets/whatsapp.webp" alt="Twitter"></a>
      <a href="#" target="_blank"><img src="assets/facebook.webp" alt="Facebook"></a>
      <a href="#" target="_blank"><img src="assets/instagram.webp" alt="Instagram"></a>
      <a href="#" target="_blank"><img src="assets/twiter.webp" alt="Instagram"></a></p>
  </section>
  </div>
  <?php include "component/footer.html"?>
</body>
<script src="js/script.js"></script>
</html>
