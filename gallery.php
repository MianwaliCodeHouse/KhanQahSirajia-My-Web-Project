<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Khanqah Sirajia - Hajj & Training - Gallery</title>
  <link rel="stylesheet" href="css/gallery.css">
  <link rel="stylesheet" href="css/common.css">
  <link rel="shortcut icon" href="assets/favicon.png" type="image/x-icon">
</head>
<body>
  
<?php include "component/header.html"?>

  <h1>Experience the Spirit of Hajj</h1>
  <p>Our Gallery page offers a visual journey through the sacred pilgrimage of Hajj. Explore a collection of captivating photographs and videos that capture the essence, beauty, and spiritual significance of this remarkable journey.

    Browse through the gallery to witness the diversity of pilgrims, the devotion displayed during rituals, the grandeur of the holy sites, and the sense of unity that permeates the entire experience. These visual representations aim to inspire and connect you with the profound spiritual aspects of Hajj.</p>
    <?php
include "admin/db.php";
$q = "SELECT * FROM `events`";
$rq = mysqli_query($db, $q);
if (mysqli_num_rows($rq) > 0) {
    ?>
    <h1>Events/Gallery/News</h1>
  <div class="gallerySection">
    <?php
while($data=mysqli_fetch_assoc($rq)){

    ?>
    <div class="responsive">
      <div class="gallery">
        <a target="_blank" href="admin/<?=$data["img"]?>">
          <img src="admin/<?=$data["img"]?>" alt="<?=$data["title"]?>" width="600" height="400">
        </a>
        <div class="desc"><?=$data["title"]?></div>
      </div>
    </div>
    <?php
}
?>

    <div class="clearfix"></div>
  </div>
  <?php
}
?>
  <p><b>Please note that the images and videos featured in the gallery are for illustrative purposes only and may not reflect the exact experience you will have during your Hajj pilgrimage. The gallery serves as a glimpse into the transformative journey that awaits you.

    Immerse yourself in the spirit of Hajj through our gallery and let it ignite your anticipation for this sacred endeavor.</b></p>

    <?php include "component/footer.html"?>
</body>
</html>