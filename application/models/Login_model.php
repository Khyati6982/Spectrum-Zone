<?php

class Login_model extends CI_Model
{
    function checkUser($email,$password){
        $query = $this->db->get_where('login',array('email'=> $email , 'password'=> $password));
        return $query;
    }
}