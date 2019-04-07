<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Home</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/mine.css">

</head>
<body>
    <div class="tete">
    <img src="../images/National-Geographic-logo.png" alt="pic not found" width="100" class="logo"><br>
    <a href="profil.html"><button class="btn btn-info">Profil</button></a>
    <a href="connexion.html"><button class="btn btn-danger" >Deconnexion</button></a>
    </div>
    <div class="bd">
    <br><br>
    <a href="ajouttodo.html"><button class="btn btn-secondary">To Do</button></a><br><br>

    <br><br>
    <?php
    //include
    include "../php/config.php";
    //appel fonction
    $base =connect();
    $req="SELECT DESCRIPTION from todos";
    $result =$base->query($req);
    ?>
<table class="table table-dark" >
    <thead>
        <tr><th>Description</th><th>date d'ajout</th><th>action</th></tr>
    </thead>
    <tbody >
            <?php
            while($user = $result->fetchObject()){
            ?>
        <tr><td><?php echo $user->DESCRIPTION ?></td><td>11/11/2011</td><td><button class="btn btn-success">Done</button></td></tr>
        <?php }?>
    </tbody>
</table>
</div>
</body>
</html>