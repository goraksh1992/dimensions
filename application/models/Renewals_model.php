<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Renewals_model extends CI_Model {

	private $table = 'package_renewals';

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
	
	public function read()
	{
		// return $this->db->select($this->table.".*") 
		// 	->from($this->table)
		// 	->order_by('package_renewal_id','desc')
		// 	->get()
		// 	->result();

		return $this->db->select("package_renewals.package_renewal_id, package_renewals.renewal_status,package_renewals.renewal_email_flag,package_renewals.created_date as renewal_date ,package_orders.*, patient.id as patient_id,patient.patient_id as patient_code, patient.firstname, patient.lastname, patient.email, patient.mobile, package.package_title, package.package_code, package.package_price as regular_price, package.package_special_price, package.package_slots") 
		->from('package_renewals')
		->join("package_orders", 'package_renewals.package_order_id	=package_orders.order_id', 'left')
		->join("patient", 'patient.id=package_orders.patient_id', 'left')
		->join("package", 'package.package_id=package_orders.package_id', 'left')
		->order_by('order_id','desc')
		->get()
		->result();
	} 
	public function read_by_package_renewal_id($package_renewal_id = null)
	{
		return $this->db->select($this->table.".*") 
			->from($this->table)
			->where($this->table.'.package_renewal_id',$package_renewal_id)
			->order_by('package_renewal_id','asc')
			->get()
			->result();
	} 
	public function read_by_package_order_id($package_order_id = null)
	{
		return $this->db->select($this->table.".*") 
			->from($this->table)
			->where($this->table.'.package_order_id',$package_order_id)
			->order_by('package_renewal_id','asc')
			->get()
			->result();
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
		->row();
		//echo $this->db->last_query(); exit;
		return $result;
	}
	public function update($data = [])
	{
		return $this->db->where('package_renewal_id',$data['package_renewal_id'])
			->update($this->table,$data); 
	} 

	public function delete($id = null)
	{
		$this->db->where('package_renewal_id',$id)
			->delete($this->table);

		if ($this->db->affected_rows()) {
			return true;
		} else {
			return false;
		}
	} 
}
