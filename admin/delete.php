<?php
include "db.php";
if (isset($_GET["target"]) && !empty($_GET["target"])) {
  $target = $_GET["target"];
  if ($target == "feedbacks") {
    $q = "DELETE FROM `feedbacks`";
    $rq = mysqli_query($db, $q);
    header("location: feedbacks.php");
  } elseif ($target == "feedback") {
    $id = $_GET["Fid"];
    $q = "DELETE FROM `feedbacks` where id=$id";
    $rq = mysqli_query($db, $q);
    header("location: feedbacks.php");
  }elseif($target=="package"){
    $id = $_GET["Pid"];
    $q="select img from pakages where id=$id;";
    $rq=mysqli_query($db,$q);
    $data=mysqli_fetch_assoc($rq);
    $imgLink=$data["img"];
    unlink($imgLink);
    $q = "DELETE FROM `pakages` where id=$id";
    $rq = mysqli_query($db, $q);
    header("location: packages.php");
  }elseif($target=="event"){
    $id = $_GET["Eid"];
    $q="select img from events where id=$id;";
    $rq=mysqli_query($db,$q);
    $data=mysqli_fetch_assoc($rq);
    $imgLink=$data["img"];
    unlink($imgLink);
    $q = "DELETE FROM `events` where id=$id";
    $rq = mysqli_query($db, $q);
    header("location: events_gallery.php");
  }
} else {
  header("location:javascript://history.go(-1)");
}
