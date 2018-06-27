<?php
function actionLangage($twig, $db){
    $langage = new Langage($db);
    $leLangage = $langage->select($_GET['id']);
    // Création d'une instance de la clasee dino
    $Dino = new Dino($db);
    // Application de la méthode sélect
    $listeInd = $Dino->select();
    // Envoie du résultat sur la page twig
    echo $twig->render('fiche.html.twig', array('leLangage'=>$leLangage,'listeIndices'=>$listeInd));
}

?>
