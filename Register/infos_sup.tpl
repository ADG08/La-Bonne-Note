<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inscription - La Bonne Note</title>
    
    <link rel="shortcut icon" href="" type="image/x-icon" />
    <link rel="stylesheet" href="is.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/ac2f7dafa4.js" crossorigin="anonymous"></script>
</head>
<body>

    <div class="container">
        <h2>Inscription</h2>
        <div class="separer">
            <div class="image">
                <img src="./img/study.jpg" alt="">
            </div>
            <form action="infos_sup.php" method="post">
                <div class="input-box">
                    <input type="text" class="adresse" placeholder="Adresse" name="adresse" value="<?php echo $adresse; ?>">
                    <i class="fa-solid fa-location-dot"></i>
                </div>
                <div class="input-box">
                    <input type="text" class="complement" placeholder="Complement d'adresse" name="complement" value="<?php echo $complement; ?>">
                    <i class="fa-solid fa-house-user"></i>
                </div>
                <div class="input-box">
                    <input type="text" class="arrondissement" placeholder="Arrondissement" name="arrondissement" value="<?php echo $arrondissement; ?>" required minlength="5" maxlength="5">
                    <i class="fa-solid fa-earth-europe"></i>
                </div>
                <div class="input-box">
                    <input type="text" class="naissance" placeholder="Format aaaa-mm-jj" name="naissance" value="<?php echo $naissance; ?>">
                    <i class="fa-solid fa-cake-candles"></i>
                </div>
                <div class="input-box boutton">
                    <input type="submit" value="Continuer">
                </div>
                <div class="text">
                    <h3>Déjà un compte ? <a href="../Login/login.php">Se connecter</a> </h3>
                </div>
            </form>
        </div>  
    </div>
    
    <script src="infos_sup.js"></script>
    
</body>
</html>