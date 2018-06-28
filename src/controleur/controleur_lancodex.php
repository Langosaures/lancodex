<?php
function actionLangage($twig, $db){ // Vérif Ok
    $langage  = new Langage($db);
    $leLangage = $langage->select($_GET['id']);
    // Création d'une instance de la classe dino
    $Dino = new Dino($db);
    // Application de la méthode sélect
    $listeInd = $Dino->select();

    // Création d'une instance de la classe QR
    $QR = new QR($db);
    // Récupération de la question avec sa bonne réponse et son logo
    $listeQR = $QR->select($_GET['id']);
    //Création objet Maitrise et recup des maitrises de l'utilisateur
    $Maitrise = new Maitrise($db);
    $listeMaitrise = $Maitrise->selectUneMaitrise($_SESSION['login'], $_GET['id']);
    $id = $listeMaitrise['id']; 
    // Envoie du résultat sur la page twig
    echo $twig->render('fiche.html.twig', array('leLangage'=>$leLangage,'listeIndices'=>$listeInd, 'listeQR'=>$listeQR, 'UneMaitrise'=>$listeMaitrise, "idTechno"=>$id));
}

// méthode pour obtenir le tableau avec résultats
function resultat($db) {
    // Création d'une instance de la classe QR
    $QR = new QR($db);
    // Récupération de la question avec sa bonne réponse et son logo
    $listeQR = $QR->select($_GET['id']);

    // On complete le tableau résultat
    $resultat[0] = $listeQR[2]; // logo
    $resultat[1] = $listeQR[4]; // nom
    $resultat[2] = $listeQR[5]; // descriptif

    return $resultat;
} 

//méthodes du quizz

//méthode du logo
function actionLogo($twig, $db){
    $langage = new Langage($db);
    $leLangage = $langage->select($_GET['id']);
    $reponse['msg']="null";
    $laBonneReponse = new QR($db);
    $laBonneReponse = $laBonneReponse->selectDescTechno($_GET['id']);
    $res = new QR($db);
    $res = $res->selectRepLogo($_GET['id']);
    $element = $_GET['element'];
    $redirect = "";
    $num = 0;
    // si la personne a envoyé sa réponse
    if (isset($_POST['btAjouter'])){
          if (empty($_POST["choix"])) {
            $reponse['msg'] = "Aucune réponse sélectionné";
        } else {
            $reponse['msg'] =$_POST["choix"];
            if($reponse['msg']==$laBonneReponse[1][0]){
                $reponse=1;
                $redirect = "nom";
                $num = "&element=2";
            }else{
                $reponse=0;
            }
        }
    }
   
    // Envoie du résultat sur la page twig
    echo $twig->render('quizz.html.twig', array('element'=>$element, 'ReponsesLogo'=>$res,'langage'=>$leLangage,'reponse'=>$reponse,'id'=>$_GET['id'], 'redirect'=>$redirect, 'num'=>$num));
}


//méthode du nom
function actionNom($twig, $db){
    $langage = new Langage($db);
    $leLangage = $langage->select($_GET['id']);
    $reponse['msg']="null";
    $laBonneReponse = new QR($db);
    $laBonneReponse = $laBonneReponse->selectDescTechno($_GET['id']);
    $res = new QR($db);
    $res = $res->selectRepNom($_GET['id']);
    $element = $_GET['element'];
    $redirect = "";
    $num = 0;
    // si la personne a envoyé sa réponse
    if (isset($_POST['btAjouter'])){
          if (empty($_POST["choix"])) {
            $reponse['msg'] = "Aucune réponse sélectionné";
        } else {
            $reponse['msg'] =$_POST["choix"];
            if($reponse['msg']==$laBonneReponse[0][0]){
                $reponse=1;
                $redirect = "descriptif";
                $num ="&element=3";
            }else{
                $reponse=0;
            }
        }
    }
    // Envoie du résultat sur la page twig
    echo $twig->render('quizz.html.twig', array('element'=>$element, 'ReponsesNom'=>$res,'langage'=>$leLangage,'reponse'=>$reponse, 'redirect'=>$redirect, 'num'=>$num));

}


//méthode du descriptif
function actionDescriptif($twig, $db){
    // les réponses
    $reponse['msg']="null";
    $laBonneReponse = new QR($db);
    $laBonneReponse = $laBonneReponse->selectDescTechno($_GET['id']);
    $res = new QR($db);
    $res = $res->selectRepDesc($_GET['id']);
    $langage = new Langage($db);
    $leLangage = $langage->select($_GET['id']);
    $element = $_GET['element'];
    $redirect = "";
    $num="";
    // si la personne a envoyé sa réponse
    if (isset($_POST['btAjouter'])){
          if (empty($_POST["choix"])) {
            $reponse['msg'] = "Aucune réponse sélectionné";
        } else {
            $reponse['msg'] =$_POST["choix"];
            if($reponse['msg']==$laBonneReponse[2][0]){
                $reponse=1;
                //insertion de la nouvelle maitrise
                $insertMaitrise = new Maitrise($db);
                $exec = $insertMaitrise->insert($_SESSION['login'], $_GET['id']);
                $redirect = "lancodex";
            }else{
                $reponse=0;
            }
        }
    }
    // Envoie du résultat sur la page twig
    echo $twig->render('quizz.html.twig', array('element'=>$element, 'ReponsesDesc'=>$res,'langage'=>$leLangage,'reponse'=>$reponse, 'redirect'=>$redirect,'num'=>$num));
}


?>
