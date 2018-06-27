<?php

//tableau stockant le résultat
$resultat = array();

//méthode d'affichage des questions avec leurs réponses
function actionQR($twig, $db){

    // Création d'une instance de la classe QR
    $QR = new QR($db);
    // Récupération de la question avec sa bonne réponse et son logo
    $listeQR = $QR->select($_GET['id']);

    // Envoie du résultat sur la page twig
    echo $twig->render('lancodex.html.twig', array('listeQR'=>$listeQR,));
}


//méthode d'affichage des réponses fausses
function actionFausseRep($twig, $db){
   
    // Création d'une instance de la classe FausseRep
    $FausseRep = new QR($db);
    // Récupération les fausses réponses par question
    $listeFausseRep = $FausseRep->selectFausseRep($_GET['id']);
    // Envoie du résultat sur la page twig
    echo $twig->render('lancodex.html.twig', array('listeFausseRep'=>$listeFausseRep,));
}


//méthodes du quizz

$reponse = array();
$bool =  array();

// methode de choix des actions
function actionChoix(){
    //Récupération de l'id de l'élément
    $element = $_GET['element'];

    $res ;

    switch ($element) {
        //Si l'id est à 1 -> actionLogo
        case 1:
            $res = actionLogo();
            break;
        //Si l'id est à 2 -> actionNom
        case 2:
            $res = actionNom();
            break;
        //Si l'id est à 3 -> actionDescriptif
        case 3: 
            $res = actionDescriptif();
            break;
    }

    return $res;
}

//méthode du logo
function actionLogo($twig, $db){
    //Récupération du logo choisi
    $element = $_GET['formLogo'];
    //Vérifier que le logo est bon

    //Si bon, bool = true et reponse = logo
    //Sinon bool = false et reponse = logo
    //Ajout des valeurs dans le tableau
}


//méthode du nom
function actionNom($twig, $db){
    //Récupération du nom choisi
    //Vérifier que le logo est bon
    //Si bon, bool = true et reponse = nom
    //Sinon bool = false et reponse = nom
    //Ajout des valeurs dans le tableau
}


//méthode du descriptif
function actionDescriptif($twig, $db){
    //Récupération du descriptif choisi
    //Vérifier que le logo est bon
    //Si bon, bool = true et reponse = descriptif
    //Sinon bool = false et reponse = descriptif
    //Ajout des valeurs dans le tableau
}

//méthode de vérification
function actionCheck($twig, $db){
    // Parcours du tableau bool
    // Si toutes les cases sont à true
    // on renvoie valeur true
}

//méthode d'insertion d'une maitrise
function actionInsertMaitrise($twig, $db){
   // Initialisation d'une variable égale à la méthode check
   // Si cette variable est à true
   // On fait une insertion avec comme paramètre les cases du tableau réponse
   //FinSi
   // On vide les trois tableaux
}


?>