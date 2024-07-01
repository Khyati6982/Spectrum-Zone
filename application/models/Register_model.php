<?php

class Register_model extends CI_Model
{
    function maxId(){
        $this->db->select_max('u_id', 'u_id');
        $query = $this->db->get('login');
        return $query;
    }

    function insertUser($data){
        $query = $this->db->insert('login',$data);
        return $query;
    }
}