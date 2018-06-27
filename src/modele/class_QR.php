<?php

class QR{
    
    private $select;
    private $selectRep;
    
    // création de nos requêtes
    public function __construct($db){
        $this->db = $db;  
        // requête permettant de sélectionner une question avec sa bonne réponse et son logo
        $this->select = $db->prepare("select q.id, q.libelle, t.logo as logo, t.libelle as techno, r.libelle as reponse from question q, technologie t, reponse r  where q.idTechnologie = t.id and q.idBonneReponse = r.id and q.id = :id");
        //requête permettant de récupérer les  réponses par question
        $this->selectRep = $db->prepare("select r.libelle as reponse, t.logo as logo from reponse r, technologie t, question q where q.id = r.idQuestion and q.idTechnologie = t.id and idQuestion = :id");

        }

    // fonction permettant d'exécuter la requête select
    public function select($id){
        $this->select->execute(array(':id'=>$id));
        if ($this->select->errorCode()!=0){
             print_r($this->select->errorInfo());  
        }
        return $this->select->fetch();
    }

    // fonction permettant d'exécuter la requête selectRep
    public function selectRep($id){
        $this->selectRep->execute(array(':id'=>$id));
        if ($this->selectRep->errorCode()!=0){
             print_r($this->selectRep->errorInfo());  
        }
        return $this->selectRep->fetchAll();
    }
}

?>