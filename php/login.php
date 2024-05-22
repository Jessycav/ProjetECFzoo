<!--EN-TETE-->
<?php 
require_once "../components/header.php";


session_start();

$valid_username = "Jose";
$valid_password = "Admin1960!";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $entered_username = $_POST["username"];
    $entered_password = $_POST["password"];

    if ($entered_username == $valid_username && $entered_password == $valid_password) {
        $_SESSION["username"] = $entered_username;
        header("Location: Bienvenue.php");
        exit();
    } else {
        echo "Invalid username or password";
    }
}
?>

<!--PIED DE PAGE-->
<?php
  require_once "../components/footer.php"
?>
</html>