<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Payment extends CI_Controller {

    public function __construct() 
    {
        parent::__construct();

        $this->load->model(array(
            'website/appointment_model',
            'website/home_model', 
            'website/department_model',
            'website/appointment_instruction_model',
            'website/patient_model',
            'website/menu_model'
        ));   
    }

    public function index()
    {

    }

    public function thanks()
    {
        $data['module'] = display("website");
        $data['title'] = "Appointment Thanks";
        #-----------Setting-------------# 
        $data['setting'] = $this->home_model->setting(); 
        // redirect if website status is disabled
        if ($data['setting']->status == 0) 
            redirect(base_url('login'));
        #-------------------------------#    
        // get banner slider 
        $data['banner'] = $this->db->select("image")->from('ws_banner')->where('status', 1)->limit(3)->order_by('id', 'DESC')->get()->result();
        $data['languageList'] = $this->home_model->languageList(); 
        $data['parent_menu'] = $this->menu_model->get_parent_menu();
        $data['deptsFooter'] = $this->department_model->read_footer();
        //$data['appointment'] = $this->appointment_model->read_by_id($appointment_id);

        $appointment_data = $this->session->userdata('appointment');
        //echo "<pre>".print_r($appointment_data,true); exit;
        $data['message'] = '';
        if(isset($appointment_data['postData']))
        {
            $postData = $appointment_data['postData'];
            $postData['payment_mode'] = 'Online';
            //echo "<pre>".print_r($postData,true); exit;
            if ($this->appointment_model->create($postData)) 
            {
                $data['message'] = 'Your payment was successfully, please click on bellow link to view appointment details';
                if($appointment_data['appointment_source'] == 'website')
                {
                    $data['redirect_url'] = 'appointment_info/'.$postData['appointment_id'];
                }
                else if($appointment_data['appointment_source'] == 'patient')
                {
                    $data['redirect_url'] = 'dashboard_patient/appointment/appointment/view/'.$postData['appointment_id'];
                }
                else
                {
                    $data['redirect_url'] = 'appointment/view/'.$postData['appointment_id'];
                }
                
            }
            else
            {
                $data['message'] = 'Your payment was successfully, but due to some technical error appointment was not scheduled. Please contact website administrator for more details';
            }
        }
        //echo "<pre>".print_r($data, true); exit;
       
        #-------------------------------#   

        $data['content'] = $this->load->view('website/payment/thanks',$data, true);
        $this->load->view('website/index_plain', $data);
    }
}
