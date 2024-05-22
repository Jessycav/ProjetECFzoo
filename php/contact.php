<!--EN-TETE-->
<?php 
require_once "../components/header.php";

if(isset($_POST['send'])){
  extract($_POST);
  if(isset($email) && $email != "" && isset($title) && $title != "" && isset($message) && $message != "") {
      $to = "jessycalebouche@gmail.com";
      $subject = "Vous avez reçu un message de : ".$email;

      $message = "
        <p>Vous avez reçu un message de <strong>".$email."</strong></p>
        <p><strong>Titre :</strong>".$title."</p>
        <p><strong>Description :</strong>".$message."</p>
      ";

      $headers = "MIME-Version: 1.0" . "\r\n";
      $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";

      $headers .= 'From: <'.$email.'>' . "\r\n";

      $send = mail($to,$subject,$message,$headers);

      if($send){
        $_SESSION['success_message'] = "message envoyé";
        header("location: indexfinal.php");

      }else {
        $info = "message non envoyé";
      }
  }else {
    $info = "Veuillez remplir les champs requis";
  }
}
?>

  <?php 
    // afficher le message d'erreur
    if(isset($info)) { ?>
      <p class="request_message" style="color:red">
        <?=$info?>
      </p>
    <?php
    }
  ?>

  <?php 
    //afficher le message de succes
    if(isset($_SESSION['success_message'])) { ?>
      <p class="request_message" style="color:green">
        <?=$_SESSION['success_message']?>
      </p>
    <?php
    }
  ?>
  <section id="form">
    <form action="" method="POST">
      <h2>Contactez-nous</h2>
      <label>Email</label>
      <input type="email" name="email" placeholder="Entrer votre nom adresse mail" required>
      <label>Titre</label>
      <input type="text" name="title" placeholder="Saisir un titre" required>
      <label>Description</label>
      <textarea type="textarea" name="message" cols="30" rows="10" placeholder="Ecrivez votre message" required></textarea>
      <button id="button" name="send">Envoyer</button>
    </form> 
  </section>


<!--PIED DE PAGE-->
  <?php
    require_once "../components/footer.php"
  ?>
</html>