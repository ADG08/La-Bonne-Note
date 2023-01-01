<?php

session_start();

$adresse = isset($_POST['adresse']) ? ($_POST['adresse']) : '';
$complement = isset($_POST['complement']) ? ($_POST['complement']) : '';
$arrondissement = isset($_POST['arrondissement']) ? ($_POST['arrondissement']) : '';
$naissance = isset($_POST['naissance']) ? ($_POST['naissance']) : '';

/*ajout dans la base de donnée*/
if (count($_POST) == 0){
    require("infos_sup.tpl");
}else{
    if (!empty($adresse) && !empty($arrondissement)) {

        $sql = "insert into infos (user_id, adresse, complement, code, naissance) values (16, :adresse, :complement, :arrondissement, :naissance)";

        $pdo = require_once '../connectSQL.php';
        $res = $pdo->prepare($sql);
        $res->execute([
            ':adresse' => $adresse,
            ':complement' => $complement,
            ':arrondissement' => $arrondissement,
            ':naissance' => $naissance,
        ]);

        $url = "../prof.html";
        header("Location:" . $url);
    }
}