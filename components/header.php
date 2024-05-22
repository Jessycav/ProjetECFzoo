<!DOCTYPE html>
<html lang="fr">
  <head>
    <!-- INFORMATIONS -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zoo d'Arcadia</title>
    <meta name="title" content="Zoo d'Arcadia">
    <meta name="description" content="Le Zoo d'Arcadia possède un panel d'animaux, dans un cadre écologique et enchanteur.">
    <!-- CSS -->
    <link href="../styles/style.css" rel="stylesheet" type="text/css">
    <link href="../styles/form-style.css" rel="stylesheet" type="text/css">
    <link href="../styles/cards-style.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css2?family=Hind+Madurai:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <!--JAVASCRIPT-->
    <script src="../js/main.js"></script>
    <!--BOOTSTRAP-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </head>

  <body>
    <!--EN-TETE-->
    <header>
      <nav class="navbar navbar-expand-lg">
        <a class="navbar-brand logo" href="#">
          <img src="../images/Logo Arcadia.jpg" alt="logo Arcadia" width="100px">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" aria-current="page" href="../php/indexfinal.php">Accueil</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Le zoo en détail</a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="habitats.php">Les habitats</a>
                <a class="dropdown-item" href="animaux.php">Les animaux</a>
              </div>
            </li>
            <li class="nav-item">
              <div><a class="nav-link" href="../php/visite.php">Votre visite</a></div>
              <div><a class="nav-link" href="../php/services.php">Nos services</a></div>
              <div><a class="nav-link" href="../php/contact.php">Contact</a></div>
            </li>
          </ul>

          <div class="navbar-nav ms-auto">              
            <li id="button" class="nav-item"><a href="../php/conn_espacepro.php" class="nav-link">Espace pro</a></li>
          </div>
        </div>
      </nav>
    </header>

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
?>   