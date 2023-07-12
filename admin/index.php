<?php
include "checklogin.php";
$home = "active";

$q="select * from pakages";
$rq=mysqli_query($db,$q);
$total_packages=mysqli_num_rows($rq);
$q="select * from pakages where category='umrah'";
$rq=mysqli_query($db,$q);
$total_umrah=mysqli_num_rows($rq);
$q="select * from pakages where category='hajj'";
$rq=mysqli_query($db,$q);
$total_hajj=mysqli_num_rows($rq);
$q="select * from events";
$rq=mysqli_query($db,$q);
$total_events=mysqli_num_rows($rq);
$q="select * from feedbacks";
$rq=mysqli_query($db,$q);
$total_feedbacks=mysqli_num_rows($rq);
$q="select * from feedbacks where status='new'";
$rq=mysqli_query($db,$q);
$total_new=mysqli_num_rows($rq);
$q="select * from feedbacks where status='read'";
$rq=mysqli_query($db,$q);
$total_read=mysqli_num_rows($rq);

?>

<!DOCTYPE html>
<html>

<head>
  <title>KhanqahSirajia's Dashboard</title>
  <link rel="stylesheet" href="css/home.css">
  <link rel="stylesheet" href="css/common.css">
</head>

<body>
  <?php include "components/sidebar.php" ?>
  <div class="welcome">
    <h1>Welcome to KhanqahSirajia's Dashboard</h1>
    <a href="logout.php">Logout</a>
  </div>
  <div class="options">
  <div class="card">
      <h3>Pakages</h3>
      <br>
      <p><big><b>Total : <?=$total_packages?></b></big></p>
      <p><b>Umrah: </b><?=$total_umrah?></p>
      <p><b>Hajj: </b><?=$total_hajj?></p>
    </div>
    <div class="card">
      <h3>Events</h3>
      <br>
      <p><big><b>Total :  <?=$total_events?></b></big></p>
    </div>
    <div class="card">
      <h3>FeedBacks</h3>
      <br>
      <p><big><b>Total :  <?=$total_feedbacks?></b></big></p>
      <p><b>New: </b> <?=$total_new?></p>
      <p><b>Read: </b> <?=$total_read?></p>
    </div>
  </div>
  <?php include "components/footer.html" ?>
</body>

</html>