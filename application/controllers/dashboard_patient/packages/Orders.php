<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/*
 |----Packages for BackEnd-------|
*/
class Orders extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		
		$this->load->model(array(
			'order_model',
			'package_model',
			'appointment_model',
			'department_model',
			'main_department_model'
		));
		
		if ($this->session->userdata('isLogIn_patient') == false) 
		redirect('login'); 

	}
    public function index()
    {
			if ($this->session->userdata('isLogIn_patient') == false) 
			redirect('login'); 
					
			$data['module'] = display("package_order");
			$data['title'] = display('packages_order_list');
			#-------------------------------#
			$user_id = $this->session->userdata('user_id');
			$data['orders'] = $this->order_model->read_by_patient($user_id);
			$data['content'] = $this->load->view('dashboard_patient/packages/orders/index',$data,true);
			$this->load->view('dashboard_patient/main_wrapper',$data);
			//echo "<pre>".print_r($data, true); exit;
			//$this->load->view('layout/main_wrapper',$data);
			//echo "<pre>".print_r($this->session->userdata(), true); exit;
			//echo "test"; exit;
		}
		public function view($id = null){
			$data['module'] = display("package_order");
			$data['title'] = display('package_order');
			#-------------------------------# 
			
			$data['slot_type'] = 2;
			$data['order'] = $this->order_model->read_by_id($id);
			$package['package'] = array();
			if(count((array)$data['order']))
			{
				$data['package'] = $this->package_model->read_by_id($data['order']->package_id);
				$data['appointments_booked'] = $this->order_model->booked_slots_count_by_order($data['order']->order_id, 'Active');
				$data['appointments_available'] = (int) $data['order']->package_slots - (int) ($data['appointments_booked']);
				$data['appointments'] = $this->order_model->read_slots_by_order($data['order']->order_id);
				//$data['department_list'] = $this->department_model->department_list(); 
			}
			$data['back_url'] = (isset($_SERVER['HTTP_REFERER'])) ? $_SERVER['HTTP_REFERER'] : base_url('dashboard_patient/packages/orders/index');
			//echo "<pre>".print_r($data, true); exit;
			//echo "<pre>".print_r($this->session->userdata(), true); exit;
			//$data['appointment_type'] = $this->main_department_model->appointment_type();
            //$data['payment_type_list'] = $this->main_department_model->payment_type_list();
            $data['main_department_list'] = $this->main_department_model->main_department_list();
			$data['content'] = $this->load->view('dashboard_patient/packages/orders/view',$data,true);
			//$data['content'] = $this->load->view('packages/orders/view',$data,true);
		
			$this->load->view('dashboard_patient/main_wrapper',$data);
		}
}