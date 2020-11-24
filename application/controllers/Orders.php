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
		
	}
    public function index()
    {
			if ($this->session->userdata('isLogIn') == false) 
					redirect('login');
					
			$data['module'] = display("package_order");
			$data['title'] = display('packages_order_list');
			#-------------------------------#
			$data['orders'] = $this->order_model->read();
			$data['content'] = $this->load->view('packages/orders/index',$data,true);
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
		$data['package'] = (object)$postData = [
			'package_id' 	      		=> $this->input->post('package_id',true),
			'package_title' 		=> $this->input->post('package_title',true),
			'package_code' 		  	=> $this->input->post('package_code',true),
			'package_price' 		=> $this->input->post('package_price',true),
			'package_special_price' 	=> $this->input->post('package_special_price',true),
			'package_slots' 		=> $this->input->post('package_slots',true),
			'package_short_description' 	=> $this->input->post('package_short_description', true),
			'package_description' 		=> $this->input->post('package_description', true),
			'package_status'      		=> $this->input->post('package_status',true),
			'package_sort_order'      	=> $this->input->post('package_sort_order',true),
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
					// $langData = [
					// 	'main_id' 	  => $ID,
					// 	'language' 	  => $this->session->userdata('tableLang'),
					// 	'name' 		  => $this->input->post('name',true),
					// 	'description' => $this->input->post('description',true),
					// 	'status'      => $this->input->post('status',true)
					// ]; 
					// $this->package_model->create_lang($langData);
					#set success message
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
		$data['package'] = $this->package_model->read_by_id($data['order']->package_id);
		$data['content'] = $this->load->view('packages/package_form',$data,true);
		$this->load->view('layout/main_wrapper',$data);
	}
	public function view($id = null){
		if ($this->session->userdata('isLogIn') == false) 
		redirect('login'); 
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
			$data['department_list'] = $this->department_model->department_list(); 
		}
		$data['back_url'] = (isset($_SERVER['HTTP_REFERER'])) ? $_SERVER['HTTP_REFERER'] : '';
		//echo "<pre>".print_r($data, true); exit;
		//echo "<pre>".print_r($this->session->userdata(), true); exit;
		//$data['appointment_type'] = $this->main_department_model->appointment_type();
		//$data['payment_type_list'] = $this->main_department_model->payment_type_list();
		$data['main_department_list'] = $this->main_department_model->main_department_list();
		$data['content'] = $this->load->view('packages/orders/view',$data,true);
	
		$this->load->view('layout/main_wrapper',$data);
	}
	public function get_appointment(){
		$data['module'] = display("appointment");
		$data['title'] = display('appointment');
		/* ------------------------------- */
		$appointment_id = $this->input->post('appointment_id',true);
		$data['appointment'] = $this->appointment_model->read_by_id($appointment_id);
		//echo "<pre>".print_r($data,true); exit;
		$this->load->view('appointment_view',$data);
		//return $content;
		//$this->load->view('layout/main_wrapper',$data);

		//$this->load->view('dashboard_patient/main_wrapper',$data);
	} 
	public function randStrGen($mode = null, $len = null)
	{
			$result = "";
			if($mode == 1):
					$chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
			elseif($mode == 2):
					$chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
			elseif($mode == 3):
					$chars = "abcdefghijklmnopqrstuvwxyz0123456789";
			elseif($mode == 4):
					$chars = "0123456789";
			endif;

			$charArray = str_split($chars);
			for($i = 0; $i < $len; $i++) {
							$randItem = array_rand($charArray);
							$result .="".$charArray[$randItem];
			}
			return $result;
	}
	public function check_patient($mode = null)
	{
			$patient_id = $this->input->post('patient_id');

			if (!empty($patient_id)) {
					$query = $this->db->select('firstname,lastname')
							->from('patient')
							->where('patient_id',$patient_id)
							->where('status',1)
							->get();

					if ($query->num_rows() > 0) {
							$result = $query->row();
							$data['message'] = $result->firstname . ' ' . $result->lastname;
							$data['status'] = true;
					} else {
							$data['message'] = display('invalid_patient_id');
							$data['status'] = false;
					}
			} else {
					$data['message'] = display('invlid_input');
					$data['status'] = null;
			}

			//return data
			if ($mode === true) {
					return json_encode($data);
			} else {
					echo json_encode($data);
			}

	}
	public function check_appointment_exists(
		$patient_id  = null,
		$doctor_id  = null,
		$schedule_id  = null,
		$date  = null 
	) {
			if (!empty($patient_id) && !empty($doctor_id) && !empty($schedule_id)) {
					$num_rows = $this->db->select('*')
							->from('appointment')
							->where('patient_id', $patient_id)
							->where('doctor_id', $doctor_id)
							->where('schedule_id', $schedule_id) 
							->where('date', $date)
							->where('status', 1)
							->or_where('status', 2)
							->get()
							->num_rows();
							
					if ($num_rows > 0) {
							return false;
					} else {
							return true; 
					}
			} else {
					return null; 
			}
	}
	public function appointment(){
			$data['module'] = display("dashboard_patient");
			$data['title'] = display('add_appointment');
			
			/* ------------------------------- */
			$this->form_validation->set_rules('patient_id', display('patient_id'),'required|max_length[50]');
			$this->form_validation->set_rules('department_id', display('department_name'),'required|max_length[50]');
			$this->form_validation->set_rules('doctor_id', display('doctor_name') ,'required|max_length[50]');
			$this->form_validation->set_rules('schedule_id', display('appointment_date') ,'required|max_length[10]'); 
			$this->form_validation->set_rules('serial_no', display('serial_no') ,'required|max_length[10]');
			$this->form_validation->set_rules('problem', display('problem'),'max_length[255]');
			$this->form_validation->set_rules('status',display('status'),'required');
			/* ------------------------------- */
			$data['appointment'] = (object)$postData = [
					'appointment_id' => 'A'.$this->randStrGen(2, 7),
					'patient_id'     => $this->input->post('patient_id',true), 
					'department_id'  => $this->input->post('department_id',true), 
					'doctor_id'      => $this->input->post('doctor_id',true), 
					'schedule_id'    => $this->input->post('schedule_id',true), 
					'serial_no'      => $this->input->post('serial_no',true), 
					'payment_id'     => $this->input->post('receipt_id',true), 
					'payment_mode'   => 'Cash', 
					'problem'        => $this->input->post('problem',true), 
					'date'           => date('Y-m-d',strtotime($this->input->post('date',true))),
					'created_by'     => $this->session->userdata('user_id'), 
					'create_date'    => date('Y-m-d'),
					'status'         => 1
			]; 
			
			$data['order_appointment'] = (object)$order_appointment = [
					'package_order_id'          => $this->input->post('order_id',true), 
					'package_appointment_id'    => '', 
					'package_appoinment_status' => 'Active',
					'created_by'      		    => $this->session->userdata('user_id'),
					'updated_by'      		    => $this->session->userdata('user_id'),
					'created_date'      		=> date('Y-m-d h:i:s'),
					'updated_date'      		=> date('Y-m-d h:i:s'),
			];
			
			/* ------------------------------- */
			//check patient id
			$check_patient_id = json_decode($this->check_patient(true));
			//echo "<pre>".print_r($data , true); exit;
			//check appointment exists
			$check_appointment_exists = true;
			$check_appointment_exists = $this->check_appointment_exists(
					$this->input->post('patient_id',true), 
					$this->input->post('doctor_id',true), 
					$this->input->post('schedule_id',true), 
					date('Y-m-d',strtotime($this->input->post('date',true)))
			);
			
			if ($check_appointment_exists === false) {
					$this->session->set_flashdata('exception',display('you_are_already_registered')); 
			} 
			/* ------------------------------- */
			if ($this->form_validation->run() === true && $check_patient_id->status === true && $check_appointment_exists === true) {
			
					/*if empty $id then insert data*/
					$id = $this->appointment_model->create($postData);
					
					if($id) {
							$this->session->set_flashdata('message',display('save_successfully'));
							/*set success message*/
							
							if(isset($order_appointment['package_order_id']) && $order_appointment['package_order_id'])
							{
									$order_appointment['package_appointment_id'] = $id;
									//echo "<pre>".print_r($order_appointment , true); exit;
									$this->order_model->create_appointment($order_appointment);
									
							}
							
					} else {
							/*set exception message*/
							$this->session->set_flashdata('exception',display('please_try_again'));
					}
					redirect('orders/view/'.$order_appointment['package_order_id']);
					//redirect('dashboard_patient/appointment/appointment/view/'.$postData['appointment_id']);

			} else {
					$data['slot_type'] = 1;
					$data['department_list'] = $this->department_model->department_list(); 
					$data['content'] = $this->load->view('dashboard_patient/appointment/appointment_form',$data,true);
					$this->load->view('dashboard_patient/main_wrapper',$data);
			} 
	}	
	public function delete($id = null) 
	{
		if ($this->session->userdata('isLogIn') == false) 
		redirect('login'); 

		if ($this->order_model->delete($id)) 
		{
			#set success message
			$this->email_model->package_order($id, 3);
			$this->session->set_flashdata('message', display('delete_successfully'));
		} else {
			#set exception message
			$this->session->set_flashdata('exception', display('please_try_again'));
		}
		redirect('orders');
	}
	public function cancel($order_id = null) 
	{
			$data = array();
			$data['order_status'] = "Cancelled";
			$refund_status  = false;

			$order = $this->order_model->read_by_id($order_id);
			//echo "<pre>".print_r($order,true); exit;
			if(isset($order->payment_id) && trim($order->payment_id) != '')
			{
					$this->load->model('transaction_model');
					$request_data = array();
					//$request_data['amount'] = $order->total_price;
					$response = $this->transaction_model->refund($order->payment_id, $request_data);
					//echo "<pre>".print_r($response,true);exit;
					if($response['status'])
					{
							$refund_data = array();

							$refund_data['payment_id']  = $order->payment_id;
							$refund_data['refund_id']   = $response['result']->id;
							$refund_data['amount']      = $order->total_price;
							$refund_data['receipt']     = $response['result']->receipt;
							$refund_data['status']      = $response['result']->status;
							$refund_data['speed_processed']      = $response['result']->speed_processed;
							//$refund_data['created_date'] = date()

							$status = $this->transaction_model->insert_refund_data($refund_data);

							if($status)
							{
									$refund_status = true;
							}
					}
					else
					{
							$refund_status = false;
					}
			}
			else
			{
					//echo "ref"; 
					$refund_status = true;
			}
			//exit;
			//echo "<pre>".print_r($appointment,true); exit;
			if($refund_status)
			{
					if($this->order_model->update_order($order_id, $data)) 
					{
							/*set success message*/
							$this->email_model->package_order($order_id, 2);
							$this->session->set_flashdata('message', display('cancell_successfully'));
					} 
					else 
					{
							/*set exception message*/
							$this->session->set_flashdata('exception', display('please_try_again')." : database error!");
					}
					redirect($_SERVER['HTTP_REFERER']);
			}
			else
			{
					$this->session->set_flashdata('exception', display('please_try_again')." :refund error!");
					redirect($_SERVER['HTTP_REFERER']);
			}
			
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
		$data['packages'] = $this->package_model->read();
		//$data['about'] = $this->about_model->read();
		//$data['deptsFooter'] = $this->department_model->read_footer();
		$data['parent_menu'] = $this->menu_model->get_parent_menu();
		$data['packages'] = $this->package_model->read($config["per_page"], $page);
		$data["links"] = $this->pagination->create_links();
		$data['content'] = $this->load->view('website/packages_list',$data,true);
		$this->load->view('website/plain_index', $data);
	}
}
