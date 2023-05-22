<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Admin_Controller extends CI_Controller {
	public function index()
	{
        $this->__is_logged_in();
        $data['counts'] = $this->db->query("SELECT (SELECT COUNT(products.p_id) FROM products) as p_count, (SELECT COUNT(contact.contact_id) FROM contact) as contact_count, (SELECT COUNT(orders.pre_id) FROM orders) as o_count, (SELECT COUNT(gallery.g_id) FROM gallery) as g_count FROM `admin`")->result();
		$this->load->view('admin/index',$data);
	}
    function pre_orders()
	{
        $this->__is_logged_in();
        $data['pre_order'] = $this->Admin_Model->get_pre_order();
		$this->load->view('admin/pre_orders',$data);
	}

    function gallery()
	{
        $this->__is_logged_in();
        $data['gallery'] = $this->Admin_Model->get_Gallery();
		$this->load->view('admin/gallery',$data);
	}
    function add_gallery()
	{
        $this->__is_logged_in();
		$this->load->view('admin/add_gallery');
	}
    function save_gallery()
    {
        if($_SERVER['REQUEST_METHOD']=="POST")
        {
            if(!empty($_FILES['g_image']['name']))
            {
                $config['upload_path'] = './file_uploads/gallery';
                $config['allowed_types'] = 'jpg|JPG|jpeg|JPEG|png|PNG|jfif|JFIF';
                $config['max_size'] = 100000000;
                $this->load->library('upload',$config);
                $this->upload->initialize($config);
                $this->upload->do_upload('g_image');
                $get_upload_info = $this->upload->data();
                // echo "<pre>";print_r($get_upload_info);die;
                $g_image = $get_upload_info['file_name'];
            }
            $g_created_at = Date('Y-m-d H:i:s');
            $this->Admin_Model->save_gallery($g_image,$g_created_at);
            $this->session->set_flashdata('message','Gallery Added Successfully!!!');
            redirect('admin/add_gallery');
        }   
        else
        {
            echo "Invalid Method!!";
        }
    }


    function categories()
	{
        $this->__is_logged_in();
        $data['categories'] = $this->Admin_Model->get_Categories();
		$this->load->view('admin/categories',$data);
	}
    function add_category($c_id=null)
	{
        $this->__is_logged_in();
        if(empty($c_id) || $c_id==null){
            $this->load->view('admin/add_category');   
        }else{
            $data['edit'] = $this->Admin_Model->get_Categories($c_id);
            $this->load->view('admin/add_category',$data);  
        }
	}
    
    function save_category($c_id=null)
    {
        if($_POST)
        {
            $c_name = $this->input->post('c_name');
            if(!empty($_FILES['c_image']['name']))
            {
                $config['upload_path'] = './file_uploads/categories';
                $config['allowed_types'] = 'jpg|JPG|jpeg|JPEG|png|PNG|jfif|JFIF';
                $config['max_size'] = 100000000;
                $this->load->library('upload',$config);
                $this->upload->initialize($config);
                $this->upload->do_upload('c_image');
                $get_upload_info = $this->upload->data();
                // echo "<pre>";print_r($get_upload_info);die;
                $c_image = $get_upload_info['file_name'];
            }
            $c_created_at = Date('Y-m-d H:i:s');
            if(empty($c_id) || $c_id==null){
                $this->Admin_Model->save_category($c_name,$c_image,$c_created_at);
                $this->session->set_flashdata('message','Category Added Successfully!!!');
                redirect('admin/add_category');   
            }else{
                if(empty($c_image)){
                    $this->db->where('c_id',$c_id)->set('c_name',$c_name)->update('categories');
                }else{
                    $this->db->where('c_id',$c_id)->set('c_name',$c_name)->set('c_image',$c_image)->update('categories');
                }
                $this->session->set_flashdata('message','Category Updated Successfully!!!');
                redirect('Admin_Controller/add_category/'.$c_id);   
            }
        }   
        else
        {
            echo "Invalid Method!!";
        }
    }

    function products()
	{
        $this->__is_logged_in();
        $data['products'] = $this->Admin_Model->get_Products();
		$this->load->view('admin/products',$data);
	}
    function add_products($p_id=null)
	{
        $this->__is_logged_in();
        if(empty($p_id) || $p_id==null){
            $data['categories'] = $this->Admin_Model->get_Categories();
		    $this->load->view('admin/add_products',$data);
        }else{
            $data['categories'] = $this->Admin_Model->get_Categories();
            $data['edit'] = $this->Admin_Model->get_Products($p_id);
            $this->load->view('admin/add_products',$data);  
        }
	}

    function save_products($p_id=null)
    {
        if($_POST)
        {
            $p_category_id = $this->input->post('p_category_id');
            $p_name = $this->input->post('p_name');
            if(!empty($_FILES['p_image']['name']))
            {
                $config['upload_path'] = './file_uploads/products';
                $config['allowed_types'] = 'jpg|JPG|jpeg|JPEG|png|PNG|jfif|JFIF';
                $config['max_size'] = 100000000;
                $this->load->library('upload',$config);
                $this->upload->initialize($config);
                $this->upload->do_upload('p_image');
                $get_upload_info = $this->upload->data();
                // echo "<pre>";print_r($get_upload_info);die;
                $p_image = $get_upload_info['file_name'];
            }
            $p_created_at = Date('Y-m-d H:i:s');
            if(empty($p_id) || $p_id==null){
                $this->Admin_Model->save_products($p_category_id,$p_name,$p_image,$p_created_at);
                $this->session->set_flashdata('message','Product Added Successfully!!!');
                redirect('admin/add_products');   
            }else{
                if(empty($p_image)){
                    $this->db->where('p_id',$p_id)->set('p_category_id',$p_category_id)->set('p_name',$p_name)->update('products');
                }else{
                    $this->db->where('p_id',$p_id)->set('p_category_id',$p_category_id)->set('p_name',$p_name)->set('p_image',$p_image)->update('products');
                }
                $this->session->set_flashdata('message','Product Updated Successfully!!!');
                redirect('Admin_Controller/add_products/'.$p_id);   
            }
            
        }   
        else
        {
            echo "Invalid Method!!";
        }
    }




    public function contact()
	{
        $this->__is_logged_in();
        $data['contact'] = $this->Admin_Model->get_Contacts();
		$this->load->view('admin/contact',$data);
        
    }
	
	
	
    function change_password()
	{
        $this->__is_logged_in();
		$this->load->view('admin/change_password');
	}
    function update_password(){
        $this->__is_logged_in();
        // echo "<pre>";print_r($_SESSION);die;
        if($_POST){
            $this->form_validation->set_rules('a_old_password','Old Password','required');
            $this->form_validation->set_rules('a_new_password','New Password','required|matches[a_confirm_password]');
            $this->form_validation->set_rules('a_confirm_password','Confirm Password','required|matches[a_new_password]');
            if($this->form_validation->run()==FALSE){
                return $this->change_password();
            }else{
                $a_old_password = $this->input->post('a_old_password');
                $a_new_password = $this->input->post('a_new_password');
                $getOldPassword = $this->Admin_Model->getOldPassword();
                if(sha1($a_old_password)==$getOldPassword[0]->a_password){
                    $this->Admin_Model->updatePassword(sha1($a_new_password));
                    $this->session->set_flashdata('message','Password Changed Successfully!!!');
                    return $this->change_password();
                }else{
                    $this->session->set_flashdata('error','Old Password is incorrect!!');
                    return $this->change_password();
                }
            }
        }else{
            echo "Invalid method!!";die;
        }
    }
    function __is_logged_in(){
        if($this->session->userdata('a_id')){
            return true;
        }else{
            redirect('Admin_Controller/login');
        }
    }
    public function login()
	{
		$this->load->view('admin/login');
	}
    function authentication(){
        if($_POST){
            $this->form_validation->set_rules('a_username','Username','required');
            $this->form_validation->set_rules('a_password','Password','required');
            if($this->form_validation->run()==FALSE){
                return $this->login();
            }else{
                $a_username = $this->input->post('a_username');
                $a_password = sha1($this->input->post('a_password'));
                $adminData = $this->Admin_Model->authentication($a_username,$a_password);
                if(!empty($adminData)){
                    $sess = ['a_id' => $adminData[0]->a_id, 'a_username' => $adminData[0]->a_username];
                    $this->session->set_userdata($sess);
                    $this->session->sess_expiration = 600;
                    redirect('Admin_Controller/index');
                }else{
                    $this->session->set_flashdata('message','Login Failed!!!');
                    return $this->login();
                }
            }
        }else{
            echo "Invalid method!!";die;
        }
    }
    function logout(){
        $this->session->unset_userdata('a_id');
        redirect('admin/login');
    }
}
