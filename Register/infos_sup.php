<?php

$adresse = isset($_POST['adresse']) ? ($_POST['adresse']) : '';
$complement = isset($_POST['complement']) ? ($_POST['complement']) : '';
$arrondissement = isset($_POST['arrondissement']) ? ($_POST['arrondissement']) : '';
$naissance = isset($_POST['naissance']) ? ($_POST['naissance']) : '';


/*ajout dans la base de donnée*/
if (count($_POST) == 0){
    require("infos_sup.tpl");
}else{
    if (!empty($prenom) && !empty($passw) && !empty($email)) {

        $sql = "insert into infos (user_id, adresse, complement, code, naissance) values (:nom, :email, :passw, 1)";

        $pdo = require_once '../connectSQL.php';
        $res = $pdo->prepare($sql);
        $res->execute([
            ':nom' => $prenom,
            ':email' => $email,
            ':passw' => $passw,
        ]);

        $url = "../redirect.php";
        header("Location:" . $url);
    }
}
