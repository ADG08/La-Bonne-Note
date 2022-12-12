<?php
session_start();

    include("login.php");

    if($_SERVER['REQUEST_METHOD']=="POST"){
        $prenom = $_POST['prenom'];
        $mdp= $_POST['mdp'];

        if(!empty($prenom) && !empty($mdp)){
            //sauvegarde dans la base de données
            $query = "insert into utilisateur (Prenom, mdp, email) values ('$Prenom', '$mdp', '$email')";

            mysqli_query($con,$query);

            header("Location: login.php");
            die;
        }else{
            echo "Entrez des informations valide";
        }
    }

?>