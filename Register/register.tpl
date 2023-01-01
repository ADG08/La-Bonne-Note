<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inscription - La Bonne Note</title>
    
    <link rel="shortcut icon" href="" type="image/x-icon" />
    <link rel="stylesheet" href="register.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/ac2f7dafa4.js" crossorigin="anonymous"></script>
</head>
<body>

    <div class="container">
        <h2>Inscription</h2>
        <div class="separer">
            <div class="image">
                <img src="https://images.pexels.com/photos/301920/pexels-photo-301920.jpeg?cs=srgb&dl=pexels-pixabay-301920.jpg&fm=jpg" alt="imgInsc">
            </div>
            <form name="formulaire" action="register.php" method="post">
                <div class="input-box">
                    <input type="text" placeholder="Entrez votre nom" name="prenom" value="<?php echo isset($_SESSION['prenom']); ?>" required>
                    <i class="fa-regular fa-user icon"></i>
                </div>
                <div class="input-box">
                    <input type="email" class="email" placeholder="Entrez votre email" name="email" value="<?php echo isset($_SESSION['email']); ?>" required>
                    <i class="fa-regular fa-envelope icon"></i>
                </div>
                <div class="input-box">
                    <input type="password" pattern=".{8,}" class="motdepasse" placeholder="Mot de passe" name="passw" value="<?php echo isset($_SESSION['passw']); ?>" required>
                    <i class="fa-solid fa-lock icon"></i>
                </div>
                <div class="input-box">
                    <input type="password" class="motdepasse2" placeholder="Confirmez mot de passe" required>
                    <i class="fa-solid fa-lock icon"></i>
                    <i class="fa-regular fa-eye-slash showHide"></i>
                </div>
                <div class="prof">
                    <input type="checkbox">
                    <h3>Êtes-vous un professeur ?</h3>
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
    
    <script src="register.js"></script>
    
</body>
</html>