<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/*
 |----Packages for BackEnd-------|
*/
class Process extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		
		$this->load->model(array(
			'website/home_model',
			'setting_model',
			'website/menu_model',
			'package_model',
			'order_model',
		));
	} 

  public function index()
	{
		$config = $this->pagination_config();
  
		$this->pagination->initialize($config);
	
		$page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
		$data['title'] = display('Cart');
		$data['setting'] = $this->home_model->setting(); 
		// redirect if website status is disabled
		if ($data['setting']->status == 0) 
		redirect(base_url('login'));
		$package_id = 0;
		$data['basics'] = $this->home_model->basic_setting();  
		$data['section'] = $this->home_model->section('cart');
		//echo "<pre>".print_r($data, true); exit;
		// get banner slider
		$data['banner'] = $this->db->select("image")->from('ws_banner')->where('status', 1)->limit(3)->order_by('id', 'DESC')->get()->result();
		$data['languageList'] = $this->home_model->languageList(); 
		$data['package'] = array();
		$cart = array();
		//echo "<pre>".print_r($this->session->userdata('cart'),true); exit;
		$package_id = $this->input->post('package_id',true);
		
		if(!empty($this->session->userdata('cart')))
		{
			//$cart = array('items' => array(), 'subtotal' => array() );
			$cart = $this->session->userdata('cart');
		}
		
		if($package_id)
		{
			$data['package'] = $this->package_model->read_by_id($package_id);
			$cart['items'] = $data['package'];
		}
		//echo "<pre>".print_r($cart['items'],true); exit;
		
		//$cart['items'] = count($cart['items']) ? $cart['items'] : array();
		//echo "<pre>".print_r($cart['items'],true); exit;
		if(isset($cart['items']))
		{
			$subtotal = $this->get_cart_subtotal($cart['items']);
			$other = (count((array)$cart['items'])) ? $this->get_cart_other() : array();
			$cart['total'] = array(
				'items' => (isset($cart['items']->package_id)) ? 1 : 0,
				'subtotal' => $subtotal,
				'other' => $other,
				'total' => $this->get_cart_total($other, $subtotal),
			);
		}
		
		$this->session->set_userdata('cart', $cart);	
		$data['cart'] = $cart;
		//echo "<pre>".print_r($data['cart'],true); exit;
		//echo "<pre>".print_r($this->session->userdata('cart'),true); exit;
		$data['parent_menu'] = $this->menu_model->get_parent_menu();
		$data['packages'] = $this->package_model->read($config["per_page"], $page);
		
		$data['content'] = $this->load->view('website/cart/index',$data,true);
		$this->load->view('website/plain_index', $data);
	}

	private function pagination_config()
	{
		$config = array();
		$config["base_url"] = base_url() . "cart/process";
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

		return $config;
	}

	private function get_cart_total($other = array(), $subtotal = 0)
	{
		$total = 0;
		$total = $subtotal;
		foreach($other as $item)
		{
			$total += $item['value'];
		}

		return $total;
	}

	private function get_cart_subtotal($items = array())
	{
		$subtotal = 0;
		$qty = 1;
		if(isset($items->package_id))
		{
			$subtotal += (isset($items->package_special_price)) ? ($qty * $items->package_special_price) : ($qty*$items->package_price);
		}

		return $subtotal;
	}

	private function get_cart_other()
	{
		$response = array();
		// $response[0]['title'] = 'GST';
		// $response[0]['value'] = 5.00;

		return $response;
	 }
	 
	public function unsetcart()
	{
		$this->session->unset_userdata('cart');
		$this->session->set_flashdata('success', 'Sucessful cleared cart!');
        redirect('cart/process/index/');
	}

	public function checkout()
	{
		$config = $this->pagination_config();
  
		$this->pagination->initialize($config);

		$page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
		$data['title'] = display('Checkout');
		$data['setting'] = $this->home_model->setting(); 
		// redirect if website status is disabled
		if ($data['setting']->status == 0) 
		redirect(base_url('login'));

		$data['isPatient']  = $this->session->userdata('isLogIn_patient');
		//$data['isLogIn']    = $this->session->userdata('isLogIn');
		
		$data['basics'] = $this->home_model->basic_setting();  
		$data['section'] = $this->home_model->section('checkout');

		$this->form_validation->set_rules('email', display('email'),'required|max_length[50]|valid_email');
		$this->form_validation->set_rules('user_id', display('patient id'),'required');
		$this->form_validation->set_rules('firstname', display('firstname'),'required');
		$this->form_validation->set_rules('lastname', display('lastname'),'required');
		$this->form_validation->set_rules('address', display('address'),'required');
		$this->form_validation->set_rules('country', display('country'),'required');
		$this->form_validation->set_rules('state', display('state'),'required');
		$this->form_validation->set_rules('zip', display('zip'),'required');

		$data['order'] = (object)$postData = [
			'patient_id'     	=> $this->input->post('user_id',true),
			'package_id'     	=> $this->input->post('package_id',true),
			'quantity'     		=> 1,
			'package_price'   => $this->input->post('package_price',true),
			'package_slots'   => $this->input->post('package_slots',true),
			'discount_price'  => $this->input->post('discount_price',true),
			'payment_id' 	 		=> $this->input->post('payment_id',true),
			'other'     			=> $this->input->post('other',true),
			'total_price'    	=> $this->input->post('total_price',true),
			'created_by'      => $this->session->userdata('user_id'),
			'updated_by'      => $this->session->userdata('user_id'),
			'created_date'    => date('Y-m-d h:i:s'),
			'updated_date'    => date('Y-m-d h:i:s'),
		]; 
		if ($this->form_validation->run() === true) 
		{
			#if empty $order_id then insert data
			if (empty($postData['order_id'])) 
			{
				$payment_id = $this->input->post('payment_id',true);
				if($payment_id)
				{
					$amount = $this->input->post('total_price', true);
					$data = array(
							'amount' => ($amount * 100),
							'currency' => CURRENCY,
					);
					$this->load->model('transaction_model');
					$response = $this->transaction_model->index($payment_id, $data);
					if($response['status'])
					{
							if ($this->order_model->create($postData)) 
							{
								$ID = $this->db->insert_id();
								$this->email_model->package_order($ID);
								//$this->session->set_flashdata('message', display('order_placed'));
								$this->session->unset_userdata('cart');
								//$this->session->unset_userdata('order');
								redirect('cart/process/thank_you');
							} 
							else 
							{
								#set exception message
								$this->session->set_flashdata('exception',display('please_try_again'));
								redirect($_SERVER['HTTP_REFERER']);
							}
					}
					else
					{
							$message['exception'] = $response['error']; 
							$this->session->set_flashdata($message);
							redirect($_SERVER['HTTP_REFERER']);
					}
				}
			
			}
		}
		

		$patient_data = array();
		if($data['isPatient'])
		{
			$patient_data['user_id'] = $this->session->userdata('user_id');
			$patient_data['email'] = $this->session->userdata('email');
			$patient_data['fullname'] = $this->session->userdata('fullname');
		}
		$data['patient'] = $patient_data;
		//echo "<pre>".print_r($this->session->userdata(), true); exit;
		// get banner slider
		$data['banner'] = $this->db->select("image")->from('ws_banner')->where('status', 1)->limit(3)->order_by('id', 'DESC')->get()->result();
		$data['languageList'] = $this->home_model->languageList();
		$data['package'] = array();
		$cart = array();
		$cart = $this->session->userdata('cart');

		$data['cart'] = $cart;
		$data['parent_menu'] = $this->menu_model->get_parent_menu();
		//$data['packages'] = $this->package_model->read($config["per_page"], $page);
		//echo "<pre>".print_r($cart, true); exit;
		$data['content'] = $this->load->view('website/cart/checkout',$data,true);
		$this->load->view('website/plain_index', $data);
	}

	public function thank_you()
	{
		$data['title'] = display('thank_you');
		$data['setting'] = $this->home_model->setting(); 
		// redirect if website status is disabled
		if ($data['setting']->status == 0) 
		redirect(base_url('login'));
		$data['basics'] = $this->home_model->basic_setting();  
		$data['section'] = $this->home_model->section('checkout');
		$data['banner'] = $this->db->select("image")->from('ws_banner')->where('status', 1)->limit(3)->order_by('id', 'DESC')->get()->result();
		
		$data['message']  = display('order_placed');
		
		$this->session->unset_userdata('cart');
		$data['languageList'] = $this->home_model->languageList();
		$data['parent_menu'] = $this->menu_model->get_parent_menu();
		$data['content'] = $this->load->view('website/cart/thank_you',$data,true);
		$this->load->view('website/plain_index', $data);
	}
}
