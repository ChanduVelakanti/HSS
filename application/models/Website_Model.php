<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Website_Model extends CI_Model {

    function getProductsByCategory($c_id){
        return $this->db->query("SELECT * FROM `products` WHERE p_category_id=?",[$c_id])->result();
    }
    function save_contact($contact_name,$contact_mobile,$contact_email,$contact_message,$contact_created_at){
        return $this->db->query("INSERT INTO `contact` (`contact_name`, `contact_mobile`, `contact_email`, `contact_message`, `created_at`) VALUES (?,?,?,?,?)",[$contact_name,$contact_mobile,$contact_email,$contact_message,$contact_created_at]);
        
     }
     function save_Pre_order($pre_name,$pre_mobile,$pre_email,$pre_message,$pre_created_at){
        return $this->db->query("INSERT INTO `orders` (`pre_name`, `pre_mobile`, `pre_email`, `pre_message`, `created_at`) VALUES (?,?,?,?,?)",[$pre_name,$pre_mobile,$pre_email,$pre_message,$pre_created_at]);
        
     }
}
?>
