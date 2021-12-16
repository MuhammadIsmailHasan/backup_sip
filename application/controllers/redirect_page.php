<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Redirect_page extends CI_Controller {
	function redir_detil_perkara(){
		$this->setParams();
		redirect('detil_perkara');
	}

	function redir_penetapan(){
		$this->setParams();
		redirect('penetapan');
	}

	function redir_riwayat_perkara(){
		$this->setParams();
		redirect('riwayat_perkara');
	}

	function redir_mediasi(){
		$this->setParams();
		redirect('mediasi');
	}

	function redir_penuntutan(){
		$this->setParams();
		redirect('penuntutan');
	}

	function redir_banding(){
		$this->setParams();
		redirect('banding');
	}

	function redir_kasasi(){
		$this->setParams();
		redirect('kasasi');
	}

	function redir_pk(){
		$this->setParams();
		redirect('pk');
	}
	function redir_grasi(){
		$this->setParams();
		redirect('grasi');
	}

	function redir_eksekusi(){
		$this->setParams();
		redirect('eksekusi');
	}
	function redir_putusan(){
		$this->setParams();
		redirect('putusan');
	}

	function redir_barang_bukti(){
		$this->setParams();
		redirect('barang_bukti');
	}

	function redir_intervensi(){
		$this->setParams();
		redirect('intervensi');
	}
	function redir_jadwal_sidang(){
		$this->setParams();
		redirect('jadwal_sidang');
	}

	function redir_detil_jadwal_sidang(){
		$this->setParams();
		redirect('detil_jadwal_sidang');
	}

	function redir_verzet(){
		$this->setParams();
		redirect('verzet');
	}

	function redir_putusan_sela(){
		$this->setParams();
		redirect('putusan_sela');
	}

	function redir_rekonvensi(){
		$this->setParams();
		redirect('rekonvensi');
	}
	function redir_dismissal(){
		$this->setParams();
		redirect('dismissal');
	}

	function redir_penetapan_gugur(){
		$this->setParams();
		redirect('penetapan_gugur');
	}

	function redir_diversi(){
		$this->setParams();
		redirect('diversi');
	}

	function redir_keberatan(){
		$this->setParams();
		redirect('keberatan');
	}

	function redir_biaya_perkara(){
		$this->setParams();
		redirect('biaya_perkara');
	}
	
	function redir_pen_persiapan(){
		$this->setParams();
		redirect('penetapan_persiapan');
	}

	function redir_ikrar(){
		$this->setParams();
		redirect('ikrar_talak');
	}

	function redir_mediasi_luar(){
		$this->setParams();
		redirect('mediasi_luar');
	}

	function redir_detil_penahanan(){
		$segment = $this->uri->segment_array();
		$this->nativesession->set_flash_session('encIDPerkara', $this->uri->segment(2));
		$this->nativesession->set_flash_session('encNamaTerdakwa', $this->uri->segment(3));
		redirect('detil_penahanan');
	}
	function redir_saksi(){
		$this->setParams();
		redirect('saksi');
	}




	function redir_detil_delegasi(){
		$segment = $this->uri->segment_array();
		$this->nativesession->set_flash_session('encalur', $this->uri->segment(2));
		$this->nativesession->set_flash_session('encperkara', $this->uri->segment(3));
		$this->nativesession->set_flash_session('encpnasal', $this->uri->segment(4));
		$this->nativesession->set_flash_session('encpntujuan', $this->uri->segment(5));
		redirect('detil_delegasi');
	}
	function setParams(){
		$segment = $this->uri->segment_array();
		$this->nativesession->set_flash_session('enc', $this->uri->segment(2));
	}
}