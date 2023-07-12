<?php
include "checklogin.php";
$events = "active";
?>

<!DOCTYPE html>
<html>

<head>
  <title>KhanqahSirajia's Dashboard</title>
  <link rel="stylesheet" href="css/pakages.css">
  <link rel="stylesheet" href="css/common.css">
</head>

<body>
  <?php include "components/sidebar.php" ?>

  <div class="main">
    <div class="s1">
      <div class="create">
        <a href="add_event.php">
          <img src="assets/plus.png" alt="">
        </a>
        <a href="add_event.php" style="color: black; text-decoration: none;">
          <h2>Create New Post</h2>
        </a>

      </div>
    </div>
    <div class="posts" id="postsID">
      <?php
      $q="select * from events";
      $rq=mysqli_query($db,$q);
      $rows=mysqli_num_rows($rq);
      if ($rows > 0) {
        while ($data = mysqli_fetch_assoc($rq)) {

      ?>
          <div class="post">
            <img src="<?= $data["img"] ?>" alt="img">
            <h1><?= $data["title"] ?> </h1>
         
            <a href="delete.php?target=event&&Eid=<?= $data["id"] ?>">Delete</a>
          </div>
      <?php
        }
      }
      ?>

    </div>

  </div>

  <?php include "components/footer.html" ?>
</body>

</html>