<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="login.css">
  <title>Login</title>
</head>

<body>
  <div class="container">
    <h1>Connexion</h1>
    <form action="login.php" method="post" class="content">
      <p>Email :</p>
      <input type="text" name="email" value="<?php echo $email; ?>">
      <p>Mot de passe :</p>
      <input type="password" name="passw" value="<?php echo $passw; ?>">
      <input type="submit" value="soumettre"></input>
    </form>
  </div>
</body>

</html>