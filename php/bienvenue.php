<?php
session_start();
$username = $_SESSION["username"]
?>

<!--EN-TETE-->
<?php 
require_once "../components/header.php"
  ?>

    <div class="welcome-container">
      <h3>Bienvenue sur votre espace, <?php echo $username; ?>!</h3>
      <p><a href="logout.php">Se déconnecter</a></p>
    </div>

       
<?php
  require_once "../components/footer.php"
?>

</html>