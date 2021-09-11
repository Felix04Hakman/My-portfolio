<?php
session_start();
if((isset($_SESSION['submit']))&&($_SESSION['formularz']==true))
{
    header('Location:Stronka.html');
    exit();
}
require_once('order.php');
$db = mysqli_connect("localhost","root","","porfolio");
$sql = "INSERT INTO `formularz` (`id`, `Imie`,`Nazwisko`,`Miasto`) VALUES ('id',$imie,$nazwisko,$miasto)";
if(isset($_POST('formularz'))){
    $imie=$_POST['Imie'];
    $nazwisko=$_POST['Nazwisko'];
    $miasto=$_POST['Miasto'];
$result=(mysqli_query($db,$sql));
if(!$sql){
    echo 'Sukces!';
}else{
   echo 'Nie udało się';
}

mysqli_close($db);
}

?>