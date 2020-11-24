<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Package_model extends CI_Model {

	private $table = 'package';

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

	public function create_lang($data = [])
	{	 
		return $this->db->insert('package_lang',$data);
	}
 
	public function read()
	{
		return $this->db->select($this->table.".*, package_category.category_name") 
			->from($this->table)
			->join('package_category', 'package_category.category_id='.$this->table.'.package_category_id', 'left')
			->order_by('package_sort_order','asc')
			->get()
			->result();
	}
	public function get($where = array())
	{
		$response = array();
		$this->db->select($this->table.".*, package_category.category_name");
		$this->db->from($this->table);
		$this->db->join('package_category', 'package_category.category_id='.$this->table.'.package_category_id', 'left');
		if(is_array($where) && count($where))
		{
			$this->db->where($where);
		}
		$this->db->order_by($this->table.'.package_sort_order','asc');
		$response = $this->db->get()->result();
		
		return $response;
	}

	public function read_lang_department()
	{
		return $this->db->select("main_department.name as dname, mdlang.*") 
			->from('main_department_lang as mdlang')
			->join($this->table, 'main_department.id=mdlang.main_id', 'left')
			->order_by('dname','asc')
			->get()
			->result();
	}

	public function read_all()
	{
		return $this->db->select("main_department.id as mid, mdlang.*") 
			->from('main_department_lang as mdlang')
			->join($this->table, 'main_department.id=mdlang.main_id', 'left')
			->where('mdlang.language', (!empty($this->language)?$this->language:$this->defualt))
			->order_by('mdlang.name','asc')
			->get()
			->result();
	}
  
	public function read_by_id($id = null)
	{
		return $this->db->select("*")
			->from($this->table)
			->where('package_id',$id)
			->get()
			->row();
	} 
 
	public function read_lang_by_id($id = null)
	{
		return $this->db->select("*")
			->from('main_department_lang')
			->where('id',$id)
			->get()
			->row();
	} 
 
	public function update($data = [])
	{
		return $this->db->where('package_id',$data['package_id'])
			->update($this->table,$data); 
	} 

	public function update_lang($data = [])
	{
		return $this->db->where('id',$data['id'])
			->update('main_department_lang',$data); 
	} 
 
	public function delete($id = null)
	{
		$this->db->where('package_id',$id)
			->delete($this->table);

		if ($this->db->affected_rows()) {
			return true;
		} else {
			return false;
		}
	} 

	public function delete_lang($id = null)
	{
		$this->db->where('id',$id)
			->delete('main_department_lang');

		if ($this->db->affected_rows()) {
			return true;
		} else {
			return false;
		}
	} 

	public function get_category($where = array())
	{
		$response = array();
		$this->db->select('package_category.*');
		$this->db->from('package_category');
		if(is_array($where) && count($where))
		{
			$this->db->where($where);
		}
		$this->db->order_by('package_category.category_id','asc');
		$response = $this->db->get()->result();
		
		return $response;
	}
	

	public function get_category_dropdown()
	{
		$response = array();
		$category = $this->get_category();
		$response[0] = 'Select Category';
		//echo "<pre>".print_r($category, true); exit;
		foreach($category as $item)
		{
			$response[$item->category_id] = $item->category_name;
		}

		return $response;
	}
	public function get_package_duration()
	{
		$response = array();
		
		$response[0] = 'Select Duration';
		$response['40 Mins'] = '40 Mins';
		$response['30 Mins'] = '30 Mins';
		$response['20 Mins'] = '20 Mins';
		
		return $response;
	}
	
 }
