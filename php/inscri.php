<?php
//include
include "config.php";
//appel fonction
$base =connect();
//reccuperation des donnee
$n = $_POST['nom'];
$pn = $_POST['pnom'];
$nt = $_POST['numtel'];
$g = $_POST['genre'];
$e = $_POST['email'];
$d = $_POST['date'];
$nat = $_POST['Nationalite'];
$pw = $_POST['pw'];
$req="INSERT INTO users (ID,NOM,PRENOM,NUMTEL,GENRE,EMAIL,DATEDENAISSANCE,NATIONNALITE,INTERET,MDPASSE) VALUES (null,'$n','$pn','$nt','$g','$e','$d','$nat',null,'$pw')";
//exec INSERT , UPDATE , DELETE
//type retour exec int|boolean
//trajaa int itha requ jawha behii : int fih nbr de ligne li aamaltelhom insertion
//trajaa boolean false en cas d echec
$resp= $base->exec($req) ;
if($resp==1){
    echo "donnees jawha behi";
    header('Location: http://localhost/fw2/TP1/html/connexion.html');
    exit();
}
else{
    echo"bara thabet fel code"; 
}
?>
