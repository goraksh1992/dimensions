<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
/*
*
* ---------------how to use-----------------
* ------------------------------------------
* Developed by <sourav.diubd@gmail.com>
*
* $autoload['helper'] =  array('lang');

* display a language
* echo display('helloworld'); 

* display language list
* $lang = languageList(); 
* ------------------------------------------
*
*/


if (!function_exists('display')) {

    function display($text = null)
    {
        $ci =& get_instance();
        $ci->load->database();
        $userLang = $ci->input->cookie('Lng', true);
        $table  = 'language';
        $phrase = 'phrase';
        $setting_table = 'setting';
        $default_lang  = 'english';

        //set language  
        $data = $ci->db->get($setting_table)->row();
        if (!empty($data->language)) {
            if(!empty($userLang )){
                $language = $userLang ; 
            }else{
                $language = $data->language;
            }
             
        } else {
            $language = $default_lang; 
        } 
 
        if (!empty($text)) {

            if ($ci->db->table_exists($table)) { 

                if ($ci->db->field_exists($phrase, $table)) { 

                    if ($ci->db->field_exists($language, $table)) {

                        $row = $ci->db->select($language)
                              ->from($table)
                              ->where($phrase, $text)
                              ->get()
                              ->row(); 

                        if (!empty($row->$language)) {
                            return $row->$language;
                        } else {
                            return false;
                        }

                    } else {
                        return false;
                    }

                } else {
                    return false;
                }

            } else {
                return false;
            }            
        } else {
            return false;
        }  

    }
 
}

if (!function_exists('print_value')) {
    function print_value($input_array = [], $varibale = '', $blank_response = FALSE)
    {
        $response = ($blank_response) ? '' : '-';
        $input_array = (object)($input_array);
        if(isset($input_array->$varibale))
        {
            $input = isset($input_array->$varibale) ? $input_array->$varibale : $input_array[$varibale];
            if($input != "")
            {
                $response = $input;
            }
        }
        return $response;
    }
}
if (!function_exists('print_date')) {
    function print_date($input_array = [], $varibale = '', $blank_response = FALSE)
    {
        $response = ($blank_response) ? '' : '-';
        $input_array = (object)($input_array);
        if(isset($input_array->$varibale))
        {
            $input = isset($input_array->$varibale) ? $input_array->$varibale : $input_array[$varibale];
            if($input != "" && $input !='0000-00-00')
            {
                $response = date("jS F Y", strtotime($input));
            }
        }
        return $response;
    }
}
if (!function_exists('print_schedule_type')) {
    function print_schedule_type($value = '', $blank_response = FALSE)
    {
        $response = ($blank_response) ? '' : '-';
        
        switch($value)
        {
            case '1':
                $response = 'Inperson';
                break;
            case '2':
                $response = 'Online';
                break;
        }
        return $response;
    }
}

function get_order_id()
{
    $response = "order_";
    $response .= randStrGen(3,7);
    return $response;
}
function randStrGen($mode = null, $len = null)
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

function get_appointment_status($status_id = 2)
{
    $response = 'Pending';

    switch($status_id)
    {
        case '1':
            $response = 'Confirmed';
            break;
        case '2':
            $response = 'Pending';
            break;
        case '3':
            $response = 'Canceled';
            break;
        case '4':
            $response = 'Closed';
            break;
        case '5':
            $response = 'Completed';
            break;
        default:
            $response = 'Pending';
            break;
    }

    return $response;
}

function get_leave_status($status_id = 2)
{
    $response = 'Pending';

    switch($status_id)
    {
        case '1':
            $response = 'Pending';
            break;
        case '2':
            $response = 'Approved';
            break;
        case '3':
            $response = 'Rejected';
            break;
        case '4':
            $response = 'Canceled';
            break;
        case '5':
            $response = 'Closed';
            break;
        default:
            $response = 'Pending';
            break;
    }

    return $response;
}
function get_leave_type_list()
{
    $response = [
        0 => 'Select',
        1 => 'Sick leave',
        2 => 'Casual leave',
        3 => 'Maternity leave',
        4 => 'Paternity leave',
        5 => 'Unpaid Leave',
    ];
    return $response;
}
function get_leave_type($leave_type_id = 2)
{
    $response = 'Sick leave';

    switch($leave_type_id)
    {
        case '1':
            $response = 'Sick leave';
            break;
        case '2':
            $response = 'Casual leave';
            break;
        case '3':
            $response = 'Maternity leave';
            break;
        case '4':
            $response = 'Paternity leave';
            break;
        case '5':
            $response = 'Unpaid Leave';
            break;
        case '5':
            $response = 'Half Day';
            break;
        default:
            $response = 'Sick leave';
            break;
    }

    return $response;
}

function print_time($time = '')
{
    $response = '';
    if($time)
    {
        $response = date("h:i a",strtotime($time));
    }
    return $response;
}
function get_order_status($status_id = 1)
{
    $response = 'Ordered';

    switch($status_id)
    {
        case '1':
            $response = 'Ordered';
            break;
        case '2':
            $response = 'Canceled';
            break;
        case '3':
            $response = 'Closed';
            break;        
        default:
            $response = 'Ordered';
            break;
    }

    return $response;
}
// $autoload['helper'] =  array('language_helper');

/*display a language*/
// echo display('helloworld'); 

/*display language list*/
// $lang = languageList(); 
