<?php

class Historique{
    
    private $select;
    
    // création de nos requêtes
    public function __construct($db){
        $this->db = $db;  
        // requête permettant de sélectionner l'historique d'une personne
        $this->select = $db->prepare("select h.id as id, User, Question, t.id as idTechno from historique h, question q, technologie t where h.question=q.id and q.idTechnologie=t.id and User=:email");
        $this->insert = $db->prepare("insert into historique(User, Question) values (:idUser, :idQuestion)");  
    }

    // fonction permettant récupérer le résultat de la requête ci-dessus
    public function select($email){
        $this->select->execute(array(':email'=>$email));
        if ($this->select->errorCode()!=0){
             print_r($this->select->errorInfo());  
        }
        return $this->select->fetchAll();
    }
}

 //fonction permettant l'insertion d'un historique
    function insert($idUser, $idQuestion){
        $r = true;
        $this->insert->execute(array(':idUser'=>$idUser, ':idQuestion'=>$idTech));
        if ($this->insert->errorCode()!=0){
            print_r($this->insert->errorInfo());  
            $r=false;
        }
        return $r;
    }

?>