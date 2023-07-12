<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>KhanqahSirajia | Packages</title>
  <link rel="stylesheet" href="css/packages.css">
  <link rel="stylesheet" href="css/common.css">
  <link rel="shortcut icon" href="assets/favicon.png" type="image/x-icon">
</head>

<body>
  <?php include "component/header.html" ?>

  <main>
    <?php
    include "admin/db.php";
    $q = "SELECT * FROM `pakages` WHERE category='umrah'";
    $rq = mysqli_query($db, $q);
    if (mysqli_num_rows($rq) > 0) {
    ?>
      <h1>Umrah Packages</h1>
      <div class="packages">
        <?php
        while ($data = mysqli_fetch_assoc($rq)) {

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
    <?php
    }
    $q = "SELECT * FROM `pakages` WHERE category='hajj'";
    $rq = mysqli_query($db, $q);
    if (mysqli_num_rows($rq) > 0) {
    ?>
      <h1>Hajj Packages</h1>
      <div class="packages">
        <?php
        while ($data = mysqli_fetch_assoc($rq)) {

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
    <?php
    }

    ?>

  </main>


  <?php include "component/footer.html" ?>
</body>

</html>