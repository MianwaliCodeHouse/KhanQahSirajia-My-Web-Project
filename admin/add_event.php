<?php
include "checklogin.php";
if (isset($_POST["name"])) {
  
  $title = $_POST["name"];

  if (isset($_FILES["img"])) {
   
    $imgname = $_FILES["img"]["name"];
    $imgtmpname = $_FILES["img"]["tmp_name"];

    $img_explode = explode('.', $imgname);
    $img_ext = end($img_explode);
    $extensions = ["jpeg", "png", "jpg"];
    if (in_array($img_ext, $extensions) === true) {
      
      $time = time();
      $new_img_name = "mch" . $time . $imgname;
      if (move_uploaded_file($imgtmpname, "uploadImgs/" . $new_img_name)) {
        
        $img_link = "uploadImgs/" . $new_img_name;
        $q = "INSERT INTO `events`(`img`, `title`) VALUES ('$img_link','$title')";
        if (mysqli_query($db, $q)) {
          header("location: events_gallery.php");
        }
      }
    }
  }
}

?>

<!DOCTYPE html>
<html>
<head>
  <title>Add Event/Gallery</title>
  <link rel="stylesheet" href="css/form.css">
</head>
<body>
  <div class="container">
    <h2>Add Event/Gallery/News</h2>
    <form action="" method="post" enctype="multipart/form-data">
      <label for="username">Name</label>
      <input type="text" id="name" name="name" placeholder="Enter package Name" required>
      <label for="img">Image</label>
      <input type="file" name="img" id="img" accept="image/*" required>      
      
      <input type="submit" value="Add Event/Gallery/News">
    </form>
  </div>
</body>
</html>
