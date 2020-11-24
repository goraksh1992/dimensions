<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Transaction_model extends CI_Model {
    private $table = 'transaction';
    public function index($razorpay_payment_id, $data)
    {
        $ch = $this->get_curl_handle($razorpay_payment_id, $data);
        $result = curl_exec($ch);
        $data = json_decode($result);
        $response = array();
        $response['status'] = false;
        $http_status = curl_getinfo($ch, CURLINFO_HTTP_CODE);
        if ($result === false) 
        {
            $response['error'] = curl_error($ch);
        } 
        else 
        {
            $response_array = json_decode($result, true);
            if ($http_status === 200 and isset($response_array['error']) === false) 
            {
                $response['status'] = true;
                $response['payment_id'] = $response_array['id'];
            } 
            else 
            {
                if (!empty($response_array['error']['code'])) 
                {
                    $response['error'] = $response_array['error']['code'] . ':' . $response_array['error']['description'];
                } 
                else 
                {
                    $response['error'] = 'Invalid Response <br/>' . $result;
                }
            }
        }
        return $response;
    }
    private function get_curl_handle($payment_id, $data) 
    {
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
    public function refund($razorpay_payment_id, $data = array())
    {
        $ch = $this->get_refund_curl_handle($razorpay_payment_id, $data);
        $result = curl_exec($ch);
        $data = json_decode($result);
        $response = array();
        $response['status'] = false;
        $http_status = curl_getinfo($ch, CURLINFO_HTTP_CODE);
        if ($result === false) 
        {
            $response['error'] = curl_error($ch);
        } 
        else 
        {
            $response_array = json_decode($result, true);
            //echo "<pre>".print_r($response_array,true); exit;
            if ($http_status === 200 and isset($response_array['error']) === false) 
            {
                $response['status'] = true;
                $response['result'] = (object) $response_array;
            } 
            else 
            {
                if (!empty($response_array['error']['code'])) 
                {
                    $response['error'] = $response_array['error']['code'] . ':' . $response_array['error']['description'];
                } 
                else 
                {
                    $response['error'] = 'Invalid Response <br/>' . $result;
                }
            }
        }
        return $response;
    }
    private function get_refund_curl_handle($payment_id, $data) 
    {
        $url = 'https://api.razorpay.com/v1/payments/' . $payment_id . '/refund';
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

    public function insert_refund_data($data = array())
    {
        return $this->db->insert($this->table,$data);
    }
}