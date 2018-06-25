<?php

function actionAccueil($twig, $db){
    $form = array(); 
    $form['valide'] = true;
    if (isset($_POST['btConnecter'])){
        $inputEmail = $_POST['inputEmail'];
        $inputPassword = $_POST['inputPassword'];  
        $utilisateur = new Utilisateur($db);
        $unUtilisateur = $utilisateur->connect($inputEmail);
        if ($unUtilisateur!=null){
          if(!password_verify($inputPassword,$unUtilisateur['mdp'])){
              $form['valide'] = false;
              $form['message'] = 'Login ou mot de passe incorrect';
          }  
          else{
           $_SESSION['login'] = $inputEmail;     
           $_SESSION['role'] = $unUtilisateur['idRole'];
           header("Location:index.php");
          } 
        }
        else{
           $form['valide'] = false;
           $form['message'] = 'Login ou mot de passe incorrect';
          
        }
    }
    echo $twig->render('index.html.twig', array('form'=>$form));
}

function actionConnexion($twig, $db){
    $form = array(); 
    $form['valide'] = true;
    if (isset($_POST['btConnecter'])){
        $inputEmail = $_POST['inputEmail'];
        $inputPassword = $_POST['inputPassword'];  
        $utilisateur = new Utilisateur($db);
        $unUtilisateur = $utilisateur->connect($inputEmail);
        if ($unUtilisateur!=null){
          if(!password_verify($inputPassword,$unUtilisateur['mdp'])){
              $form['valide'] = false;
              $form['message'] = 'Login ou mot de passe incorrect';
          }  
          else{
           $_SESSION['login'] = $inputEmail;     
           $_SESSION['role'] = $unUtilisateur['idRole'];
           header("Location:index.php");
          } 
        }
        else{
           $form['valide'] = false;
           $form['message'] = 'Login ou mot de passe incorrect';
          
        }
    }
    echo $twig->render('connexion.html.twig', array('form'=>$form));
}

function actionDeconnexion($twig){
    session_unset();
    session_destroy();
    header("Location:index.php");
}

function actionInscrire($twig, $db){
    $form = array(); 
    if (isset($_POST['btInscrire'])){
      $inputEmail = $_POST['inputEmail'];
      $inputPassword = $_POST['inputPassword']; 
      $inputPassword2 =$_POST['inputPassword2']; 
      $nom = $_POST['nom']; 
      $prenom =$_POST['prenom']; 
      $role = 2; // Signifie que par défaut, une personne est un simple utilisateur
      $form['valide'] = true;
      if ($inputPassword!=$inputPassword2){
        $form['valide'] = false;  
        $form['message'] = 'Les mots de passe sont différents';
      }
      else{
        $utilisateur = new Utilisateur($db); 
        $exec = $utilisateur->insert($inputEmail, password_hash($inputPassword, PASSWORD_DEFAULT), $role, $nom, $prenom);
        if (!$exec){
          $form['valide'] = false;  
          $form['message'] = 'Problème d\'insertion dans la table utilisateur '; 
       
        }
      }
      
      $form['email'] = $inputEmail;
      $form['role'] = $role;
      
    }
    echo $twig->render('inscrire.html.twig', array('form'=>$form));
}

function actionMentions($twig){
    echo $twig->render('mentions.html.twig', array());
}

function actionApropos($twig){
    echo $twig->render('apropos.html.twig', array());
}

function actionMaintenance($twig){
    echo $twig->render('maintenance.html.twig', array());
}
?>
