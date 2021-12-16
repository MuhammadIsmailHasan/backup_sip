<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Info_perkara extends CI_Model{
	function getInfoPerkara($idperkara){
		try {
			$this->db->where('IDPerkara',$idperkara);
			return $this->db->get('dataumumweb');
		} catch (Exception $e) {
			return '';
		}
	}

	function getInfoLalulintas($idperkara){
		try {
			$this->db->where('IDPerkara',$idperkara);
			return $this->db->get('perkaralalulintasweb');
		} catch (Exception $e) {
			return '';
		}
	}

	function getInfoMatra($idperkara){
		try {
			$this->db->where('IDPerkara',$idperkara);
			return $this->db->get('perkaramatraweb');
		} catch (Exception $e) {
			return '';
		}
	}	

	function getSatker(){
		try {
			return $this->db->query("SELECT value FROM sys_config WHERE id=62;");
		} catch (Exception $e) {
			
		}
	}


	function getInfoPihak($idperkara){
		try {
			$this->db->where('IDPerkara',$idperkara);
			$this->db->select('ID,IDPerkara,pihak_ke,nama,urutan');
			$this->db->order_by('urutan', "ASC");
			return $this->db->get('pihakweb');
		} catch (Exception $e) {
			return '';
		}
	}
	
	function getInfoPengacara($idperkara,$pihakke){
		try {
			$this->db->where('pihakKe',$pihakke);
			$this->db->where('IDPerkara',$idperkara);
			$this->db->select('pengacaraNama,pihakNama');
			return $this->db->get('pengacaraweb');
		} catch (Exception $e) {
			
		}
	}

	function getInfoPerkaraAnak($idperkara){
		try {
			return $this->db->query("SELECT pp.id AS id, pp.urutan, pp.IDPerkara, pp.nama,pp.pihak_id AS pihak_id, pp.alamat,ortu.id_orang_tua,p.nama AS wali
					FROM perkara_pihak2 AS pp
					LEFT JOIN 
					(SELECT * FROM perkara_pihak_orang_tua  WHERE jenis_pihak_anak = 0) AS ortu
					ON pp.pihak_id = ortu.id_anak AND pp.IDPerkara = ortu.IDPerkara
					LEFT JOIN
					pihak AS p
					ON p.id = ortu.id_orang_tua
					WHERE pp.IDPerkara=".$idperkara." ORDER BY pp.urutan ASC;");
		} catch (Exception $e) {
			
		}
	}

	function getInfoKorbanAnak($idperkara){
		try {
			return $this->db->query("SELECT pp.id AS id, pp.urutan, pp.IDPerkara, pp.nama,pp.pihak_id AS pihak_id, pp.alamat,ortu.id_orang_tua,p.nama AS wali
					FROM perkara_pihak_korban AS pp
					LEFT JOIN 
					(SELECT * FROM perkara_pihak_orang_tua  WHERE jenis_pihak_anak = 1) AS ortu
					ON pp.pihak_id = ortu.id_anak AND pp.IDPerkara = ortu.IDPerkara
					LEFT JOIN
					pihak AS p
					ON p.id = ortu.id_orang_tua
					WHERE pp.IDPerkara=".$idperkara." ORDER BY pp.urutan ASC;");
		} catch (Exception $e) {
			return '';
		}
	}
	
	function getInfoIntervensi($idperkara){
		try {
			$this->db->where('IDPerkara',$idperkara);
			$this->db->where('pihak_ke',3);
			$this->db->select('IDPerkara');
			$this->db->from('pihakweb');
			return $this->db->get()->num_rows();
		} catch (Exception $e) {
			return '';
		}
	}

	function getInfoPenuntutan($idperkara){
		try {
			$this->db->where('IDPerkara',$idperkara);
			$this->db->select('IDPerkara');
			$this->db->from('perkarapenuntutanweb');
			return $this->db->get()->num_rows();
		} catch (Exception $e) {
			return '';
		}
	}

	function getInfoPenetapan($idperkara){
		try {
			$this->db->where('IDPerkara',$idperkara);
			$this->db->select('IDPerkara');
			$this->db->from('hakimweb');
			return $this->db->get()->num_rows();
		} catch (Exception $e) {
			return '';
		}
	}

	function getInfoDiversi($idperkara){
		try {
			$this->db->where('perkara_id',$idperkara);
			$this->db->select('perkara_id');
			$this->db->from('diversiweb');
			return $this->db->get()->num_rows();
		} catch (Exception $e) {
			return '';
		}
	}

	function getPenghentianPerkara($idperkara){
		try {
			$this->db->where('perkara_id',$idperkara);
			$this->db->where('hasil_lap_pembimbing_masyarakat',1);
			$this->db->select('perkara_id');
			$this->db->from('diversiweb');
			return $this->db->get()->num_rows();
		} catch (Exception $e) {
			return '';
		}
	}

	function getPihakSaksi($idperkara){
		try {
			$this->db->where('IDPerkara',$idperkara);
			$this->db->where('pihak_ke',5);
			$this->db->select('IDPerkara');
			$this->db->from('pihakweb');
			return $this->db->get()->num_rows();
		} catch (Exception $e) {
			return '';
		}
	}

	function getPihakKorban($idperkara){
		try {
			$this->db->where('IDPerkara',$idperkara);
			$this->db->where('pihak_ke',6);
			$this->db->select('IDPerkara');
			$this->db->from('pihakweb');
			return $this->db->get()->num_rows();
		} catch (Exception $e) {
			return '';
		}
	}

	function getInfoEksekusi($idperkara){
		try {
			$this->db->where('IDPerkara',$idperkara);
			$this->db->select('IDPerkara');
			$this->db->from('eksekusiweb');
			return $this->db->get()->num_rows();
		} catch (Exception $e) {
			return '';
		}
	}

	function getInfoIkrarTalak($idperkara){
		try {
			$this->db->where('IDPerkara',$idperkara);
			$this->db->select('IDPerkara');
			$this->db->from('ikrarweb');
			return $this->db->get()->num_rows();
		} catch (Exception $e) {
			return '';
		}
	}

	function getInfoBanding($idperkara){
		try {
			$this->db->where('IDPerkara',$idperkara);
			$this->db->select('IDPerkara');
			$this->db->from('bandingweb');
			return $this->db->get()->num_rows();
		} catch (Exception $e) {
			return '';
		}
	}

	function getInfoKasasi($idperkara){
		try {
			$this->db->where('IDPerkara',$idperkara);
			$this->db->select('IDPerkara');
			$this->db->from('kasasiweb');
			return $this->db->get()->num_rows();
		} catch (Exception $e) {
			return '';
		}
	}

	function getInfoPK($idperkara){
		try {
			$this->db->where('IDPerkara',$idperkara);
			$this->db->select('IDPerkara');
			$this->db->from('pkweb');
			return $this->db->get()->num_rows();
		} catch (Exception $e) {
			return '';
		}
	}

	function getInfoGrasi($idperkara){
		try {
			$this->db->where('IDPerkara',$idperkara);
			$this->db->select('IDPerkara');
			$this->db->from('grasiweb');
			return $this->db->get()->num_rows();
		} catch (Exception $e) {
			return '';
		}
	}

	function getInfoVerzet($idperkara){
		try {
			$this->db->where('IDPerkara',$idperkara);
			$this->db->select('IDPerkara');
			$this->db->from('verzetweb');
			return $this->db->get()->num_rows();
		} catch (Exception $e) {
			return '';
		}
	}
 
	function getInfoKeberatan($idperkara){
		try {
			$this->db->where('IDPerkara',$idperkara);
			$this->db->select('IDPerkara');
			$this->db->from('perkarakeberatanweb');
			return $this->db->get()->num_rows();
		} catch (Exception $e) {
			return '';
		}
	}

	function getInfoPutusanSela($idperkara){
		try {
			$this->db->where('IDPerkara',$idperkara);
			$this->db->select('IDPerkara');
			$this->db->from('putusanselaweb');
			return $this->db->get()->num_rows();
		} catch (Exception $e) {
			return '';
		}
	}

	function getInfoMediasi($idperkara){
		try {
			$this->db->where('IDPerkara',$idperkara);
			$this->db->where('IDTahapan',10);
			$this->db->select('IDPerkara');
			$this->db->from('mediasiweb');
			return $this->db->get()->num_rows();
		} catch (Exception $e) {
			return '';
		}
	}

	function getInfoPutusanPerdata($idperkara){
		try {
			$this->db->where('IDPerkara',$idperkara);
			$this->db->select('IDStatusPutusan');
			$result = $this->db->get('perkaraputusanweb');
			if($result->num_rows>0){
				return $result->row()->IDStatusPutusan;
			}else{
				return 0;
			}
		} catch (Exception $e) {
			return '';
		}
	}

	function getInfoRekonvensi($idperkara){
		try {
			$this->db->where('IDPerkara',$idperkara);
			$this->db->select('IDPerkara');
			$result = $this->db->get('rekonvensiweb');
			if($result->num_rows>0){
				return 1;
			}else{
				return 0;
			}
		} catch (Exception $e) {
			return 0;
		}
	}

	function getInfoPenPersiapan($idperkara){
		try {
			$this->db->where('IDPerkara',$idperkara);
			$this->db->select('IDPerkara');
			$this->db->from('penetapanpersiapanweb');
			return $this->db->get()->num_rows();
		} catch (Exception $e) {
			return '';
		}
	}

	function getInfoPenDismissal($idperkara){
		try {
			$this->db->where('IDPerkara',$idperkara);
			$this->db->select('IDPerkara');
			$this->db->from('penetapandismissalweb');
			return $this->db->get()->num_rows();
		} catch (Exception $e) {
			return '';
		}
	}

	function getInfoJadwalSidang($idperkara){
		try {
			$this->db->where('IDPerkara',$idperkara);
			$this->db->select('IDPerkara');
			$this->db->from('jadwalsidangweb');
			return $this->db->get()->num_rows();
		} catch (Exception $e) {
			return '';
		}
	}
}