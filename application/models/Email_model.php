<?php 
/** Employee model for all employee activities */
class Email_model extends CI_Model
{
    public function __construct()
	{
		parent::__construct();
		$this->language = $this->input->cookie('Lng', true);
		$this->defualt = $this->db->get('setting')->row()->language;
	}
    public function send_mail($data=[]) 
    {
		$sent=FALSE;
        if(!empty($data) && count($data)>0)
        {
            $messageBody = $this->load->view('email/general_email_template',$data,true);
            $this->load->library('email');
            $config['protocol']    	= 'smtp';
            $config['smtp_host']    = 'smtp.gmail.com';
            $config['smtp_port']    = '587';
            $config['smtp_crypto']  = 'tls';
            $config['smtp_timeout'] = '5';
            $config['smtp_user']    = 'hrportal.alertcenter@gmail.com';
            $config['smtp_pass']    = 'asm@1234';
            
            $config['charset']    	= 'utf-8';
            $config['newline']    	= "\r\n";
            $config['mailtype'] 	= 'html'; // or html
            $config['validation'] 	= TRUE; // bool whether to validate email or not 
            
            $this->email->initialize($config);
            $from_email = 'nazeer@dimensionstherapy.org';
            $from_name = $data['subject'];
            if(isset($data['from']) && !empty($data['from']) && isset($data['from_name']) && !empty($data['from_name']))
            {
                $from_email = $data['from'];
                $from_name = $data['from_name'];
            }
            elseif(isset($data['from']) && !empty($data['from']))
            {
                $from_email = $data['from'];
            }
            $this->email->from($from_email,$from_name);
            $this->email->to($data['to']);
            if(isset($data['cc'])){
                $this->email->cc($data['cc']);
            }
            $this->email->subject($data['subject']);
            //if($data['file'])
            //$this->email->attach($data['file']);
            $this->email->message($messageBody);
            //echo $this->email->print_debugger();
            //$this->email->send();
            //echo "<pre>".print_r($this->email,true); exit;;
            if($this->email->send()){
                //echo "succeess";
                $this->session->set_flashdata("email_sent","Email sent successfully.");
                    $sent=TRUE;
            }
            else
            {
                $from = $data['from'];
                $to = $data['to'];
                $subject = $data['subject'];
                $message = $messageBody;
                $headers = "From:" . $from;
                $headers .= 'Cc: '.$data['cc']. "\r\n";
                $headers .= "MIME-Version: 1.0\r\n";
                $headers .= "Content-Type: text/html; charset=ISO-8859-1\r\n";
                mail($to,$subject,$message, $headers);
                //show_error($this->email->print_debugger());
                $this->session->set_flashdata("email_sent","Error in sending Email."); 
            }
		}
		return $sent;
    }

    public function get_email_template($object = true, $conditions = array(), $order_by =['id' => 'asc'], $limit = 0,$start = 0)
    {
        $response = array();
        $this->db->select(
            "email_templates.*"
        );
        $this->db->from('email_templates');

        if(isset($conditions) && !empty($conditions))
        {
            foreach($conditions as $key => $value)
            {
                $this->db->where("email_templates.".$key, $value);
            }
        }

        if(isset($like) && !empty($like)){
			$this->db->like($like);
        }
        
        if(isset($order_by) && !empty($order_by)){
            foreach($order_by as $key => $value)
            {
                $this->db->order_by($key, $value);
            }
		}
        if(!empty($limit)){
			$this->db->limit($limit,$start);
		}
        $result = $this->db->get();
        //echo $this->db->last_query(); exit;

        $response =  ($object) ? $result->result() :  $result->result_array();
        return $response;
    }
    public function get($object = true, $conditions = array(), $order_by =['id' => 'asc'], $limit = 0,$start = 0)
    {
        $response = array();
        $this->db->select(
            $this->config->item('table_employee_emails').".*"
        );
        $this->db->from($this->config->item('table_employee_emails'));

        if(isset($conditions) && !empty($conditions))
        {
            foreach($conditions as $key => $value)
            {
                $this->db->where($key, $value);
            }
        }

        if(isset($like) && !empty($like)){
			$this->db->like($like);
        }
        
        if(isset($order_by) && !empty($order_by)){
            foreach($order_by as $key => $value)
            {
                $this->db->order_by($key, $value);
            }
		}
        if(!empty($limit)){
			$this->db->limit($limit,$start);
		}
        $result = $this->db->get();
        //echo $this->db->last_query(); exit;

        $response =  ($object) ? $result->result() :  $result->result_array();
        return $response;
    }
    
    function sendIcalEvent($from_name, $from_address, $to_name, $to_address, $startTime, $endTime, $subject, $description, $location)
    {
        $domain = 'altencalsoftlabs.com';

        //Create Email Headers
        $mime_boundary = "----Meeting Booking----".MD5(TIME());

        $headers = "From: ".$from_name." <".$from_address.">\n";
        $headers .= "Reply-To: ".$from_name." <".$from_address.">\n";
        $headers .= "MIME-Version: 1.0\n";
        $headers .= "Content-Type: multipart/alternative; boundary=\"$mime_boundary\"\n";
        $headers .= "Content-class: urn:content-classes:calendarmessage\n";

        //Create Email Body (HTML)
        $message = "--$mime_boundary\r\n";
        $message .= "Content-Type: text/html; charset=UTF-8\n";
        $message .= "Content-Transfer-Encoding: 8bit\n\n";
        $message .= "<html>\n";
        $message .= "<body>\n";
        //$message .= '<p>Dear '.$to_name.',</p>';
        $message .= '<p>'.$description.'</p>';
        $message .= "</body>\n";
        $message .= "</html>\n";
        $message .= "--$mime_boundary\r\n";

        $ical = 'BEGIN:VCALENDAR' . "\r\n" .
        'PRODID:-//Microsoft Corporation//Outlook 10.0 MIMEDIR//EN' . "\r\n" .
        'VERSION:2.0' . "\r\n" .
        'METHOD:REQUEST' . "\r\n" .
        'BEGIN:VTIMEZONE' . "\r\n" .
        'TZID:Eastern Time' . "\r\n" .
        'BEGIN:STANDARD' . "\r\n" .
        'DTSTART:20091101T020000' . "\r\n" .
        'RRULE:FREQ=YEARLY;INTERVAL=1;BYDAY=1SU;BYMONTH=11' . "\r\n" .
        'TZOFFSETFROM:-0400' . "\r\n" .
        'TZOFFSETTO:-0500' . "\r\n" .
        'TZNAME:EST' . "\r\n" .
        'END:STANDARD' . "\r\n" .
        'BEGIN:DAYLIGHT' . "\r\n" .
        'DTSTART:20090301T020000' . "\r\n" .
        'RRULE:FREQ=YEARLY;INTERVAL=1;BYDAY=2SU;BYMONTH=3' . "\r\n" .
        'TZOFFSETFROM:-0500' . "\r\n" .
        'TZOFFSETTO:-0400' . "\r\n" .
        'TZNAME:EDST' . "\r\n" .
        'END:DAYLIGHT' . "\r\n" .
        'END:VTIMEZONE' . "\r\n" .  
        'BEGIN:VEVENT' . "\r\n" .
        'ORGANIZER;CN="'.$from_name.'":MAILTO:'.$from_address. "\r\n" .
        'ATTENDEE;CN="'.$to_name.'";ROLE=REQ-PARTICIPANT;RSVP=TRUE:MAILTO:'.$to_address. "\r\n" .
        'LAST-MODIFIED:' . date("Ymd\TGis") . "\r\n" .
        'UID:'.date("Ymd\TGis", strtotime($startTime)).rand()."@".$domain."\r\n" .
        'DTSTAMP:'.date("Ymd\TGis"). "\r\n" .
        'DTSTART;TZID="Eastern Time":'.date("Ymd\THis", strtotime($startTime)). "\r\n" .
        'DTEND;TZID="Eastern Time":'.date("Ymd\THis", strtotime($endTime)). "\r\n" .
        'TRANSP:OPAQUE'. "\r\n" .
        'SEQUENCE:1'. "\r\n" .
        'SUMMARY:' . $subject . "\r\n" .
        'LOCATION:' . $location . "\r\n" .
        'CLASS:PUBLIC'. "\r\n" .
        'PRIORITY:5'. "\r\n" .
        'BEGIN:VALARM' . "\r\n" .
        'TRIGGER:-PT15M' . "\r\n" .
        'ACTION:DISPLAY' . "\r\n" .
        'DESCRIPTION:Reminder' . "\r\n" .
        'END:VALARM' . "\r\n" .
        'END:VEVENT'. "\r\n" .
        'END:VCALENDAR'. "\r\n";
        $message .= 'Content-Type: text/calendar;name="meeting.ics";method=REQUEST'."\n";
        $message .= "Content-Transfer-Encoding: 8bit\n\n";
        $message .= $ical;

        $mailsent = @mail($to_address, $subject, $message, $headers);
                
        return ($mailsent)?(true):(false);
    }

    // Execute email notification on actions
    public function parent_register($user_id = 0, $status_id = 1)
    {
        //ini_set('display_errors', 1); error_reporting(E_ALL);
        $response = array();
        $response['status'] = false;
        $response['message'] = 'Email send failed';
        $response['id'] = '';
        
        if($user_id && $status_id)
        {
            $email_conditions = array();
            $email_conditions['template_type'] = 'parent_register';
            $email_conditions['template_type_status_id'] = $status_id;
            $email_conditions['status'] = 1;
            
            $template = $this->get_email_template($object = false, $email_conditions);
            
            $email_template = '';
            $profile_status_title = ($status_id == 1 ) ? 'Active' : 'In-active';

            $profile_url = base_url().'recruitment/profile/'.$user_id;
            $login_url = base_url().'parent_login';

            $footer = 'Request you to <a href="'.$login_url.'" target="_blank">Login</a> to Alten HR Portal and start processing candidate.';
           
            $conditions = array('id' => $user_id);
            $request_parametters = $this->get_parent_email_data($object=false, $conditions);
            
            if(!empty($request_parametters))
            {
                $request_parametters = $request_parametters[0];
                $request_parametters['##footer##']          = $footer;
                $request_parametters['##profile_url##']     = $profile_url;
                $request_parametters['##login_url##']       = $login_url;
            }
            if(isset($request_parametters['##status_title##']))
            {
                $request_parametters['##status_title##'] = $profile_status_title;
            }
           
            //$additional = $this->get_additional_parameters($status_id, $job_applicant_id, $approver_level);
            $parameters = array();
            //echo "<pre>".print_r($additional,true); exit;
            if(!empty($additional))
            {
                $i = 0;
                foreach($additional as $key => $additional_item)
                {
                    $parameters[$i] = array_merge($request_parametters, $additional_item);
                    $i++;
                }
            }
            else
            {
                $parameters[0] = $request_parametters;
            }
            //echo "<pre>".print_r($parameters,true); exit;
            
            //echo "<pre>".print_r($parameters,true); exit;
            if(!empty($template))
            {
                foreach($template as $item)
                {
                    $email_template = $item;
                    
                    foreach($parameters as $para)
                    {
                        $demo = (ENVIRONMENT == 'production') ? false : false;
                        $para = $this->set_paras($demo, $para);
                       
                        if(!empty($para))
                        {
                            $subject = $email_template['subject'];
                            $message = $email_template['message'];

                            $subject = strtr($subject,$para);
                            $message = strtr($message,$para);
                            
                            $from = 'nazeer@dimensionstherapy.org';
                            $to = $this->get_to_email_id($email_template['template_send_to'], $para);
                            $cc = 'nazeer@dimensionstherapy.org';
                            //echo "<pre>".print_r($to,true); exit;
                            if($to != '')
                            {
                                $sendEmailData=[
                                    'to'        => $to,
                                    'cc'        => $cc,
                                    'from'      => $from,
                                    'from_name' => 'DCCD',
                                    'subject'   => $subject,
                                    'message'   => $message
                                ];
                                
                                if($this->send_mail($sendEmailData))
                                {
                                    $response['status'] = true;
                                    $response['message'] = 'Email send successfully';
                                    $response['id'] = $user_id;
                                }
                            }
                            else
                            {
                                $response['message'] = 'Email to not valid';
                            }
                        }
                    }
                    //exit;
                }
            }
        }
        return $response;
    }
    // Execute email notification on actions
    public function appointment($id = 0, $status_id = 1)
    {
        //ini_set('display_errors', 1); error_reporting(E_ALL);
        $response = array();
        $response['status'] = false;
        $response['message'] = 'Email send failed';
        $response['id'] = '';
        
        if($id && $status_id)
        {
            $email_conditions = array();
            $email_conditions['template_type'] = 'appointment';
            $email_conditions['template_type_status_id'] = $status_id;
            $email_conditions['status'] = 1;
            
            $template = $this->get_email_template($object = false, $email_conditions);
            //echo "<pre>".print_r($template,true); exit;
            $email_template = '';
            $profile_status_title = get_appointment_status($status_id);

            $profile_url = base_url().'dashboard_patient/home/profile';
            $login_url = base_url().'parent_login';

            $footer = 'Request you to <a href="'.$login_url.'" target="_blank">Login</a> to DCCD.';
           
            $conditions = array('id' => $id);
            $request_parametters = $this->get_appointment_email_data($object=false, $conditions);
            //echo "<pre>".print_r($request_parametters,true); exit;
            if(!empty($request_parametters))
            {
                $request_parametters = $request_parametters[0];
                $request_parametters['##footer##']          = $footer;
                $request_parametters['##profile_url##']     = $profile_url;
                $request_parametters['##login_url##']       = $login_url;
                $request_parametters['##admin_login_url##'] = base_url().'login';
                $request_parametters['##appointment_url##'] = base_url().'dashboard_patient/appointment/appointment/view/';
                $request_parametters['##admin_appointment_url##'] = base_url().'appointment/view/';
            }
            if(isset($request_parametters['##status_title##']))
            {
                $request_parametters['##status_title##'] = $profile_status_title;
            }
           
            //$additional = $this->get_additional_parameters($status_id, $job_applicant_id, $approver_level);
            $parameters = array();
            //echo "<pre>".print_r($request_parametters,true); exit;
            if(!empty($additional))
            {
                $i = 0;
                foreach($additional as $key => $additional_item)
                {
                    $parameters[$i] = array_merge($request_parametters, $additional_item);
                    $i++;
                }
            }
            else
            {
                $parameters[0] = $request_parametters;
            }
            //echo "<pre>".print_r($parameters,true); exit;
            
            //echo "<pre>".print_r($template,true); exit;
            if(!empty($template))
            {
                foreach($template as $item)
                {
                    $email_template = $item;
                    
                    foreach($parameters as $para)
                    {
                        $demo = (ENVIRONMENT == 'production') ? false : false;
                        $para = $this->set_paras($demo, $para);
                        //echo "<pre>Para:".print_r($para,true); exit;
                        if(!empty($para))
                        {
                            $subject = $email_template['subject'];
                            $message = $email_template['message'];

                            $subject = strtr($subject,$para);
                            $message = strtr($message,$para);
                            //echo "<pre>".print_r($para,true); exit;
                            $from = 'nazeer@dimensionstherapy.org';
                            $to = $this->get_to_email_id($email_template['template_send_to'], $para);
                            $cc = 'nazeer@dimensionstherapy.org';
                            //echo "<pre>".print_r($to,true); exit;
                            if($to != '')
                            {
                                $sendEmailData=[
                                    'to'        => $to,
                                    'cc'        => $cc,
                                    'from'      => $from,
                                    'from_name' => 'DCCD',
                                    'subject'   => $subject,
                                    'message'   => $message
                                ];
                                
                                if($this->send_mail($sendEmailData))
                                {
                                    $response['status'] = true;
                                    $response['message'] = 'Email send successfully';
                                    $response['id'] = $id;
                                }
                            }
                            else
                            {
                                $response['message'] = 'Email to not valid';
                            }
                        }
                    }
                    //exit;
                }
            }
        }
        return $response;
    }

    // Get data for email
    public function get_parent_email_data($object = true, $conditions = array(), $like = array(), $order_by =['patient.id' => 'asc'], $limit = 0,$start = 0)
    {
        $response = array();
        $this->db->select('patient.firstname as ##firstname##, 
            patient.lastname as ##lastname##, patient.email as ##parent_email##, patient.phone as ##phone##, '
            
        );

        $this->db->from('patient');

        if(isset($conditions) && !empty($conditions)){
            foreach($conditions as $key => $value)
            {
                $this->db->where("patient.".$key, $value);
            }
        }

        if(isset($order_by) && !empty($order_by)){
            foreach($order_by as $key => $value)
            {
                $this->db->order_by($key, $value);
            }
        }
        if(!empty($limit)){
            $this->db->limit($limit,$start);
        }
        $result = $this->db->get();
        //echo $this->db->last_query(); exit;

        $response =  ($object) ? $result->result() :  $result->result_array();
        return $response;
    }
    // Get data for email
    public function get_appointment_email_data($object = true, $conditions = array(), $like = array(), $order_by =['appointment.id' => 'asc'], $limit = 0,$start = 0)
    {
        $response = array();
        $this->db->select("
        appointment.appointment_id as ##appointment_id##, 
        appointment.serial_no, 
        appointment.problem, 
        appointment.date, 
        usrLn.firstname as ##dfirstname##, 
        usrLn.lastname as ##dlastname##,  
        user.email as ##demail##,
        user.picture,
        user.meeting_url,  
        user.meeting_user_id,  
        user.meeting_password,  
        usrLn.degree,  
        transaction.transaction_id,  
        transaction.refund_id,  
        transaction.amount as refund_amount,  
        transaction.status as refund_status,  
        transaction.speed_processed as speed_processed,  
        transaction.created_date as refund_date,  
        department.name as department,
        department.price as price,
        main_department.name as branch_name,
        schedule.available_days,
        schedule.start_time,
        schedule.end_time,
        schedule.schedule_type,
        patient.firstname AS ##pfirstname##,
        patient.lastname AS ##plastname##,
        patient.email AS ##pemail##,
        patient.date_of_birth,
        patient.sex,
        patient.mobile,
        patient.picture,
        "      
        );

        $this->db->from('appointment');
        
        $this->db->join('user','user.user_id = appointment.doctor_id','left');
        $this->db->join('user_lang as usrLn','usrLn.user_id = appointment.doctor_id');
        $this->db->join('department','department.dprt_id = appointment.department_id','left');
        $this->db->join('main_department', 'department.main_id=main_department.id', 'left');
        $this->db->join('patient','patient.patient_id = appointment.patient_id');
        $this->db->join('schedule','schedule.schedule_id = appointment.schedule_id','left');
        $this->db->join('transaction','transaction.payment_id = appointment.payment_id','left');
        if(isset($conditions) && !empty($conditions)){
            foreach($conditions as $key => $value)
            {
                $this->db->where("appointment.".$key, $value);
            }
        }
        $this->db->where('usrLn.language', (!empty($this->language)?$this->language:$this->defualt));
        if(isset($order_by) && !empty($order_by)){
            foreach($order_by as $key => $value)
            {
                $this->db->order_by($key, $value);
            }
        }
        if(!empty($limit)){
            $this->db->limit($limit,$start);
        }
        $result = $this->db->get();
        //echo $this->db->last_query(); exit;

        $response =  ($object) ? $result->result() :  $result->result_array();
        return $response;
    }
    // Get data for email
    public function get_order_email_data($object = true, $conditions = array(), $like = array(), $order_by =['package_orders.order_id' => 'asc'], $limit = 0,$start = 0)
    {
        $response = array();
        $this->db->select("
        package_orders.order_id as ##order_id##, 
        package_orders.order_status, 
        package_orders.total_price, 
        package_orders.created_date, 
        patient.firstname AS ##pfirstname##,
        patient.lastname AS ##plastname##,
        patient.email AS ##pemail##,
        patient.date_of_birth,
        patient.sex,
        patient.mobile,
        patient.picture,
        ");

        $this->db->from('package_orders');
        $this->db->join('patient','patient.id = package_orders.patient_id', 'left');
        if(isset($conditions) && !empty($conditions)){
            foreach($conditions as $key => $value)
            {
                $this->db->where($key, $value);
            }
        }
        if(isset($order_by) && !empty($order_by)){
            foreach($order_by as $key => $value)
            {
                $this->db->order_by($key, $value);
            }
        }
        if(!empty($limit)){
            $this->db->limit($limit,$start);
        }
        $result = $this->db->get();
        //echo $this->db->last_query(); exit;

        $response =  ($object) ? $result->result() :  $result->result_array();
        return $response;
    }

    public function set_paras($demo = false, $parameters = array())
    {
        $response = '';
        if(!empty($parameters))
        {
            $response = $parameters;
            if(isset($parameters['##pemail##']))
            {
                $response['##parent_email##'] = $parameters['##pemail##'];
            }

            if(isset($parameters['##appointment_url##']) && isset($parameters['##appointment_id##']))
            {
                $response['##appointment_url##'] = $parameters['##appointment_url##'].$parameters['##appointment_id##'];
            }

            if(isset($parameters['##admin_appointment_url##']) && isset($parameters['##appointment_id##']))
            {
                $response['##admin_appointment_url##'] = $parameters['##admin_appointment_url##'].$parameters['##appointment_id##'];
            }
            if(isset($parameters['##order_url##']) && isset($parameters['##order_url##']))
            {
                $response['##order_url##'] = $parameters['##order_url##'].$parameters['##order_id##'];
            }
            if($demo)
            {
                if(isset($parameters['##parent_email##']))
                {
                    $response['##parent_email##'] = $parameters['##parent_email##'];
                }
                if(isset($parameters['##pemail##']))
                {
                    $response['##parent_email##'] = $parameters['##pemail##'];
                }
                if(isset($parameters['##appointment_url##']) && isset($parameters['##appointment_id##']))
                {
                    $response['##appointment_url##'] = $parameters['##appointment_url##'].$parameters['##appointment_id##'];
                }
                if(isset($parameters['##demail##']))
                {
                    $response['##demail##'] = $parameters['##demail##'];
                }
            }            
        }
        return $response;
    }

    public function get_to_email_id($to_name = '', $parametters = array())
    {
        $response = '';
        $testmail = 'testmail_email@yopmail.com';
        //echo "<pre>$to_name".print_r($parametters,true); 
        if($to_name != '' && !empty($parametters))
        {
            switch($to_name)
            {
                case 'parent':
                    $response = (isset($parametters['##parent_email##'])) ? $parametters['##parent_email##'] : $testmail;
                    break;

                default:
                    $response = 'sunil.n@yopmail.com';
                    break;
            }
        }
        //echo "<pre>$to_name".print_r($response,true); exit;
        return $response;
    }

    // Execute email notification on actions
    public function package_order($id = 0, $status_id = 1)
    {
        //ini_set('display_errors', 1); error_reporting(E_ALL);
        $response = array();
        $response['status'] = false;
        $response['message'] = 'Email send failed';
        $response['id'] = '';
        
        if($id && $status_id)
        {
            $email_conditions = array();
            $email_conditions['template_type'] = 'package';
            $email_conditions['template_type_status_id'] = $status_id;
            $email_conditions['status'] = 1;
            
            $template = $this->get_email_template($object = false, $email_conditions);
            //echo "<pre>".print_r($template,true); exit;
            $email_template = '';
            $profile_status_title = get_order_status($status_id);

            $profile_url = base_url().'dashboard_patient/home/profile';
            $login_url = base_url().'parent_login';

            $footer = 'Request you to <a href="'.$login_url.'" target="_blank">Login</a> to DCCD.';
           
            $conditions = array('package_orders.order_id' => $id);
            $request_parametters = $this->get_order_email_data($object=false, $conditions);
            //echo "<pre>".print_r($request_parametters,true); exit;
            if(!empty($request_parametters))
            {
                $request_parametters = $request_parametters[0];
                $request_parametters['##footer##']          = $footer;
                $request_parametters['##profile_url##']     = $profile_url;
                $request_parametters['##login_url##']       = $login_url;
                $request_parametters['##admin_login_url##'] = base_url().'login';
                $request_parametters['##appointment_url##'] = base_url().'dashboard_patient/appointment/appointment/view/';
                $request_parametters['##order_url##'] = base_url().'dashboard_patient/packages/orders/view/';
                $request_parametters['##admin_appointment_url##'] = base_url().'appointment/view/';
            }
            if(isset($request_parametters['##status_title##']))
            {
                $request_parametters['##status_title##'] = $profile_status_title;
            }
           
            //$additional = $this->get_additional_parameters($status_id, $job_applicant_id, $approver_level);
            $parameters = array();
            //echo "<pre>".print_r($request_parametters,true); exit;
            if(!empty($additional))
            {
                $i = 0;
                foreach($additional as $key => $additional_item)
                {
                    $parameters[$i] = array_merge($request_parametters, $additional_item);
                    $i++;
                }
            }
            else
            {
                $parameters[0] = $request_parametters;
            }
            //echo "<pre>".print_r($parameters,true); exit;
            
            //echo "<pre>".print_r($template,true); exit;
            if(!empty($template))
            {
                foreach($template as $item)
                {
                    $email_template = $item;
                    
                    foreach($parameters as $para)
                    {
                        $demo = (ENVIRONMENT == 'production') ? false : false;
                        $para = $this->set_paras($demo, $para);
                        //echo "<pre>Para:".print_r($para,true); exit;
                        if(!empty($para))
                        {
                            $subject = $email_template['subject'];
                            $message = $email_template['message'];

                            $subject = strtr($subject,$para);
                            $message = strtr($message,$para);
                            //echo "<pre>".print_r($para,true); exit;
                            $from = 'nazeer@dimensionstherapy.org';
                            $to = $this->get_to_email_id($email_template['template_send_to'], $para);
                            $cc = 'sunilnalawade15@gmail.com';
                            //echo "<pre>".print_r($to,true); exit;
                            if($to != '')
                            {
                                $sendEmailData=[
                                    'to'        => $to,
                                    'cc'        => $cc,
                                    'from'      => $from,
                                    'from_name' => 'DCCD',
                                    'subject'   => $subject,
                                    'message'   => $message
                                ];
                                
                                if($this->send_mail($sendEmailData))
                                {
                                    $response['status'] = true;
                                    $response['message'] = 'Email send successfully';
                                    $response['id'] = $id;
                                }
                            }
                            else
                            {
                                $response['message'] = 'Email to not valid';
                            }
                        }
                    }
                    //exit;
                }
            }
        }
        return $response;
    }
}
