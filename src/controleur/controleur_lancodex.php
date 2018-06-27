<?php
function actionLangage($twig, $db){
    $langage = new Langage($db);
    $leLangage = $langage->select($_GET['id']);
    // Création d'une instance de la classe dino
    $Dino = new Dino($db);
    // Application de la méthode sélect
    $listeInd = $Dino->select();

    // Création d'une instance de la classe QR
    $QR = new QR($db);
    // Récupération de la question avec sa bonne réponse et son logo
    $listeQR = $QR->select($_GET['id']);

    // On complete le tableau résultat
    $resultat[0] = $listeQR[2]; // logo
    $resultat[1] = $listeQR[3]; // nom
    $resultat[2] = $listeQR[4]; // descriptif

    // Envoie du résultat sur la page twig
    echo $twig->render('fiche.html.twig', array('leLangage'=>$leLangage,'listeIndices'=>$listeInd, 'listeQR'=>$listeQR));
}


//tableau stockant le résultat
$resultat = array();

//méthodes du quizz

$tabReponse = array();
$tabBool =  array();


//méthode du logo
function actionLogo($twig, $db){
    // les réponses
    $res = new QR($db);
    $res = $res->selectRepLogo($_GET['id']);

    $bool;
    $reponse;
    $element = $_GET['element'];
    // si la personne a envoyé sa réponse
    if (isset($_POST['formulaireLogo'])){
        //Récupération du logo choisi
        $element = $_GET['Logo'];
        //Vérifier que le logo est bon
        //Si bon, bool = true et reponse = logo
        if ($element == $resultat[0]) {
            $bool = true;
            $reponse = $element;
        }
        //Sinon bool = false et reponse = logo
        else {
            $bool = false;
            $reponse = $element;
        }
        //Ajout des valeurs dans le tableau
        $tabBool[0] = $bool;
        $tabReponse[0] = $reponse;
    }

    // Envoie du résultat sur la page twig
    echo $twig->render('quizz.html.twig', array('element'=>$element, 'ReponsesLogo'=>$res));
}


//méthode du nom
function actionNom($twig, $db){
    // les réponses
    $res = new QR($db);
    $res = $res->selectRepNom($_GET['id']);

    $bool;
    $reponse;
    $element = $_GET['element'];
    // si la personne a envoyé sa réponse
    if (isset($_POST['formulaireNom'])){
        //Récupération du Nom choisi
        $element = $_GET['formNom'];
        //Vérifier que le Nom est bon
        //Si bon, bool = true et reponse = Nom
        if ($element == $resultat[1]) {
            $bool = true;
            $reponse = $element;
        }
        //Sinon bool = false et reponse = Nom
        else {
            $bool = false;
            $reponse = $element;
            }
        //Ajout des valeurs dans le tableau
        $tabBool[1] = $bool;
        $tabReponse[1] = $reponse;
    }

    // Envoie du résultat sur la page twig
    echo $twig->render('quizz.html.twig', array('element'=>$element, 'ReponsesNom'=>$res));

}


//méthode du descriptif
function actionDescriptif($twig, $db){

    // les réponses
    $res = new QR($db);
    $res = $res->selectRepDesc($_GET['id']);

    $bool;
    $reponse;
    $element = $_GET['element'];
    // si la personne a envoyé sa réponse
    if (isset($_POST['formulaireDescriptif'])){
        //Récupération du Descriptif choisi
        $element = $_GET['formDesc'];
        //Vérifier que le Descriptif est bon
        //Si bon, bool = true et reponse = Descriptif
        if ($element == $resultat[2]) {
            $bool = true;
            $reponse = $element;
        }
        //Sinon bool = false et reponse = Descriptif
        else {
            $bool = false;
            $reponse = $element;
        }
        //Ajout des valeurs dans le tableau
        $tabBool[2] = $bool;
        $tabReponse[2] = $reponse;
    }

    // Envoie du résultat sur la page twig
    echo $twig->render('quizz.html.twig', array('element'=>$element, 'ReponsesDesc'=>$res));
}

//méthode de vérification
function actionCheck(){
    $i;
    $val ;
    // Parcours du tableau bool
    for ($i = 0; sizeof($tabBool); $i++){
        // Si la réponse est bonne
        if ($tabReponse[$i] == $resultat[$i]){
            // val est à true
            $val = true;
        } else { // sinon
            // val est à false
            $val = false;
            // on retourne val
            return $val;
        }
    }
    //On renvoie val = true
    return $val;
}

//méthode d'insertion d'une maitrise
function actionInsertMaitrise(){
   // Initialisation d'une variable égale à la méthode check
   $res = actionCheck(); // on obtient une valeur booléenne
   // Si cette variable est à true
   if ($res == true){
        // On fait une insertion avec comme paramètre les cases du tableau réponse
        $maitrise = new Maitrise($db); 
        $exec = $maitrise->insert($_SESSION['login'], $_GET['id']);
   }
   // On vide les trois tableaux
   $resultat = array();
   $tabReponse = array();
   $tabBool = array();
}
?>