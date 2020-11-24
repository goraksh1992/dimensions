<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Leave_model extends CI_Model {

	private $table = "user_leaves"; 
 
	public function create($data = []){	 
		return $this->db->insert($this->table,$data);
	}
   
	private function get_select_fileds()
	{
		$response = "user_leaves.*, user.firstname, user.lastname,user.email, department.name as service_name";
		return $response;
	}
	public function read()
	{
		return $this->db->select($this->get_select_fileds())
			->from($this->table)
			->join('user','user.user_id = user_leaves.user_id','left')
			->join('department','department.dprt_id = user.department_id','left')
			->order_by('user_leaves.leave_id','desc')
			->get()
			->result();
	}
	public function get_leaves($where = array())
	{
		return $this->db->select($this->get_select_fileds())
			->from($this->table)
			->join('user','user.user_id = user_leaves.user_id','left')
			->join('department','department.dprt_id = user.department_id','left')
			->where($where)
			->order_by('user_leaves.leave_id','desc')
			->get()
			->result();
	}
	public function get_active_leaves($where = array())
	{
		return $this->db->select($this->get_select_fileds())
			->from($this->table)
			->join('user','user.user_id = user_leaves.user_id','left')
			->join('department','department.dprt_id = user.department_id','left')
			->where($where)
			->where_in('user_leaves.status', ['1', '2'])
			->order_by('user_leaves.leave_id','desc')
			->get()
			->result();
	}

	
	public function read_by_id($id = null)
	{
		return $this->db->select($this->get_select_fileds())
			->from($this->table)
			->join('user','user.user_id = user_leaves.user_id','left')
			->join('department','department.dprt_id = user.department_id','left')
			->where('leave_id',$id)
			->order_by('user_leaves.leave_id','desc')
			->get()
			->row();
	} 
	public function read_by_user_id($user_id = null)
	{
		return $this->db->select($this->get_select_fileds())
			->from($this->table)
			->join('user','user.user_id = user_leaves.user_id','left')
			->join('department','department.dprt_id = user.department_id','left')
			->where($this->table.'.user_id',$user_id)
			->order_by('user_leaves.leave_id','desc')
			->get()
			->result();
	} 

	public function user_list($user_id){	

		return $this->db->select("user.firstname, user.lastname,user.email, department.name")
			->from($this->table)			
			->join('department','department.dprt_id = user.department_id','left')
			->order_by('user.user_id','desc')
			->get()
			->result();
	  }

	
	public function update($id = 0, $data = [])
	{	 
		$response_id = $id;
		if($id)
		{
			$response_id =  $this->db->update($this->table, $data, array('leave_id' => $id));
			// $this->db->where('id', $id);
			// $this->db->update($this->table, $data);
		}
		return $response_id;
	}
 
	public function delete($id = null)
	{
		$this->db->where('leave_id',$id)
			->delete($this->table);

		if ($this->db->affected_rows()) {
			return true;
		} else {
			return false;
		}
	}   
}
