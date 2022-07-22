<?php

class M_subcategory extends CI_Model
{

	protected $table = 'subkategori';

	public function get_data()
	{
        $this->db->select('subkategori.title,category.title AS parent_name');
        $this->db->from('subkategori');
        $this->db->join('category', 'category.id = subkategori.id_category');  
        $query = $this->db->get();
        return $query;
	}

        public function get_where($where)
	{
		return $this->db->where($where)->get($this->table);
	}
}
