<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Transaction extends CI_Controller {

    public function __construct() 
    {
        parent::__construct();
    }

    public function index()
    {
        $json = array();
        if (!empty($_POST['razorpay_payment_id']) && !empty($_POST['merchant_order_id'])) 
        {
            $razorpay_payment_id = $_POST['razorpay_payment_id'];
            $merchant_order_id = $_POST['merchant_order_id'];
            $currency_code = $_POST['currency_code_id'];
            // store temprary data
            $dataFlesh = array(
                'card_holder_name' => $_POST['card_holder_name_id'],
                'merchant_amount' => $_POST['merchant_amount'],
                'merchant_total' => $_POST['merchant_total'],
                'surl' => $_POST['merchant_surl_id'],
                'furl' => $_POST['merchant_furl_id'],
                'currency_code' => $currency_code,
                'order_id' => $_POST['merchant_order_id'],
                'razorpay_payment_id' => $_POST['razorpay_payment_id'],
            );

            $paymentInfo = $dataFlesh;
            //$payment_id = '';
            $order_info = array('order_status_id' => $_POST['merchant_order_id']);
            $amount = $_POST['merchant_total'];
            $currency_code = $_POST['currency_code_id'];
            // bind amount and currecy code
            $data = array(
                'amount' => $amount,
                'currency' => $currency_code,
            );
            $success = false;
            $error = '';
            $response_array = array();

            try {
                $ch = $this->get_curl_handle($razorpay_payment_id, $data);
                //execute post
                $result = curl_exec($ch);
                $data = json_decode($result);
               
                $http_status = curl_getinfo($ch, CURLINFO_HTTP_CODE);
            
                if ($result === false) {
                    $success = false;
                    $error = 'Curl error: ' . curl_error($ch);
                } else {
                    $response_array = json_decode($result, true);
                    //$json = $response_array;
                    //echo "<pre>".print_r($response_array); exit;
                    //Check success response
                    if ($http_status === 200 and isset($response_array['error']) === false) {
                        $success = true;
                        $json['payment_id'] = $response_array['id'];
                    } else {
                        $success = false;
                        if (!empty($response_array['error']['code'])) {
                            $error = $response_array['error']['code'] . ':' . $response_array['error']['description'];
                        } else {
                            $error = 'Invalid Response <br/>' . $result;
                        }
                    }
                }
                //close connection
                curl_close($ch);
            } catch (Exception $e) {
                $success = false;
                $error = 'Request to Razorpay Failed';
            }
            if ($success === true) 
            {
                if (!$order_info['order_status_id']) {
                    $json['redirectURL'] = $_POST['merchant_surl_id'];
                } else {
                    $json['redirectURL'] = $_POST['merchant_surl_id'];
                }
            } else {
                $json['redirectURL'] = $_POST['merchant_furl_id'];
            }
            $json['msg'] = '';
        }
        else 
        {
            $json['msg'] = 'An error occured. Contact site administrator, please!';
        }
        header('Content-Type: application/json');
        echo json_encode($json);
    }
    private function get_curl_handle($payment_id, $data) {
        $url = 'https://api.razorpay.com/v1/payments/' . $payment_id . '/capture';
        $key_id = RAZOR_KEY_ID;
        $key_secret = RAZOR_KEY_SECRET;
        $params = http_build_query($data);
        //cURL Request
        $ch = curl_init();
        //set the url, number of POST vars, POST data
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_USERPWD, $key_id . ':' . $key_secret);
        curl_setopt($ch, CURLOPT_TIMEOUT, 60);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $params);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, true);
        return $ch;
    }
    public function thanks()
    {
        // $data['module'] = display("website");
        // $data['title'] = "Appointment Thanks";
        // #-----------Setting-------------# 
        // $data['setting'] = $this->home_model->setting(); 
        // // redirect if website status is disabled
        // if ($data['setting']->status == 0) 
        //     redirect(base_url('login'));
        // #-------------------------------#    
        // // get banner slider 
        // $data['banner'] = $this->db->select("image")->from('ws_banner')->where('status', 1)->limit(3)->order_by('id', 'DESC')->get()->result();
        // $data['languageList'] = $this->home_model->languageList(); 
        // $data['parent_menu'] = $this->menu_model->get_parent_menu();
        // $data['deptsFooter'] = $this->department_model->read_footer();
        // //$data['appointment'] = $this->appointment_model->read_by_id($appointment_id);

        // $appointment_data = $this->session->userdata('appointment');
        // //echo "<pre>".print_r($appointment_data,true); exit;
        // $data['message'] = '';
        // if(isset($appointment_data['postData']))
        // {
        //     $postData = $appointment_data['postData'];
        //     $postData['payment_mode'] = 'Online';
        //     //echo "<pre>".print_r($postData,true); exit;
        //     if ($this->appointment_model->create($postData)) 
        //     {
        //         $data['message'] = 'Your payment was successfully, please click on bellow link to view appointment details';
        //         if($appointment_data['appointment_source'] == 'website')
        //         {
        //             $data['redirect_url'] = 'appointment_info/'.$postData['appointment_id'];
        //         }
        //         else if($appointment_data['appointment_source'] == 'patient')
        //         {
        //             $data['redirect_url'] = 'dashboard_patient/appointment/appointment/view/'.$postData['appointment_id'];
        //         }
        //         else
        //         {
        //             $data['redirect_url'] = 'appointment/view/'.$postData['appointment_id'];
        //         }
                
        //     }
        //     else
        //     {
        //         $data['message'] = 'Your payment was successfully, but due to some technical error appointment was not scheduled. Please contact website administrator for more details';
        //     }
        // }
        // //echo "<pre>".print_r($data, true); exit;
       
        // #-------------------------------#   

        // $data['content'] = $this->load->view('website/payment/thanks',$data, true);
        // $this->load->view('website/index_plain', $data);
    }
}
