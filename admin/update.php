<?php
include "db.php";
session_start();
if(isset($_POST["notification"])){
  if(!empty($_POST["notification"])){
    $title=$_POST["title"];
    $msg=$_POST["msg"];
    $button=$_POST["button"];
    $link=$_POST["link"];
    $id=$_POST["id"];
    settype($id,'int');
    var_dump($id);

    $q="UPDATE notification
    SET title = '$title', msg = '$msg' , link='$link' , button='$button'
    WHERE id=$id;";
    $rq=mysqli_query($db,$q);
    if($rq){
      $_SESSION["msg"]="Notification has been updated...";
      header("location: customization.php");
      
    }
  }
}

?>