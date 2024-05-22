<!--EN-TETE-->
<?php 
require_once "../components/header.php"
?>

<section id="form">
    <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
        <h2>Donner un avis</h2>
        <label for="nom">Nom</label>
        <input type="text" name="nom" placeholder="Entrer votre nom" required>
        <label for="date">Visite du</label>
        <input type="date" name="date" required>
        <label for="message">Avis</label>
        <textarea name="commentaire" cols="30" rows="10" placeholder="Ecrivez votre commentaire" required></textarea> 
        <button id="button" name="send">Envoyer</button>
    </form>

    <?php

    if (isset($_POST["nom"]) && !empty($_POST["nom"]) && isset($_POST["date"]) && !empty($_POST["date"]) && isset($_POST["commentaire"]) && !empty($_POST["commentaire"])) {

    try {
        $nom = htmlspecialchars($_POST["nom"]);
        $com = htmlspecialchars($_POST["commentaire"]);
        $date = htmlspecialchars($_POST["date"]);
        $sql = "INSERT INTO avis (avis_id, nom, date, commentaire) VALUES (NULL, :nom, :date, :commentaire)";
        $sth = $cx->prepare($sql);
        $sth->execute(array(":nom"=>$nom, ":date"=>$date, ":commentaire"=>$com));
    } catch (PDOException $e) {
        echo "Erreur : " . $e->getMessage() . "</br>";
        die ();
    }
    }
    ?>
</section>

<!--PIED DE PAGE-->
<?php
  require_once "../components/footer.php"
?>
</html>
