<?php
function actionListeCours($twig,$db){
    // Création d'une instance de la classe dino
    $Dino = new Dino($db);
    // Application de la méthode select
    $listeInd = $Dino->select();
    //Création d'une instance de la classe cours
    $lesCours = new Cours($db);
    //Selection des cours par select
    $lesCours = $lesCours->selectCours();
    echo $twig->render('liste-cours.html.twig',array('listeIndices'=>$listeInd,'listeCours'=>$lesCours));
}

function actionLeCours($twig,$db){
    // Création d'une instance de la classe dino
    $Dino = new Dino($db);
    // Application de la méthode select
    $listeInd = $Dino->select();
    //création instance de cours
    $leCours = new Cours($db);
    //appel du cours
    $leCours = $leCours->selectUnCours($_GET['id']);
    echo $twig->render('un-cours.html.twig',array('listeIndices'=>$listeInd,'leCours'=>$leCours));
}

?>
