<!--EN-TETE-->
<?php 
require_once "../components/header.php"
  ?>

<section>
    <h2>Nos animaux</h2>

    <?php

      try {
        $sql = "SELECT * FROM animaux WHERE 1";
        $sth = $cx->prepare($sql);
        $sth->execute();
        $result = $sth->fetchAll();
        foreach($result as $k => $v) {
          echo " 
            <div class='col-md-4 col-expand-lg m-auto'>
            <div class='card' style='width: 25rem;'>
              <img src='../images/" . $v['animal_image_id'] ."' class='card-img-top'>
              <div class='card-body text-center'>
                <h3 class='card-title'>" . $v['prenom'] ."</h3>
              <button id='button'><a class='nav-link' href='animal.php'>En savoir plus</a></button>
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
   
</section>
<!--PIED DE PAGE-->
<?php
  require_once "../components/footer.php"
?>
</html>