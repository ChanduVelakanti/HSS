<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin_Model extends CI_Model {

	function authentication($a_username, $a_password){
        return $this->db->query("SELECT a_id,a_username FROM admin WHERE a_username=? AND a_password=?",[$a_username, $a_password])->result();
    }
	
    function getOldPassword(){
        return $this->db->query("SELECT a_password FROM admin WHERE a_id",[$this->session->userdata('a_id')])->result();
    }

    function updatePassword($a_password){
        $this->db->query("UPDATE admin SET a_password=? WHERE a_id=?",[$a_password,$this->session->userdata('a_id')]);
    }

    function save_category($c_name,$c_image,$c_created_at)
    {
        $this->db->query("INSERT INTO `categories` (`c_name`, `c_image`, `c_created_at`) VALUES (?,?,?)",[$c_name,$c_image,$c_created_at]);
    }

    function save_products($p_category_id,$p_name,$p_image,$p_created_at){
        $this->db->query("INSERT INTO `products` (`p_category_id`, `p_name`, `p_image`,`p_created_at`) VALUES (?,?,?,?)",[$p_category_id,$p_name,$p_image,$p_created_at]);
    }
    
    function save_gallery($g_image,$g_created_at){
        $this->db->query("INSERT INTO `gallery` (`g_image`, `g_created_at`) VALUES (?,?);",[$g_image,$g_created_at]);
    }

    function get_Gallery(){
        return $this->db->query("SELECT * FROM `gallery`")->result();
    }

    function get_Categories($id=null)
    {
        if(empty($id) || $id==null){
            return $this->db->query("SELECT * FROM `categories`")->result();   
        }else{
            return $this->db->query("SELECT * FROM categories WHERE c_id=$id")->result();
        }
    }

    function get_Products($id=null){
        if(empty($id) || $id==null){
            return $this->db->query("SELECT * FROM `products` JOIN categories ON categories.c_id=products.p_category_id")->result();   
        }else{
            return $this->db->query("SELECT * FROM `products` JOIN categories ON categories.c_id=products.p_category_id WHERE p_id=$id")->result();
        }
    }
     function get_Contacts (){
        return $this->db->query("SELECT * FROM `contact`")->result();
    }  
     function get_pre_order (){
        return $this->db->query("SELECT * FROM `orders`")->result();
    }  
}
?>
