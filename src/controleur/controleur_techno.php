<?php

function actionTechno($twig, $db){
   
        // Création d'une instance de la classe Techno
        $Techno = new Techno($db);
        // Application de la méthode select
        $listeTech = $Techno->select();

        // Création d'une instance de la classe dino
        $Dino = new Dino($db);
        // Application de la méthode select
        $listeInd = $Dino->select();

        // Envoie du résultat sur la page twig
    echo $twig->render('lancodex.html.twig', array('listeTechno'=>$listeTech, 'listeIndices'=>$listeInd));
}

?>
