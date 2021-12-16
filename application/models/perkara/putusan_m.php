<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Putusan_m extends CI_Model{
	function get_info_putusan($idperkara){
		try {
			return $this->db->query('SELECT * FROM perkaraputusanweb WHERE IDPerkara='.$idperkara.';');
		} catch (Exception $e) {
			return '';
		}
	}

	function get_info_putusan_terdakwa($idperkara){
		try {
			return $this->db->query('SELECT * FROM perkaraputusanterdakwaweb WHERE IDPerkara='.$idperkara.';');
		} catch (Exception $e) {
			return '';
		}
	}

	function get_info_pemberitahuan_putusan($idperkara){
		try {
			return $this->db->query('SELECT * FROM putusanpemberitahuanweb WHERE IDPerkara='.$idperkara.';');
		} catch (Exception $e) {
			return '';
		}
	}
}