<?php

class QR{
    
    private $select;
    private $selectRepLogo;
    private $selectRepNom;
    private $selectRepDesc;
    
    // création de nos requêtes
    public function __construct($db){
        $this->db = $db;  
        // requête permettant de sélectionner une question avec sa bonne réponse et son logo
        $this->select = $db->prepare("select q.id, q.libelle, t.logo as logo, t.libelle as techno, r.libelle as reponse from question q, technologie t, reponse r  where q.idTechnologie = t.id and q.idBonneReponse = r.id and t.id = :id");
        //requête permettant de récupérer les  réponses du logo
        $this->selectRepLogo = $db->prepare("select q.idTechnologie as tech, r.libelle as reponse, t.logo as logo, r.type as type from reponse r, technologie t, question q where q.id = r.idQuestion and q.idTechnologie = t.id and idTechnologie = :id and type='logo'");
        //requête permettant de récupérer les  réponses du nom
        $this->selectRepNom = $db->prepare("select r.libelle as reponse, t.logo as logo, r.type as type from reponse r, technologie t, question q where q.id = r.idQuestion and q.idTechnologie = t.id and idTechnologie = :id and type='nom'");
        //requête permettant de récupérer les  réponses du logo
        $this->selectRepDesc = $db->prepare("select r.libelle as reponse, t.logo as logo, r.type as type from reponse r, technologie t, question q where q.id = r.idQuestion and q.idTechnologie = t.id and idTechnologie = :id and type='description'");
        }

    // fonction permettant d'exécuter la requête select
    public function select($id){
        $this->select->execute(array(':id'=>$id));
        if ($this->select->errorCode()!=0){
             print_r($this->select->errorInfo());  
        }
        return $this->select->fetch();
    }

    // fonction permettant d'exécuter la requête selectRepLogo
    public function selectRepLogo($id){
        $this->selectRepLogo->execute(array(':id'=>$id));
        if ($this->selectRepLogo->errorCode()!=0){
             print_r($this->selectRepLogo->errorInfo());  
        }
        return $this->selectRepLogo->fetchAll();
    }

    // fonction permettant d'exécuter la requête selectRepNom
    public function selectRepNom($id){
        $this->selectRepNom->execute(array(':id'=>$id));
        if ($this->selectRepNom->errorCode()!=0){
             print_r($this->selectRepNom->errorInfo());  
        }
        return $this->selectRepNom->fetchAll();
    }

    // fonction permettant d'exécuter la requête selectRepDesc
    public function selectRepDesc($id){
        $this->selectRepDesc->execute(array(':id'=>$id));
        if ($this->selectRepDesc->errorCode()!=0){
             print_r($this->selectRepDesc->errorInfo());  
        }
        return $this->selectRepDesc->fetchAll();
    }
}

?>