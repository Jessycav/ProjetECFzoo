<!--EN-TETE-->
<?php 
require_once "../components/header.php"
  ?>

<?php

    try {
      $sql = "SELECT `animal_id`, `prenom`, `race`, `animal_image_id`, `habitat`, `etat` FROM `animaux` WHERE 'prenom' = 'prenom' LIMIT 1";
      $sth = $cx->prepare($sql);
      $sth->execute();
      $result = $sth->fetchAll();
      foreach($result as $k => $v) {
      echo " 
        <div class='card' style='width: 18rem; gap: 10px; display: flex; flex-direction: row; align-items:center;'>
        <div class='col-md-12 col-expand-lg mr-auto;'>
        <img src=../images/" . $v['animal_image_id'] ." class='card-img-top'>
        <div class='card-body text-center'>
            <h3 class='card-title'>" . $v['prenom'] ."</h3>
            <p class='card-text'>Race: " . $v['race'] ."</p>
            <p class='card-text'>Habitat: " . $v['habitat'] ."</p>
            <p class='card-text'>État de l'animal: " . $v['etat'] ."</p>
        <button id='button'><a class='nav-link' href='animaux.php'>Retour à la liste</a></button>
        </div>
        </div>
        </div>
      ";  
      } 
      }catch (PDOException $e) {
      echo "Erreur : " . $e->getMessage() . "</br>";
      die ();
    }

?>


<!--PIED DE PAGE-->
  <?php
    require_once "../components/footer.php"
  ?>

</html>