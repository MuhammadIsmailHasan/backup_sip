<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Defaults extends CI_Model{

	function getSystemInfo(){
		try {
			if($this->db=='xxx'){
                show_error('Database belum disetting.');
            }
			$this->db->select('*');
			$this->db->where('id >=', 61); 
			return $this->db->get('sys_config');
		} catch (Exception $e) {
			log_message('error', $e);
		}
	}

	

	function getParentMenu(){
		try {
			$jenispengadilan = $this->session->userdata('jenispengadilan');
			if(empty($jenispengadilan))
				$jenispengadilan = '-1';
			return $this->db->query("SELECT * FROM menu WHERE publish='Y' AND (jenis_pengadilan IS NULL OR jenis_pengadilan = ".$jenispengadilan.") ORDER BY urutan;");
		} catch (Exception $e) {
			log_message('error', $e);
		}
	}
}
?>