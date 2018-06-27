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


        //Nouvelle objet maitrise
        $Maitrise = new Maitrise($db);

        //Récupération de toutes les maitrises de l'utilisateur
        $listeMaitrise = $Maitrise->select($_SESSION['login']);

        //Récupération de toutes les techno non maitrisées
        $listeNonMaitrise = $Maitrise->selectNonMaitrise($_SESSION['login']);

        // Envoie du résultat sur la page twig
<<<<<<< HEAD
    echo $twig->render('quizz.html.twig', array('listeTechno'=>$listeTech, 'listeIndices'=>$listeInd));
=======
    echo $twig->render('lancodex.html.twig', array('listeNonMaitrise'=>$listeNonMaitrise, 'listeIndices'=>$listeInd, 'listeMaitrise'=>$listeMaitrise));
>>>>>>> 76cce3207febbbaf15b18bba0da75572c72bb282
}

?>
