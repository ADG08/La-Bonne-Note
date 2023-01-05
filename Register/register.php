<?php

require('../connectSQL.php');

if(session_status() !== PHP_SESSION_ACTIVE) session_start();


$nom = isset($_POST['nom']) ? ($_POST['nom']) : '';
$prenom = isset($_POST['prenom']) ? ($_POST['prenom']) : '';
$email = isset($_POST['email']) ? ($_POST['email']) : '';
$passw = isset($_POST['passw']) ? ($_POST['passw']) : '';
$adresse = isset($_POST['adresse']) ? ($_POST['adresse']) : '';
$complement = isset($_POST['complement']) ? ($_POST['complement']) : '';
$arrondissement = isset($_POST['arrondissement']) ? ($_POST['arrondissement']) : '';
$naissance = isset($_POST['naissance']) ? ($_POST['naissance']) : '';

if (isset($_POST['check1'])) {
    $prof = 1;
} else {
    $prof = 0;
}


/*ajout dans la base de donnée*/
if (count($_POST) == 0){
    require("register.tpl");
}else{
    if (!empty($prenom) && !empty($passw) && !empty($email)) {
        $stmt = $pdo->query("INSERT INTO utilisateurs ( `IdUtilisateur`,`Nom`, `Prénom`, `Email`, `Password`) VALUES (NULL , '$nom', '$prenom', '$email', '$passw')");

        $stmt = $pdo->query("SELECT * FROM `utilisateurs` where Email='$email'");
        $row = $stmt->fetch();
        $Id = $row['IdUtilisateur'];

        $stmt = $pdo->query("INSERT INTO `infosup` (`IdUtilisateur`, `Adresse`, `Complément`, `Arrondissement`, `Naissance`, `Prof`) VALUES ('$Id', '$adresse', '$complement', '$arrondissement', '$naissance', '$prof')");


        
        $url = "../redirect.php";
        header("Location:" . $url);
    }
}
