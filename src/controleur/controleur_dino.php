<?php

// méthode d'affichage des indices
function actionDino($twig, $db){
    $form = array(); 
    // Création d'une instancede la clasee dino
    $Dino = new Dino($db);
    // Application de la méthode sélect
    $liste = $Dino->select();
    // Envoie du résultat sur la page twig
    echo $twig->render('utilisateur.html.twig', array('form'=>$form,'listeIndices'=>$liste));
}

?>