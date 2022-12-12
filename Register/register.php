<?php
<<<<<<< Updated upstream

$prenom = isset($_POST['prenom']) ? ($_POST['prenom']) : '';
$email = isset($_POST['email']) ? ($_POST['email']) : '';
$passw = isset($_POST['passw']) ? ($_POST['passw']) : '';



if (count($_POST) == 0)
    require("register.tpl");
else {


    if (!empty($prenom) && !empty($passw) && !empty($email)) {

        $sql = "insert into users (nom, email, passw, prof) values (:nom, :email, :passw, 1)";

        $pdo = require_once '../connectSQL.php';
        $res = $pdo->prepare($sql);
        $res->execute([
            ':nom' => $prenom,
            ':email' => $email,
            ':passw' => $passw,
        ]);

        $url = "../Login/login.php";
        header("Location:" . $url);
    }
}

=======
    require("register.tpl");
    require("../connectSQL.php");

    if($_SERVER['REQUEST_METHOD']=="POST"){
        $prenom = $_POST['prenom'];
        $mdp = $_POST['mdp'];
        $email = $_POST['email'];

        if(!empty($prenom) && !empty($mdp) && !empty($email)){
            //sauvegarde dans la base de données
            $query = "insert into utilisateur (Prenom, mdp, email) values ('$prenom', '$mdp', '$email')";

            mysqli_query($dns,$query);

            header("Location: ../Login/login.php");
            die;
        }else{
            echo "Entrez des informations valide";
        }
    }
?>
>>>>>>> Stashed changes
