<?php

if(session_status() !== PHP_SESSION_ACTIVE) session_start();

$prenom = isset($_POST['prenom']) ? ($_POST['prenom']) : '';
$email = isset($_POST['email']) ? ($_POST['email']) : '';
$passw = isset($_POST['passw']) ? ($_POST['passw']) : '';

/*ajout dans la base de donnée*/
if (count($_POST) == 0){
    require("register.tpl");
}else{
    if (!empty($prenom) && !empty($passw) && !empty($email)) {
        $sql = "insert into users (nom, email, passw, prof) values (:prenom, :email, :passw, 1)";

        $pdo = require_once '../connectSQL.php';
        $res = $pdo->prepare($sql);
        $res->execute([
            ':prenom' => $prenom,
            ':email' => $email,
            ':passw' => $passw,
        ]);

        $url = "infos_sup.php";
        header("Location:" . $url);
    }
}

$_SESSION = "Select user_id from USERS where email ='$email'";
$test = require_once '../connectSQL.php'; 
$RES1 = $test->prepare($_SESSION);
$RES1->Execute();
echo $RES1;