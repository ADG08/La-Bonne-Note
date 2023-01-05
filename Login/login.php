<?php
  session_start();

  $email = isset($_POST['email'])?($_POST['email']):'';
  $passw = isset($_POST['passw'])?($_POST['passw']):'';
  $msg = '0';

  if(count($_POST)==0)
  require("login.tpl");
  else{
    $profil = array();
    if(!verif_ident($email,$passw,$profil)){
      require("login.tpl");
      $msg = "Identifiant ou mot de passe incorrect.";
      echo '<p style="color: red; position : absolute; margin-top : 22%; margin-right : 30%">'.$msg.'</p>';
     
    }
    else{
      $_SESSION['profil'] = $profil;
      $url = "../redirect.php";
      header("Location:" . $url);
    }
  }

  function verif_ident($email,$passw,array &$profil) {
    require('../connectSQL.php');
    $sql="SELECT * FROM `users` where email=:email and passw=:passw";
    try{
      $commande = $pdo->prepare($sql);
      $commande->bindParam(':email',$email);
      $commande->bindParam(':passw',$passw);
      $bool = $commande->execute();
      if($bool) {
        $resultat = $commande->fetchAll(PDO::FETCH_ASSOC);
      }
    }
    catch (PDOException $e){
      echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
      die();
    }

    if(count($resultat)==0) return false;
    else {
      $profil = $resultat[0];
      return true;
    }
  }

?>