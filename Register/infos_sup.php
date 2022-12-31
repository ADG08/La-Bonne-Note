<?php

$pdo1  = require_once '../connectSQL.php';

$adresse = isset($_POST['adresse']) ? ($_POST['adresse']) : '';
$complement = isset($_POST['complement']) ? ($_POST['complement']) : '';
$arrondissement = isset($_POST['arrondissement']) ? ($_POST['arrondissement']) : '';
$naissance = isset($_POST['naissance']) ? ($_POST['naissance']) : '';
$id_user = $pdo1->lastInsertId();



/*ajout dans la base de donnée*/
if (count($_POST) == 0){
    require("infos_sup.tpl");
}else{
    if (!empty($adresse) && !empty($arrondissement)) {

        try {
            $commande = 'insert into infos (user_id, adresse, complement, code, naissance) 
                    values (:id, :adresse, :complement, :arrondissement, :naissance)';
            $bool = $commande->execute();

            if ($bool) echo 'succes';
            else ($bool) echo 'erreur sql';
        }
        catch (PDOException $err) {
             echo 'erreur connexion';
             exit();
        }

        $url = "../prof.html";
        header("Location:" . $url);
    }
}
