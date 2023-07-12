<?php
include "admin/db.php";
session_start();
if(isset($_POST["name"]) && isset($_POST["email"]) && isset($_POST["mobile"]) && isset($_POST["msg"])){
  if(!empty($_POST["name"]) && !empty($_POST["email"]) && !empty($_POST["mobile"]) && !empty($_POST["msg"])){
  $name=$_POST["name"];
  $email=$_POST["email"];
  $mobile=$_POST["mobile"];
  $msg=$_POST["msg"];
  $q="INSERT INTO `feedbacks`(`name`, `email`, `mobile`, `msg`) VALUES ('$name','$email','$mobile','$msg')";
  $rq=mysqli_query($db,$q);
  if($rq){
    $_SESSION["msg"]="Your Message has been Submited Successfully! , We will Contact you to Guide more about us and our services as soon as possible"."$mobile";
    header("location: contact.php");
  }

}else{
  header("location: contact.php");
}
}else{
  header("location: contact.php");
}