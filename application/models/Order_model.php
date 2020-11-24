<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Order_model extends CI_Model {

	private $table = 'package_orders';

	public function __construct()
	{
		parent::__construct();
		$this->language = $this->input->cookie('Lng', true);
		$this->defualt = $this->db->get('setting')->row()->language;
	}

	public function create($data = [])
	{	 
		return $this->db->insert($this->table,$data);
	}
	public function update_order($id = 0, $data = [])
	{	 
		$response_id = $id;
		if($id)
		{
			$response_id =  $this->db->update($this->table, $data, array('order_id' => $id));
			// $this->db->where('id', $id);
			// $this->db->update($this->table, $data);
		}
		return $response_id;
	}
	public function create_appointment($data = [])
	{	 
		return $this->db->insert('package_orders_appointments',$data);
	}

	public function read()
	{
		return $this->db->select($this->table.".*, patient.id as patient_id,patient.patient_id as patient_code, patient.firstname, patient.lastname, patient.email, patient.mobile, package.package_title, package.package_code, package.package_price as regular_price, package.package_special_price, package.package_slots") 
			->from($this->table)
			->join("patient", 'patient.id=package_orders.patient_id', 'left')
			->join("package", 'package.package_id=package_orders.package_id', 'left')
			->order_by('order_id','desc')
			->get()
			->result();
	} 
	public function read_by_patient($user_id = null)
	{
		return $this->db->select($this->table.".*, patient.id as patient_id,patient.patient_id as patient_code, patient.firstname, patient.lastname, patient.email, patient.mobile, package.package_title, package.package_code, package.package_price as regular_price, package.package_special_price, package.package_slots") 
			->from($this->table)
			->join("patient", 'patient.id=package_orders.patient_id', 'left')
			->join("package", 'package.package_id=package_orders.package_id', 'left')
			->where($this->table.'.patient_id',$user_id)
			->order_by('order_id','desc')
			->get()
			->result();
	} 

	public function read_by_id($id = null)
	{
		$result = array();
		$result =  $this->db->select($this->table.".*, patient.id as patient_id,patient.patient_id as patient_code, patient.firstname, patient.lastname, patient.email, patient.mobile, package.package_title, package.package_code, package.package_price as regular_price, package.package_special_price, package.package_slots") 
		->from($this->table)
		->join("package", 'package.package_id=package_orders.package_id', 'left')
		->join("patient", 'patient.id=package_orders.patient_id', 'left')
		->where($this->table.'.order_id',$id)
		->get()
		->row();
		//echo $this->db->last_query(); exit;
		return $result;
	}
	public function read_by_status($status = 'Ordered')
	{
		$result = array();
		$result =  $this->db->select($this->table.".*, patient.id as patient_id,patient.patient_id as patient_code, patient.firstname, patient.lastname, patient.email, patient.mobile, package.package_title, package.package_code, package.package_price as regular_price, package.package_special_price, package.package_slots") 
		->from($this->table)
		->join("package", 'package.package_id=package_orders.package_id', 'left')
		->join("patient", 'patient.id=package_orders.patient_id', 'left')
		->where($this->table.'.order_status',$status)
		->get()
		->result();
		//->row();
		//echo $this->db->last_query(); exit;
		return $result;
	}
	public function booked_slots_count_by_order($order_id = null, $status = 'Active')
	{
		$result = $this->db->select("package_orders_appointments.*")
			->from('package_orders_appointments')
			->join('appointment', 'appointment.id = package_orders_appointments.package_appointment_id')
			->where('package_orders_appointments.package_order_id',$order_id)
			->where('appointment.status', 1)
			->or_where('appointment.status', 2)
			->or_where('appointment.status', 6)
			->order_by('package_orders_appointments.package_order_appoinment_id','desc')
			->get()
			->num_rows();
			//echo $this->db->last_query(); exit;
		return $result;
	}
	public function read_slots_by_order($order_id = null)
	{
		return $this->db->select("
				package_orders_appointments.package_order_appoinment_id,
				package_orders_appointments.package_order_id,
				package_orders_appointments.package_appoinment_status,
				package_orders_appointments.package_appointment_id,
				appointment.*, 
				appointment.appointment_id, 
				appointment.serial_no, 
				appointment.problem, 
				appointment.date, 
				usrLn.firstname, 
				usrLn.lastname,  
				user.picture,
				user.meeting_url,  
				user.meeting_user_id,  
				user.meeting_password,    
				usrLn.degree,  
				department.name as name,
				department.price as price,
				main_department.name as branch_name,
				schedule.available_days,
				schedule.start_time,
				schedule.end_time,
				schedule.schedule_type,
				patient.firstname AS pfirstname,
				patient.lastname AS plastname,
				patient.date_of_birth,
				patient.sex,
				patient.mobile,
				patient.picture,
			")
			->from('package_orders_appointments')
			->join('appointment', 'appointment.id = package_orders_appointments.package_appointment_id')
			->join('user','user.user_id = appointment.doctor_id','left')
			->join('user_lang as usrLn','usrLn.user_id = appointment.doctor_id')
			->join('department','department.dprt_id = appointment.department_id','left')
			->join('main_department', 'department.main_id=main_department.id', 'left')
			->join('patient','patient.patient_id = appointment.patient_id')
			->join('schedule','schedule.schedule_id = appointment.schedule_id','left')
			->where('package_orders_appointments.package_order_id',$order_id)
			->where('usrLn.language', (!empty($this->language)?$this->language:$this->defualt))
			->order_by('appointment.id','desc')
			->get()
			->result();
	} 

	public function update($data = [])
	{
		return $this->db->where('order_id',$data['order_id'])
			->update($this->table,$data); 
	} 

	public function delete($id = null)
	{
		$this->db->where('order_id',$id)
			->delete($this->table);

		if ($this->db->affected_rows()) {
			return true;
		} else {
			return false;
		}
	} 
}
