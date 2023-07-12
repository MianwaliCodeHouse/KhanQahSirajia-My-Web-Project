<?php
session_start();
include "db.php";
if(isset($_POST["username"]) && isset($_POST["password"])){
  if(!empty($_POST["username"]) && !empty($_POST["password"])){
    $admin=$_POST["username"];
    $pwd=$_POST["password"];
    $q="SELECT * FROM `admin` WHERE admin='$admin' && pwd='$pwd'";
    $rq=mysqli_query($db,$q);
    if(mysqli_num_rows($rq)==1){
      $_SESSION["admin"]=$admin;
      $_SESSION["pwd"]=$pwd;
      header("location: index.php");
    }
  }
}

?>

<!DOCTYPE html>
<html>
<head>
  <title>Admin Login</title>
  <link rel="stylesheet" href="css/login.css">
</head>
<body>
  <div class="container">
    <h2>Admin Login</h2>
    <form action="" method="post">
      <label for="username">Username</label>
      <input type="text" id="username" name="username" placeholder="Enter your username" required>
      
      <label for="password">Password</label>
      <input type="password" id="password" name="password" placeholder="Enter your password" required>
      
      <input type="submit" value="Login">
    </form>
  </div>
</body>
</html>
