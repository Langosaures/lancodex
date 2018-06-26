<?php

class Techno{
    
    private $select;
    
    // création de nos requêtes
    public function __construct($db){
        $this->db = $db;  
        // requête permettant de sélectionner aléatoirement nos technologies
        $this->select = $db->prepare("select id, libelle, logo from technologie");
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