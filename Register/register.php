<?php

$prenom = isset($_POST['prenom']) ? ($_POST['prenom']) : '';
$email = isset($_POST['email']) ? ($_POST['email']) : '';
$passw = isset($_POST['passw']) ? ($_POST['passw']) : '';



if (count($_POST) == 0){
    require("register.tpl");
}else{
    if (!empty($prenom) && !empty($passw) && !empty($email)) {

        $sql = "insert into users (nom, email, passw, prof) values (:nom, :email, :passw, 1)";

        $pdo = require_once '../connectSQL.php';
        $res = $pdo->prepare($sql);
        $res->execute([
            ':nom' => $prenom,
            ':email' => $email,
            ':passw' => $passw,
        ]);

        $url = "infos_sup.html";
        header("Location:" . $url);
    }
}

