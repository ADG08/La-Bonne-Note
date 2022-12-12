<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inscription - La Bonne Note</title>
    <link rel="stylesheet" href="register.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/ac2f7dafa4.js" crossorigin="anonymous"></script>
</head>
<body>

    <div class="container">
        <h2>Inscription</h2>
        <div class="separer">
            <img src="https://images.pexels.com/photos/301920/pexels-photo-301920.jpeg?cs=srgb&dl=pexels-pixabay-301920.jpg&fm=jpg" alt="imgInsc">
            <form action="register.php" method="post">
                <div class="input-box">
                    <input type="text" placeholder="Entrer votre nom" name="prenom" value="<?php echo $prenom; ?>" required>
                    <i class="fa-regular fa-user icon"></i>
                </div>
                <div class="input-box">
                    <input type="text" placeholder="Entrez votre email" name="email" value="<?php echo $email; ?>" required>
                    <i class="fa-regular fa-envelope icon"></i>
                </div>
                <div class="input-box">
                    <input type="password" class="password" name="passw" placeholder="Mot de passe" value="<?php echo $passw; ?>" required>
                    <i class="fa-solid fa-lock icon"></i>
                </div>
                <div class="input-box">
                    <input type="password" class="password" placeholder="Confirmez mot de passe" required>
                    <i class="fa-solid fa-lock icon"></i>
                    <i class="fa-regular fa-eye-slash showHide"></i>
                </div>
                <div class="prof">
                    <input type="checkbox">
                    <h3>Êtes-vous un professeur ?</h3>
                </div>
                <div class="policy">
                    <input type="checkbox">
                    <h3>J'accepte les conditions d'utilisation</h3>
                </div>
                <div class="input-box boutton">
                    <input type="submit" value="S'inscrire">
                </div>
                <div class="text">
                    <h3>Déjà un compte ? <a href="#">Se connecter</a> </h3>
                </div>
            </form>
        </div>  
    </div>
    
    <script src="register.js"></script>
    
</body>
</html>