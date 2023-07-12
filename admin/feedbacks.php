
<?php 
include "checklogin.php";
$feedbacks="active";
?>

<!DOCTYPE html>
<html>

<head>
  <title>KhanqahSirajia's Dashboard</title>
  <link rel="stylesheet" href="css/feebacks.css">
  <link rel="stylesheet" href="css/common.css">
</head>

<body>
 <?php include "components/sidebar.php"?>
<?php
$q="SELECT * FROM `feedbacks` ORDER BY id DESC";
$rq=mysqli_query($db,$q);
$num_feedbacks=mysqli_num_rows($rq);
if($num_feedbacks>0){
  ?>
 <h1>People Feedbacks</h1>
<div class="btns">
  <a href="delete.php?target=feedbacks" class="delete-all">Delete All Feebacks</a>
</div>

<table>

<tr>
    <th>id</th>
    <th>Name</th>
    <th>Email</th>
    <th>Phone</th>
    <th>Msg</th>
    <th>status</th>
    
  </tr>

<?php
while($data=mysqli_fetch_assoc($rq)){
  ?>
<tr>
    <td><?=$data["id"]?></td>
    <td><?=$data["name"]?></td>
    <td><?=$data["email"]?></td>
    <td><?=$data["mobile"]?></td>
    <td width="400px"><?=$data["msg"]?></td>
    <td><span class="<?=$data["status"]?>"><?=$data["status"]?></span></td>
    <td><a href="delete.php?target=feedback&&Fid=<?=$data["id"]?>">Delete</a></td>
  </tr>
  <?php
}
}else{
  ?>
  <div style="color: gray; display: grid;place-content: center; min-height: 300px;text-align: center;">
<h1>No Feedbacks Found</h1>
<br>
<p>When people give feedback throught your website form then all those feebacks will show here for you... :)</p>
</div>
  <?php
}
$q="UPDATE feedbacks SET status='read' WHERE status='new'";
$rq=mysqli_query($db,$q);

?>

  
</table>
  
  <?php include "components/footer.html"?>
</body>

</html>