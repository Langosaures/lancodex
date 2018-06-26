<?php

class Dino{
    
    private $select;
    
    // création de nos requêtes
    public function __construct($db){
        $this->db = $db;  
        // requête permettant de sélectionner aléatoirement nos indices
        $this->select = $db->prepare("select id, libelle from indice");
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

