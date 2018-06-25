<?php

class Utilisateur{
    
    private $db;
    private $insert;
    private $connect;
    private $select;
    private $selectByEmail;
    private $update;
    private $updateMdp;
    private $delete;
    
    public function __construct($db){
        $this->db = $db;
        $this->insert = $db->prepare("insert into utilisateur(email, mdp, nom, prenom, idRole) values (:email, :mdp, :nom, :prenom, :role)");    
        $this->connect = $db->prepare("select email, idRole, mdp from utilisateur where email=:email");
        $this->select = $db->prepare("select email, idRole, nom, prenom, r.libelle as libellerole from utilisateur u, role r where u.idRole = r.id order by nom");
        $this->selectByEmail = $db->prepare("select email, nom, prenom, idRole from utilisateur where email=:email");
        $this->update = $db->prepare("update utilisateur set nom=:nom, prenom=:prenom, idRole=:role where email=:email");
        $this->updateMdp = $db->prepare("update utilisateur set mdp=:mdp where email=:email");
        $this->delete = $db->prepare("delete from utilisateur where email=:id");
        }
    public function insert($email, $mdp, $role, $nom, $prenom){
        $r = true;
        $this->insert->execute(array(':email'=>$email, ':mdp'=>$mdp, ':role'=>$role, ':nom'=>$nom, ':prenom'=>$prenom));
        if ($this->insert->errorCode()!=0){
             print_r($this->insert->errorInfo());  
             $r=false;
        }
        return $r;
    }
    
    public function connect($email){  
        $unUtilisateur = $this->connect->execute(array(':email'=>$email));
        if ($this->connect->errorCode()!=0){
             print_r($this->connect->errorInfo());  
        }
        return $this->connect->fetch();
    }
    
    public function select(){
        $this->select->execute();
        if ($this->select->errorCode()!=0){
             print_r($this->select->errorInfo());  
        }
        return $this->select->fetchAll();
    }
    
    public function selectByEmail($email){ 
        $this->selectByEmail->execute(array(':email'=>$email)); 
        if ($this->selectByEmail->errorCode()!=0){
            print_r($this->selectByEmail->errorInfo()); 
            
        }
        return $this->selectByEmail->fetch(); 
    }
    
    public function update($email, $role, $nom, $prenom){
        $r = true;
        $this->update->execute(array(':email'=>$email, ':role'=>$role, ':nom'=>$nom, ':prenom'=>$prenom));
        if ($this->update->errorCode()!=0){
             print_r($this->update->errorInfo());  
             $r=false;
        }
        return $r;
    }
    
    public function updateMdp($email, $mdp){
        $r = true;
        $this->updateMdp->execute(array(':email'=>$email, ':mdp'=>$mdp));
        if ($this->update->errorCode()!=0){
             print_r($this->updateMdp->errorInfo());  
             $r=false;
        }
        return $r;
    }
    public function delete($id){
        $r = true;
        $this->delete->execute(array(':id'=>$id));
        if ($this->delete->errorCode()!=0){
             print_r($this->delete->errorInfo());  
             $r=false;
        }
        return $r;
    }
    
}

?>

