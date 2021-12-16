<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class List_jadwal_sidang extends CI_Controller {
	public function index(){
		$data['page_title'] = 'DATA SELURUH PERKARA';
		$data['idalurperkara'] = '-1';
		$data['idtahapan'] = 10;
		$data['enc'] = base64_encode($this->encrypt->encode('var_id=-1;var_tahapan=10;'));
		$this->nativesession->set_flash_session('params','var_id=-1;var_tahapan=10;');
		$this->session->set_userdata('asc_desc','DESC');
		$this->showpage($data);
	}

	public function type($params){
		$this->nativesession->set_flash_session('params',$params);
		$params = $this->encrypt->decode(base64_decode($params));
		$data = $this->parse_params($params);
		$data['enc'] = base64_encode($this->encrypt->encode($params));
		$this->session->set_userdata('asc_desc','DESC');
		$this->showpage($data);
	}

	public function sort($col_sort,$enc_params,$keyword){
		if($keyword=='key'){
			$keyword = '';
		}else{
			$keyword = $this->encrypt->decode(base64_decode($keyword));
		}
		$this->nativesession->set_flash_session('params',$enc_params);
		if($this->session->userdata('asc_desc')){
			if($this->session->userdata('asc_desc')=="DESC"){
				$this->session->set_userdata('asc_desc','ASC');
			}else{
				$this->session->set_userdata('asc_desc','DESC');
			}
		}else{
			$this->session->set_userdata('asc_desc','ASC');
		}
		$params = $this->encrypt->decode(base64_decode($enc_params));
		$data = $this->parse_params($params);
		$data['enc'] = base64_encode($this->encrypt->encode($params));
		$this->showpage($data,$col_sort,0,$keyword);
	}


	public function page($page_number,$params,$keyword,$str_col,$col_sort){
		if($keyword=='key'){
			$keyword = '';
		}else{
			$keyword = $this->encrypt->decode(base64_decode($keyword));
		}
		$params = $this->encrypt->decode(base64_decode($params));
		$data = $this->parse_params($params);
		$data['enc'] = base64_encode($this->encrypt->encode($params));
		$this->showpage($data,$col_sort,$page_number,$keyword);
	}

	public function search(){
		if(empty($_POST)){
			$params =  $this->nativesession->get_flash_session('params');
			$this->type($params);
			return;
		}
		$keyword = $this->input->post('search_keyword',TRUE);
		$params = $this->input->post('enc',TRUE);
		$params = $this->encrypt->decode(base64_decode($params));
		$data = $this->parse_params($params);
		$data['enc'] = $this->input->post('enc',TRUE);
		$this->showpage($data,2,0,$keyword);
	}

	function showpage($data,$col_sort=2,$start_page=0,$keyword=''){
		$asc_desc = $this->session->userdata('asc_desc');
		$data['page_active'] =0;
		if(!empty($keyword)){
			$data['keyword'] = base64_encode($this->encrypt->encode($keyword));
			$keyword = $keyword;
		}else{
			$data['keyword'] = 'key';
		}
		
		if($start_page>0){
			$begin_limit = ($start_page-1)*20;
		}else{
			$begin_limit = 0;
			$start_page = 1;
		}
		$segment = $this->uri->segment_array();
		if (!empty($segment[4]) and !empty($segment[5]) and !empty($segment[6]) ) {
			$tglCari=$segment[6].'-'.$segment[5].'-'.$segment[4];
		}else{
			$tglCari=date('Y-m-d');	
		}
		$keyword=$tglCari;
		$data['idalurperkara'] = '-1';
		$this->load->model('perkara/list_jadwal_sidang_m','sidanglist');
		$data['list_perkara'] = $this->sidanglist->getPerkaraList($data['idalurperkara'],$col_sort,$asc_desc,$begin_limit,$keyword);
		$data['total_rows'] = $this->sidanglist->fecth_data_num();

		$data['page_active'] = $begin_limit;
		$data['column_sorted'] = $col_sort;
		$data['page_active'] = $begin_limit;
		if (empty($tglCari)) {
			$data['page_title'] = 'JADWAL SIDANG SELURUH PERKARA';
		}else{
			$data['page_title'] = 'JADWAL SIDANG - '.$this->tanggalhelper->convertDayDate($tglCari);
		}
		
		$data['page_number'] = $start_page;
		$data['page_url'] = 'list_perkara';
		$data['main_body'] = 'perkara_list/list_jadwal_sidang';
		$this->load->vars($data);
		$this->load->view('header');
		$this->load->view('body/body');

	}
	private function parse_params($params){
		$data['idalurperkara'] = '';
		$data['idtahapan'] = 10;
		if(!empty($params)){
			$tmp = explode(';', $params);
			if(count($tmp)>1){
				$temporary = explode('=', $tmp[0]);
				if(count($tmp)<2){
					echo "Parameter URL Not Setup Correctly";
					exit();
				}
				$data['idalurperkara'] = $temporary[1];

				$temporary = explode('=', $tmp[1]);
				if(count($tmp)<2){
					echo "Parameter URL Not Setup Correctly";
					exit();
				}
				$data['idtahapan'] = $temporary[1];

			}elseif (count($tmp)==1) {
				$temporary = explode('=', $tmp[0]);
				if(count($tmp)<2){
					echo "Parameter URL Not Setup Correctly";
					exit();
				}
				$data['idalurperkara'] = $temporary[1];
			}
			return $data;
		}
		return '';
	}
}