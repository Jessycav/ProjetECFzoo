<!--EN-TETE-->
<?php 
  require_once "../components/header.php"
?>
<?php
if (getenv('JAWSDB_URL') !== false) {
  $dbparts = parse_url(getenv('JAWSDB_URL'));

  $hostname = $dbparts['host'];
  $username = $dbparts['user'];
  $password = $dbparts['pass'];
  $database = ltrim($dbparts['path'],'/');
} else {
  $username = 'root';
  $password = '';
  $database = 'arcadiajv';
  $hostname = 'localhost';
}
?>

  <!-- CONTENU -->  
  <div id="carouselIndicators" class="carousel slide">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#carouselIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#carouselIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#carouselIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="../images/animaux/elephant1.jpg" class="d-block w-100" alt="Photo des éléphants du zoo d'Arcadia">
      </div>
      <div class="carousel-item">
        <img src="../images/animaux/tigre3.png" class="d-block w-100" alt="Photo de Fu le tigre du zoo d'Arcadia">
      </div>
      <div class="carousel-item">
        <img src="../images/animaux/flamrose3.png" class="d-block w-100" alt="Photo des flamants roses du zoo d'Arcadia">
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselIndicators" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselIndicators" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
  <div>
        <h1>Bienvenue à Arcadia</h1>
  </div>

  <section>
    <span id="slogan">Venez vivre une aventure magique en forêt de Brocéliande</span>
  </section>

  <div>
    <span class=button_scroll><img src="../images/bouton scroll.svg" alt="bouton de défilement"></span>
  </div>


  <div class="cards">
    <article class="card">
      <header>
        <h3><a href="habitats.php">Le zoo en détail</a></h3>
      </header>
      <img src="../images/animaux/orangoutan1.jpg" alt="Photo de Louis, notre orang-outan">
      <div class="content">
        <p>Répartis en 3 habitats (savane, jungle, marais), venez découvrir nos merveilleux animaux</p>
      </div>

    </article>

    <article class="card">
      <header>
        <h3><a href="visite.php">Votre visite</a></h3>
      </header>
      <img src="../images/photos_services/Photo_accueil.jpg" alt="Photo de l'accueil du zoo">
      <div class="content">
        <p>Retrouvez toutes les informations vous permettant une visite fantastique</p>
      </div>

    </article>

    <article class="card">
      <header>
        <h3><a href="services.php">Nos services</a></h3>
      </header>
      <img src="../images/photos_services/aire_pique_nique.jpg" alt="Photo de l'aire de pique-nique">
      <div class="content">
        <p>Profitez des services de restauration et de découverte proposés par notre parc</p>
      </div>

    </article>
  </div>  

  <hr>
   
    <h3>Les avis de nos visiteurs<h3>  
      <button id="button" name="send"><a class="nav-link" href="avis.php">Laisser un avis</a></button>
     
        <?php

          $user = "root";
          $pwd = "";
          $db = "mysql:host=localhost;dbname=arcadiajv";

          try {
              $cx = new PDO($db, $user, $pwd) or die();
              $cx->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
          } catch (PDOException $e) {
              echo "Une erreur est survenue lors de la connexion : " . $e->getMessage() . "</br>";
              die ();
          }
          try {

            $sql = "SELECT * from avis";
            $sth = $cx->prepare($sql);
            $sth->execute();
            $result = $sth->fetchAll();
            foreach($result as $k => $v) {
              echo "<div class=\"avis\">
              <div class=\"avis-nom\" style=\"color: #074D1F\">" . $v['nom'] ."</div> 
              <p class=\"avis-date\">" . $v['date'] ."</p>
              <p class=\"avis\">" . $v['commentaire'] ."</p>
              </div>";
          }
          }catch (PDOException $e) {
            echo "Erreur : " . $e->getMessage() . "</br>";
            die ();
          }
        ?>      
  <hr>
  
<!--PIED DE PAGE-->
<?php
  require_once "../components/footer.php"
?>

</html>