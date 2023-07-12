
<?php 
include "checklogin.php";
$custom="active";


$q = "SELECT * FROM `notification`";
$rq = mysqli_query($db, $q);
$data = mysqli_fetch_assoc($rq);

if(isset($_SESSION["msg"])){
  if(!empty($_SESSION["msg"])){
    $msg=$_SESSION["msg"];
    unset($_SESSION["msg"]);
    echo "<script>alert('$msg')</script>";
  }
}
?>

<!DOCTYPE html>
<html>

<head>
  <title>KhanqahSirajia's Dashboard</title>
  <link rel="stylesheet" href="css/custom.css">
  <link rel="stylesheet" href="css/common.css">
</head>

<body>
 <?php include "components/sidebar.php"?>
  <div class="notification">
    <h1>Notification</h1>
    <form action="update.php" method="post">
      <p><big>Heading</big></p>
      <input type="text" name="title" value="<?=$data["title"]?>">
      <p><big>Message</big></p>
      <textarea name="msg" id="" cols="30" rows="10"><?=$data["msg"]?></textarea>
      <p><big>Button Text</big></p>
      <input type="text" name="button" value="<?=$data["button"]?>">
      <p><big>link</big></p>
      <input type="text" name="link" value="<?=$data["link"]?>">
      <input type="number" name="id" value="<?=$data["id"]?>" hidden>
      <div class="submit">
        <input type="submit" name="notification" value="Update Notication">
      </div>
    </form>
  </div>
  <?php include "components/footer.html"?>
</body>

</html>