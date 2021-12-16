<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Mediasi_luar extends CI_Controller {
	function index(){
		$enc = $this->nativesession->get_flash_session('enc');
		if(empty($enc)){
			show_404();
		}
		$idperkara = $this->nativesession->get_flash_session('perkara_id');
		$idperkara = $this->encrypt->decode(base64_decode($enc));
		if(!is_numeric($idperkara)){
			echo "ERROR PERKARA NOT FOUND!";
		}
		$this->load->model('perkara/mediasi_m','mediasi');
		$data['enc'] = $enc;
		$data['data_mediasi'] = $this->mediasi->get_info_mediasi($idperkara);		
		$this->load->vars($data);
		$this->load->view('perkara_tab/mediasi_luar');
	}
	
}