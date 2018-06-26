<?php

class QR{
    
    private $select;
    private $selectFausseRep;
    
    // création de nos requêtes
    public function __construct($db){
        $this->db = $db;  
        // requête permettant de sélectionner aléatoirement nos technologies
        $this->select = $db->prepare("select q.id, q.libelle as question, t.logo, t.libelle as techno, r.libelle as reponse  from question q, technologie t, reponse r  where q.idTechnologie = t.id and q.idBonneReponse = r.id");
        //requête permettant de récupérer les mauvaises réponses
        $this->selectFausseRep = $db->prepare("select r.libelle from reponse r, question q where q.id = r.idQuestion and r.id not in (select q.idBonneReponse from question q)");

        }

    // fonction permettant récupérer le résultat de la requête ci-dessus
    public function select(){
        $this->select->execute();
        if ($this->select->errorCode()!=0){
             print_r($this->select->errorInfo());  
        }
        return $this->select->fetchAll();
    }
}

?>