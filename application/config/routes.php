<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

$route['default_controller'] 			= "list_perkara";
$route['404_override'] 					= '';
$route['search/(:any)'] 				= "search_detail/index/$1";
$route['show_detil/(:any)'] 			= "redirect_page/redir_detil_perkara/$1";
$route['show_penetapan/(:any)'] 		= "redirect_page/redir_penetapan/$1";
$route['show_riwayat_perkara/(:any)'] 	= "redirect_page/redir_riwayat_perkara/$1";
$route['show_mediasi/(:any)'] 			= "redirect_page/redir_mediasi/$1";
$route['show_penuntutan/(:any)'] 		= "redirect_page/redir_penuntutan/$1";
$route['show_banding/(:any)'] 			= "redirect_page/redir_banding/$1";
$route['show_kasasi/(:any)'] 			= "redirect_page/redir_kasasi/$1";
$route['show_pk/(:any)'] 				= "redirect_page/redir_pk/$1";
$route['show_grasi/(:any)'] 			= "redirect_page/redir_grasi/$1";
$route['show_eksekusi/(:any)'] 			= "redirect_page/redir_eksekusi/$1";
$route['show_putusan/(:any)'] 			= "redirect_page/redir_putusan/$1";
$route['show_barang_bukti/(:any)'] 		= "redirect_page/redir_barang_bukti/$1";
$route['show_intervensi/(:any)'] 		= "redirect_page/redir_intervensi/$1";
$route['show_jadwal_sidang/(:any)'] 	= "redirect_page/redir_jadwal_sidang/$1";
$route['show_verzet/(:any)'] 			= "redirect_page/redir_verzet/$1";
$route['show_putusan_sela/(:any)'] 		= "redirect_page/redir_putusan_sela/$1";
$route['show_rekonvensi/(:any)'] 		= "redirect_page/redir_rekonvensi/$1";
$route['show_dismissal/(:any)'] 		= "redirect_page/redir_dismissal/$1";
$route['show_penetapan_gugur/(:any)'] 	= "redirect_page/redir_penetapan_gugur/$1";
$route['show_diversi/(:any)'] 			= "redirect_page/redir_diversi/$1";
$route['show_keberatan/(:any)'] 		= "redirect_page/redir_keberatan/$1";
$route['show_biaya_perkara/(:any)'] 	= "redirect_page/redir_biaya_perkara/$1";
$route['detil_jadwal_sidang/(:any)'] 	= "redirect_page/redir_detil_jadwal_sidang/$1";
$route['detil_delegasi/(:any)'] 		= "redirect_page/redir_detil_delegasi/$1";
$route['show_pen_persiapan/(:any)'] 	= "redirect_page/redir_pen_persiapan/$1";
$route['show_ikrar_talak/(:any)'] 		= "redirect_page/redir_ikrar/$1";
$route['show_mediasi_luar/(:any)'] 		= "redirect_page/redir_mediasi_luar/$1";
$route['penahanan/(:any)'] 				= "redirect_page/redir_detil_penahanan/$1";
$route['show_we_kppu/(:any)'] 	        = "redirect_page/redir_we_kppu/$1";