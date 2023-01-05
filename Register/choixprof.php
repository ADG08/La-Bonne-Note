<?php

require('../connectSQL.php');

if(session_status() !== PHP_SESSION_ACTIVE) session_start();


$matiere = isset($_POST['matiere']) ? ($_POST['matiere']) : '';
$niveau = isset($_POST['niveau']) ? ($_POST['niveau']) : '';
$id = isset($_SESSION['profil']['IdUtilisateur'])?($_SESSION['profil']['IdUtilisateur']):'';


/*ajout dans la base de donnée*/
if (count($_POST) == 0){
    require "choixprof.tpl";
}else{
        $stmt = $pdo->query("INSERT INTO `infoprof`(`IdProf`, `IdNiveau`, `IdMatiere`) VALUES('2', '$niveau', '$matiere')");
        $url = "../Login/login.php";
        header("Location:" . $url);
    
}
