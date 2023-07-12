<?php
session_start();
include "db.php";
if(isset($_SESSION["admin"]) && isset($_SESSION["pwd"])){
  if(!empty($_SESSION["admin"]) && !empty($_SESSION["pwd"])){
    $admin=$_SESSION["admin"];
    $pwd=$_SESSION["pwd"];
    $q="Select * from admin where admin='$admin' && pwd='$pwd'";
    $rq=mysqli_query($db,$q);
    if(mysqli_num_rows($rq)!=1){
      header("location: login.php");
    }

  }else{
    header("location: login.php");
  }
}else{
  header("location: login.php");
}

?>