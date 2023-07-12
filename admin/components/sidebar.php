<?php 
include "checkFeedbacks.php";
?>
<div class="container">
  <div class="sidebar">
    <h1>Dashboard</h1>
    <a href="index.php" class="<?=$home?>">Home</a>
    <a href="packages.php" class="<?=$packages?>">Packages</a>
    <a href="events_gallery.php" class="<?=$events?>">Events/Gallery/News</a>
    <a href="feedbacks.php" class="<?=$feedbacks?>">Feedbacks<?php if($show){?> <span class="dot"></span><?php }?></a>
    <a href="customization.php" class="<?=$custom?>">Website Customization</a>
  </div>
  <div class="content">
    <div class="dynamicArea">