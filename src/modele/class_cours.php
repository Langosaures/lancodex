<?php

class Cours{
    
    private $selectCours;
    private $selectUnCours;
    
    // création de nos requêtes
    public function __construct($db){
        $this->db = $db;  
        // requête permettant de sélectionner aléatoirement nos indices
        $this->selectCours = $db->prepare("select * from cours");
        $this->selectUnCours = $db->prepare("select * from cours where id=:id");
        }

    // fonction permettant récupérer les cours
    public function selectCours(){
        $this->selectCours->execute();
        if ($this->selectCours->errorCode()!=0){
             print_r($this->selectCours->errorInfo());  
        }
        return $this->selectCours->fetchAll();
    }
    
        // fonction permettant récupérer un cours
    public function selectUnCours($id){
        $this->selectUnCours->execute(array(':id'=>$id));
        if ($this->selectUnCours->errorCode()!=0){
             print_r($this->selectUnCours->errorInfo());  
        }
        return $this->selectUnCours->fetchAll();
    }
}

?>
