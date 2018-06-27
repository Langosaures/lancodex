<?php

class QR{
    
    private $select;
    private $selectFausseRep;
    
    // création de nos requêtes
    public function __construct($db){
        $this->db = $db;  
        // requête permettant de sélectionner une question avec sa bonne réponse et son logo
        $this->select = $db->prepare("select q.id, q.libelle as question, t.logo, t.libelle as techno, r.libelle as reponse  from question q, technologie t, reponse r  where q.idTechnologie = t.id and q.idBonneReponse = r.id and id = :id");
        //requête permettant de récupérer les mauvaises réponses par question
        $this->selectFausseRep = $db->prepare("select r.libelle from reponse r, question q where q.id = r.idQuestion and r.id not in (select q.idBonneReponse from question q) and idQuestion = :id");

        }

    // fonction permettant d'exécuter la requête select
    public function select($id){
        $this->select->execute(array(':id'=>$id));
        if ($this->select->errorCode()!=0){
             print_r($this->select->errorInfo());  
        }
        return $this->select->fetch();
    }

    // fonction permettant d'exécuter la requête selectFausseRep
    public function selectFausseRep($id){
        $this->selectFausseRep->execute(array(':id'=>$id));
        if ($this->selectFausseRep->errorCode()!=0){
             print_r($this->selectFausseRep->errorInfo());  
        }
        return $this->selectFausseRep->fetch();
    }
}

?>