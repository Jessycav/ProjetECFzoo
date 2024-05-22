<!--EN-TETE-->
<?php 
require_once "../components/header.php"
  ?>

    <div class="login-container">
      <h2>Accès à l'espace professionnel</h2>
      <section id="form">
        <form action="../php/login.php" method="post">
          <label for="username">Nom utilisateur :</label>
          <input type="text" id="username" name="username" placeholder="Entrer votre nom d'utilisateur" required />

          <label for="password">Mot de passe :</label>
          <input type="password" id="password" name="password" placeholder="Entrer votre mot de passe" required />

          <button id="button" type="submit">Se connecter</button>
        </form>
      </section>
    </div>
  
    
  <?php
    require_once "../components/footer.php"
  ?>
</html>


