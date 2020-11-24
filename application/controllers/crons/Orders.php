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
			'package_model',
			'order_model',
			'renewals_model',
		));
	}
    public function index()
    {
        $data['module'] = display("package_order");
        $data['title'] = display('packages_order_list');
        #-------------------------------#
        $data['oredrs'] = array();
        $data['orders'] = $this->order_model->read_by_status($status = "Closed");
        $data['renewals'] = array();
        //echo "<pre>".print_r($data, true); exit;
        if(sizeof($data['orders']))
        {
            foreach($data['orders'] as $order)
            {
                $order_present = $this->renewals_model->read_by_package_order_id($order->order_id);
                if(!count($order_present))
                {
                    $data['renewals'] = (object)$postData = [
                        'package_order_id' 	        => $order->order_id,
                        'created_by'      		    => $this->session->userdata('user_id'),
                        'updated_by'      		    => $this->session->userdata('user_id'),
                        'created_date'      		=> date('Y-m-d'),
                        'updated_date'      		=> date('Y-m-d h:i:s'),
                    ];

                    if (empty($postData['package_renewal_id'])) {
                        if ($this->renewals_model->create($postData)) 
                        {
                            $data['renewals'] = $order;
                        }
                    }
                }
                else
                {
                    continue;
                }
                
            }
        }
        //echo "<pre>".print_r($data, true);
        $this->load->view('crons/orders/index',$data);
        //$this->load->view('layout/main_wrapper',$data);
    }
}