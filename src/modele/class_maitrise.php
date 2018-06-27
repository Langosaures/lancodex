<?php

class Maitrise{
    
    private $select;
    private $insert;
    
    // création de nos requêtes
    public function __construct($db){
        $this->db = $db;  
        // requête permettant de récupérer les maitrises d'un utilisateur
        $this->select = $db->prepare("select u.prenom as prenom, u.nom as nom, t.libelle as techno from maitrise m, technologie t, utilisateur u where u.email = m.idUtilisateur and t.id = m.idTechnologie u.email = :email");
        $this->insert = $db->prepare("insert into maitrise(idUtilisateur, idTechnologie) values (:idUser, :idTech)");   
        }

    // fonction permettant récupérer le résultat de la requête ci-dessus
    public function select($email){
        $this->select->execute(array(':email'=>$email));
        if ($this->select->errorCode()!=0){
             print_r($this->select->errorInfo());  
        }
        return $this->select->fetchAll();
    }

    //fonction permettant l'insertion d'une maitrise
    public function insert($idUser, $idTech){
        $r = true;
        $this->insert->execute(array(':idUser'=>$idUser, ':idTech'=>$idTech));
        if ($this->insert->errorCode()!=0){
             print_r($this->insert->errorInfo());  
             $r=false;
        }
        return $r;
    }
}

?>