<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Website_Controller extends CI_Controller {

	public function index()
	{
		$data = $this->getCategories();
		$this->load->view('website/index',$data);
	}
	public function about()
	{
		$data = $this->getCategories();
		$this->load->view('website/about',$data);
	}
	public function pre_order()
	{
		$data = $this->getCategories();
		$this->load->view('website/pre-order',$data);
	}
	
	function save_Pre_order()
    {
        if($_POST)
        {
            $pre_name = $this->input->post('pre_name');
			$pre_mobile = $this->input->post('pre_mobile');
			$pre_email = $this->input->post('pre_email');
			$pre_message = $this->input->post('pre_message');      
            $pre_created_at = Date('Y-m-d H:i:s');
            $contact_created_at = Date('Y-m-d H:i:s');
            $this->Website_Model->save_Pre_order($pre_name,$pre_mobile,$pre_email,$pre_message,$pre_created_at);
            $this->session->set_flashdata('message','Submited Successfully!!!');
            redirect('/pre-order');
        }   
        else
        {
            echo "Invalid Method!!";
        }
    }
	
	
	public function gallery()
	{
		$data = $this->getCategories();
        $data['gallery'] = $this->Admin_Model->get_Gallery();
		$this->load->view('website/gallery',$data);
	}
	public function contact()
	{
		$data = $this->getCategories();
		$this->load->view('website/contact',$data);
	}
	
	function save_contact()
    {
        if($_POST)
        {
            $contact_name = $this->input->post('contact_name');
			$contact_mobile = $this->input->post('contact_mobile');
			$contact_email = $this->input->post('contact_email');
			$contact_message = $this->input->post('contact_message');      
           
            $contact_created_at = Date('Y-m-d H:i:s');
            $this->Website_Model->save_contact($contact_name,$contact_mobile,$contact_email,$contact_message,$contact_created_at);
            $this->session->set_flashdata('message','Submited Successfully!!!');
            redirect('/contact');
        }   
        else
        {
            echo "Invalid Method!!";
        }
    }

	public function products($c_id){
		$data = $this->getCategories();
		$data['products'] = $this->Website_Model->getProductsByCategory($c_id);
		$this->load->view('website/products',$data);
	}
	//////////////////////////////////////////////////

	public function getCategories(){
		return array('categories' => $this->Admin_Model->get_Categories());
	}

	//delete record
	function deleteRecord($table_name, $record_id){
		if($table_name=="categories"){
			$getDeletableRecord = $this->db->select('c_image')->from($table_name)->where('c_id',$record_id)->get()->result();
			if(!empty($getDeletableRecord[0]->c_image)){
				unlink('file_uploads/categories/'.$getDeletableRecord[0]->c_image);
			}
			$this->db->where('c_id',$record_id)->delete($table_name);
			redirect('admin/'.$table_name);
		}elseif($table_name=="products"){
			$getDeletableRecord = $this->db->select('p_image')->from($table_name)->where('p_id',$record_id)->get()->result();
			if(!empty($getDeletableRecord[0]->p_image)){
				unlink('file_uploads/products/'.$getDeletableRecord[0]->p_image);
			}
			$this->db->where('p_id',$record_id)->delete($table_name);
			redirect('admin/'.$table_name);
		}elseif($table_name=="gallery"){
			$getDeletableRecord = $this->db->select('g_image')->from($table_name)->where('g_id',$record_id)->get()->result();
			if(!empty($getDeletableRecord[0]->g_image)){
				unlink('file_uploads/gallery/'.$getDeletableRecord[0]->g_image);
			}
			$this->db->where('g_id',$record_id)->delete($table_name);
			redirect('admin/'.$table_name);
		}elseif($table_name=="contact"){
			$getDeletableRecord = $this->db->select('contact_name')->from($table_name)->where('contact_id',$record_id)->get()->result();
			$this->db->where('contact_id',$record_id)->delete($table_name);
			redirect('admin/'.$table_name);
	      }
	      elseif($table_name=="orders"){
// 			$getDeletableRecord = $this->db->select('contact_name')->from($table_name)->where('contact_id',$record_id)->get()->result();
			$this->db->where('pre_id',$record_id)->delete($table_name);
			redirect('admin/pre_orders');
	      }
	}
}
