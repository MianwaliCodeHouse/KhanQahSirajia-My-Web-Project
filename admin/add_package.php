<?php
include "checklogin.php";
if (isset($_POST["name"]) && isset($_POST["days"]) && isset($_POST["category"])) {
  
  $title = $_POST["name"];
  $days = $_POST["days"];
  $category = $_POST["category"];
  print_r($_FILES);
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
        $q = "INSERT INTO `pakages`(`title`, `img`, `days`, `category`) VALUES ('$title','$img_link','$days','$category')";
        if (mysqli_query($db, $q)) {
          header("location: packages.php");
        }
      }
    }
  }
}

?>

<!DOCTYPE html>
<html>
<head>
  <title>Add Package</title>
  <link rel="stylesheet" href="css/form.css">
</head>
<body>
  <div class="container">
    <h2>Add Package</h2>
    <form action="" method="post" enctype="multipart/form-data">
      <label for="username">Name</label>
      <input type="text" id="name" name="name" placeholder="Enter package Name" required>
      <label for="img">Image</label>
      <input type="file" name="img" id="img" accept="image/*" required>
      <label for="password">Days</label>
      <input type="text" id="days" name="days" placeholder="Enter your Days" required>
      <label for="password">Category</label>
      <select name="category" id="category">
        <option value="">Seclect Category</option>
        <option value="umrah">Umrah</option>
        <option value="hajj">Hajj</option>
      </select>
      
      
      <input type="submit" value="Add Package">
    </form>
  </div>
</body>
</html>
