<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/*
 |----Packages for BackEnd-------|
*/
class Packages extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		
		$this->load->model(array(
			'package_model',
			//'setting_model'
		));
		
		// if ($this->session->userdata('isLogIn') == false) 
		// redirect('login');

	}
	public function index(){
		if ($this->session->userdata('isLogIn') == false) 
		redirect('login'); 
		$data['module'] = display("packages");
		$data['title'] = display('packages_list');
		#-------------------------------#
		$data['packages'] = $this->package_model->read();
		//echo "<pre>".print_r($data, true); exit;
		//$data['lang_pack'] = $this->package_model->read_lang_department();
		$data['content'] = $this->load->view('packages/index',$data,true);
		$this->load->view('layout/main_wrapper',$data);
		//echo "<pre>".print_r($data, true); exit;
		//$this->load->view('layout/main_wrapper',$data);
		//echo "<pre>".print_r($this->session->userdata(), true); exit;
        	//echo "test"; exit;
	}

	public function create(){
		if ($this->session->userdata('isLogIn') == false) 
		redirect('login'); 
		$data['module'] = display("packages");
		$data['title'] = display('packages_list');
		#-------------------------------#
		$this->form_validation->set_rules('package_title', display('package_title') ,'required|max_length[100]');
		$this->form_validation->set_rules('package_code', display('package_code') ,'required|max_length[10]');
		$this->form_validation->set_rules('package_price', display('package_price') ,'required|decimal');
		$this->form_validation->set_rules('package_special_price', display('package_special_price|decimal') ,'required');
		$this->form_validation->set_rules('package_slots', display('package_slots') ,'required|integer');
		$this->form_validation->set_rules('package_short_description', display('package_short_description'),'trim');
		$this->form_validation->set_rules('package_status', display('package_status') ,'required');
		#-------------------------------#
		//echo "<pre>".print_r($this->input->post(), true); exit;
		$data['package'] = (object)$postData = [
			'package_id' 	      		=> $this->input->post('package_id',true),
			'package_category_id' 		=> $this->input->post('package_category_id',true),
			'package_title' 		=> $this->input->post('package_title',true),
			'package_code' 		  	=> $this->input->post('package_code',true),
			'package_price' 		=> $this->input->post('package_price',true),
			'package_duration' 		=> $this->input->post('package_duration',true),
			'package_special_price' 	=> $this->input->post('package_special_price',true),
			'package_slots' 		=> $this->input->post('package_slots',true),
			'package_short_description' 	=> $this->input->post('package_short_description', true),
			'package_description' 		=> $this->input->post('package_description', true),
			'package_status'      		=> $this->input->post('package_status',true),
			'package_sort_order'      	=> $this->input->post('package_sort_order',true),
			'payment_code'      	=> $this->input->post('payment_code',true),
			'created_by'      		=> $this->session->userdata('user_id'),
			'updated_by'      		=> $this->session->userdata('user_id'),
			'created_date'      		=> date('Y-m-d h:i:s'),
			'updated_date'      		=> date('Y-m-d h:i:s'),
		];
		if ($this->form_validation->run() === true) {

			#if empty $main_dprt_id then insert data
			if (empty($postData['package_id'])) {
				if ($this->package_model->create($postData)) {
					$ID = $this->db->insert_id();
					$this->session->set_flashdata('message', display('save_successfully'));
				} else {
					#set exception message
					$this->session->set_flashdata('exception',display('please_try_again'));
				}
				redirect('packages/create');
			} else {
				if ($this->package_model->update($postData)) {
					#set success message
					$this->session->set_flashdata('message', display('update_successfully'));
				} else {
					#set exception message
					$this->session->set_flashdata('exception',display('please_try_again'));
				}
				redirect('packages/edit/'.$postData['package_id']);
			}

		} else {
			$data['package_category'] = $this->package_model->get_category_dropdown();
			$data['package_durations'] = $this->package_model->get_package_duration();
			//echo "<pre>".print_r($data, true); exit;
			$data['content'] = $this->load->view('packages/package_form',$data,true);
			$this->load->view('layout/main_wrapper',$data);
		} 
	}
	public function edit($id = null){
		if ($this->session->userdata('isLogIn') == false) 
		redirect('login'); 
		$data['module'] = display("packages");
		$data['title'] = display('packages');
		#-------------------------------#
		$data['package'] = $this->package_model->read_by_id($id);
		$data['package_category'] = $this->package_model->get_category_dropdown();
		$data['package_durations'] = $this->package_model->get_package_duration();
		$data['content'] = $this->load->view('packages/package_form',$data,true);
		$this->load->view('layout/main_wrapper',$data);
	}

	public function delete($id = null) 
	{
		if ($this->session->userdata('isLogIn') == false) 
		redirect('login'); 
		if ($this->package_model->delete($id)) 
		{
			#set success message
			$this->session->set_flashdata('message', display('delete_successfully'));
		} else {
			#set exception message
			$this->session->set_flashdata('exception', display('please_try_again'));
		}
		redirect('packages');
	}

	public function list()
	{
		$this->load->model(array(
			'website/home_model',
			'setting_model',
			'website/menu_model',
		));
		$config = array();
		$config["base_url"] = base_url() . "packages/list";
		//$config["total_rows"] = $this->package_model->record_count();
		$config["per_page"] = 9;
		$config["uri_segment"] = 3;
		  //css styling
		  $config['full_tag_open'] = '<ul class="pagination justify-content-center">';
		  $config['full_tag_close'] = '</ul>';
		  $config['attributes'] = ['class' => 'page-link'];
		  $config['first_link'] = false;
		  $config['last_link'] = false;
		  $config['first_tag_open'] = '<li class="page-item">';
		  $config['first_tag_close'] = '</li>';
		  $config['prev_link'] = '&laquo Previous';
		  $config['prev_tag_open'] = '<li class="page-item">';
		  $config['prev_tag_close'] = '</li>';
		  $config['next_link'] = 'Next &raquo';
		  $config['next_tag_open'] = '<li class="page-item">';
		  $config['next_tag_close'] = '</li>';
		  $config['last_tag_open'] = '<li class="page-item">';
		  $config['last_tag_close'] = '</li>';
		  $config['cur_tag_open'] = '<li class="page-item active"><a href="#" class="page-link">';
		  $config['cur_tag_close'] = '<span class="sr-only">(current)</span></a></li>';
		  $config['num_tag_open'] = '<li class="page-item">';
		  $config['num_tag_close'] = '</li>';
  
		$this->pagination->initialize($config);
	
		$page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
		$data['title'] = display('packages_list');
		$data['setting'] = $this->home_model->setting(); 
		// redirect if website status is disabled
		if ($data['setting']->status == 0) 
		redirect(base_url('login'));
		$data['basics'] = $this->home_model->basic_setting();  
		$data['section'] = $this->home_model->section('packages');
		//echo "<pre>".print_r($data, true); exit;
		// get banner slider
		$data['banner'] = $this->db->select("image")->from('ws_banner')->where('status', 1)->limit(3)->order_by('id', 'DESC')->get()->result();
		$data['languageList'] = $this->home_model->languageList(); 
		//$data['packages'] = $this->package_model->read();
		$data['package_category'] = $this->package_model->get_category();

		//$data['about'] = $this->about_model->read();
		//$data['deptsFooter'] = $this->department_model->read_footer();
		$data['parent_menu'] = $this->menu_model->get_parent_menu();
		//$data['packages'] = $this->package_model->read($config["per_page"], $page);
		$data["links"] = $this->pagination->create_links();
		//echo "<pre>".print_r($data,true); exit;
		$data['content'] = $this->load->view('website/package_category',$data,true);
		$this->load->view('website/plain_index', $data);
	}
	public function category($category_id = 0)
	{
		$this->load->model(array(
			'website/home_model',
			'setting_model',
			'website/menu_model',
		));
		$config = array();
		$config["base_url"] = base_url() . "packages/list";
		//$config["total_rows"] = $this->package_model->record_count();
		$config["per_page"] = 9;
		$config["uri_segment"] = 3;
		  //css styling
		  $config['full_tag_open'] = '<ul class="pagination justify-content-center">';
		  $config['full_tag_close'] = '</ul>';
		  $config['attributes'] = ['class' => 'page-link'];
		  $config['first_link'] = false;
		  $config['last_link'] = false;
		  $config['first_tag_open'] = '<li class="page-item">';
		  $config['first_tag_close'] = '</li>';
		  $config['prev_link'] = '&laquo Previous';
		  $config['prev_tag_open'] = '<li class="page-item">';
		  $config['prev_tag_close'] = '</li>';
		  $config['next_link'] = 'Next &raquo';
		  $config['next_tag_open'] = '<li class="page-item">';
		  $config['next_tag_close'] = '</li>';
		  $config['last_tag_open'] = '<li class="page-item">';
		  $config['last_tag_close'] = '</li>';
		  $config['cur_tag_open'] = '<li class="page-item active"><a href="#" class="page-link">';
		  $config['cur_tag_close'] = '<span class="sr-only">(current)</span></a></li>';
		  $config['num_tag_open'] = '<li class="page-item">';
		  $config['num_tag_close'] = '</li>';
  
		$this->pagination->initialize($config);
	
		$page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
		$data['title'] = display('packages_list');
		$data['setting'] = $this->home_model->setting(); 
		// redirect if website status is disabled
		if ($data['setting']->status == 0) 
		redirect(base_url('login'));
		$data['basics'] = $this->home_model->basic_setting();  
		$data['section'] = $this->home_model->section('packages');
		//echo "<pre>".print_r($data, true); exit;
		// get banner slider
		$data['banner'] = $this->db->select("image")->from('ws_banner')->where('status', 1)->limit(3)->order_by('id', 'DESC')->get()->result();
		$data['languageList'] = $this->home_model->languageList(); 
		$data['packages'] = $this->package_model->get(['package_category_id' => $category_id]);
		$data['package_category'] = $this->package_model->get_category();

		//$data['about'] = $this->about_model->read();
		//$data['deptsFooter'] = $this->department_model->read_footer();
		$data['parent_menu'] = $this->menu_model->get_parent_menu();
		//$data['packages'] = $this->package_model->read($config["per_page"], $page);
		$data["links"] = $this->pagination->create_links();
		//echo "<pre>".print_r($data,true); exit;
		$data['content'] = $this->load->view('website/packages_list',$data,true);
		$this->load->view('website/plain_index', $data);
	}

	public function renewals(){
		if ($this->session->userdata('isLogIn') == false) 
		redirect('login'); 
		$data['module'] = display("packages");
		$data['title'] = display('renewals');
		#-------------------------------#
		$this->load->model(array(
			'renewals_model',
			//'setting_model'
		));
		$data['renewals'] = $this->renewals_model->read();
		//$data['lang_pack'] = $this->package_model->read_lang_department();
		//echo "<pre>".print_r($data, true); exit;
		$data['content'] = $this->load->view('packages/renewals',$data,true);
		$this->load->view('layout/main_wrapper',$data);
		
	}
}
