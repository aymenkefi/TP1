<?php
//include
include "config.php";
//appel fonction
$base =connect();
//reccuperation des donnee
$des = $_POST['des'];

$req="INSERT INTO todos (IDTODOS,DESCRIPTION,DATEAJOUT,DATEFIN,COMPLITED,IDUSER) VALUES (NULL,'$des',NULL,NULL,NULL,null)";
//exec INSERT , UPDATE , DELETE
//type retour exec int|boolean
//trajaa int itha requ jawha behii : int fih nbr de ligne li aamaltelhom insertion
//trajaa boolean false en cas d echec
$resp= $base->exec($req) ;
if($resp==1){
    echo "donnees jawha behi";
    header('Location: http://localhost/fw2/TP1/html/home.php');
    exit();
}
else{
    echo"bara thabet fel code"; 
}
?>