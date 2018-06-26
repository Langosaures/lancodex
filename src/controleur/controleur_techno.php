<?php

function actionTechno($twig, $db){
   
        // Création d'une instance de la clasee Techno
        $Techno = new Techno($db);
        // Application de la méthode sélect
        $listeTech = $Techno->select();
        // Envoie du résultat sur la page twig

        // Création d'une instance de la clasee dino
        $Dino = new Dino($db);
        // Application de la méthode sélect
        $listeInd = $Dino->select();
        // Envoie du résultat sur la page twig

    echo $twig->render('lancodex.html.twig', array('listeTechno'=>$listeTech, 'listeIndices'=>$listeInd));
}

?>
