<?php
include "db.php";
$q="SELECT * FROM `feedbacks` where status='new'";
$rq=mysqli_query($db,$q);
$num_feedbacks=mysqli_num_rows($rq);
if($num_feedbacks>0){
  $show=true;
}else{
  $show=false;
}

?>