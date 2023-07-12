<link rel="stylesheet" href="css/notification.css">
<?php
include "admin/db.php";
$q = "SELECT * FROM `notification`";
$rq = mysqli_query($db, $q);
$data = mysqli_fetch_assoc($rq);
?>
  <div class="popup">
    <button id="close">&times;</button>
    <?php
if(mysqli_num_rows($rq)==1){
  ?>
<h2><?= $data["title"] ?></h2>
    <p>
      <?= $data["msg"] ?>
    </p>
    <a href="<?= $data["link"] ?>"><?= $data["button"] ?></a>

  <?php
}else{
  ?>
<h1>No Notification yet</h1>

<?php
}
    ?>
    
  </div>

<script>
  window.addEventListener("load", function() {
    if (sessionStorage.getItem("notification") != "read") {

      document.querySelector(".popup").style.display = "block";
      sessionStorage.setItem("notification", "read");
    }
  });


  document.querySelector("#close").addEventListener("click", function() {
    document.querySelector(".popup").style.display = "none";
  });

  function show_notification() {
    document.querySelector(".popup").style.display = "block";
  }
</script>