DROP TABLE IF EXISTS `actiopaulianaweb`;
CREATE TABLE `actiopaulianaweb` (
  `IDPerkara` bigint(20) unsigned NOT NULL,
  `tglPendaftaranAction` date DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IDPerkara`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `alurperkaraweb`;
CREATE TABLE `alurperkaraweb` (
  `id` tinyint(4) NOT NULL DEFAULT '0',
  `nama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `bandingdetilweb`;
CREATE TABLE `bandingdetilweb` (
  `ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `IDPerkara` bigint(20) unsigned NOT NULL COMMENT 'Id Perkara: merujuk ke tabel perkara(by system)',
  `nama` text,
  `IDStatusPihak` int(11) unsigned DEFAULT NULL COMMENT 'Referense status_pihak',
  `statusPihak` varchar(153) DEFAULT NULL,
  `pihakNama` text,
  `pihakDiwakili` char(1) DEFAULT NULL COMMENT 'Pembanding Diwakili: pilihan (Y=Ya; T=Tidak)',
  `pemohonNama` varchar(1000) DEFAULT NULL COMMENT 'Nama Pembanding: isian bebas',
  `tglPermohonan` date DEFAULT NULL COMMENT 'Tanggal Permohonan Banding: isian tanggal',
  `tglPemberitahuanPermohonan` date DEFAULT NULL COMMENT 'Tanggal Pemberitahuan Permohonan Banding: isian tanggal',
  `tglPenerimaanMemori` date DEFAULT NULL COMMENT 'Tanggal Penerimaan Memori Banding: isian tanggal',
  `tglPenyerahanMemori` date DEFAULT NULL COMMENT 'Tanggal Penyerahan Memori Banding: isian tanggal',
  `tglPenerimaanKontra` date DEFAULT NULL COMMENT 'Tanggal Penerimaan Kontra Banding: isian tanggal',
  `tglPenyerahanKontra` date DEFAULT NULL COMMENT 'Tanggal Penyerahan Kontra Banding: isian tanggal',
  `tglPemberitahuanInzage` date DEFAULT NULL COMMENT 'Tanggal Pemberitahuan Inzage Pembanding: isian tanggal',
  `tglPelaksanaanInzage` date DEFAULT NULL COMMENT 'Tanggal Pelaksanaan Inzage: isian tanggal',
  `tglPemberitahuanPutusanBanding` date DEFAULT NULL COMMENT 'Tanggal pemberitahuan Putusan Banding Pada Pemohon/Termohon/Pembanding/Terbanding: isian tanggal',
  `tglCabut` date DEFAULT NULL,
  `keterangan` text COMMENT 'Keterangan: isian bebas',
  PRIMARY KEY (`ID`,`IDPerkara`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `bandingweb`;
CREATE TABLE `bandingweb` (
  `IDPerkara` bigint(20) unsigned NOT NULL COMMENT 'Id Perkara: merujuk ke tabel perkara(by system)',
  `noPerkarabanding` varchar(50) DEFAULT NULL COMMENT 'Nomor Perkara PT',
  `tglPermohonanBanding` date DEFAULT NULL COMMENT 'Tanggal Permohonan Banding: isian tanggal(by system)',
  `pemohonBanding` varchar(1000) DEFAULT NULL COMMENT 'Pemohon Banding',
  `tglPemberitahuanPermohonan` date DEFAULT NULL COMMENT 'Tanggal Pemberitahuan Permohonan Banding: isian tanggal',
  `tglPenerimaanMemori` date DEFAULT NULL COMMENT 'Tanggal Penerimaan Memori Banding: isian tanggal',
  `tglPenyerahanMemori` date DEFAULT NULL COMMENT 'Tanggal Penyerahan Memori Banding: isian tanggal',
  `tglPenerimaanKontra` date DEFAULT NULL COMMENT 'Tanggal Penerimaan Kontra Banding: isian tanggal',
  `tglPenyerahanKontra` date DEFAULT NULL COMMENT 'Tanggal Penyerahan Kontra Banding: isian tanggal',
  `tglPemberitahuanInzagePembanding` date DEFAULT NULL,
  `tglPemberitahuanInzageTerbanding` date DEFAULT NULL,
  `tglPelaksanaanInzagePembanding` date DEFAULT NULL,
  `tglPelaksanaanInzageTerbanding` date DEFAULT NULL,
  `tglPengirimanBerkas` date DEFAULT NULL COMMENT 'Tanggal Pengiriman Berkas Dari PN ke PT: isian tanggal',
  `nomorSuratPengiriman` varchar(255) DEFAULT NULL COMMENT 'Nomor Surat Pengiriman Berkas Dari PN ke PT: isian bebas',
  `tglPenerimaanKembaliBerkas` date DEFAULT NULL COMMENT 'Tanggal Penerimaan Berkas Dari PT Ke PN: isian tanggal',
  `hakimPertama` varchar(50) DEFAULT NULL COMMENT 'Nama Hakim 1 Tingkat Banding: merujuk ke tabel hakim_pt kolom nama',
  `hakimKedua` varchar(50) DEFAULT NULL COMMENT 'Nama Hakim 2 Tingkat Banding: merujuk ke tabel hakim_pt kolom nama',
  `hakimKetiga` varchar(50) DEFAULT NULL COMMENT 'Nama Hakim 3 Tingkat Banding: merujuk ke tabel hakim_pt kolom nama',
  `hakimKeempat` varchar(50) DEFAULT NULL COMMENT 'Nama Hakim 4 Tingkat Banding: merujuk ke tabel hakim_pt kolom nama',
  `hakimKelima` varchar(50) DEFAULT NULL COMMENT 'Nama Hakim 5 Tingkat Banding: merujuk ke tabel hakim_pt kolom nama',
  `paniteraPengganti` varchar(50) DEFAULT NULL COMMENT 'Nama Panitera Pengganti Tingkat Banding: merujuk ke tabel panitera_pt kolom nama',
  `tglPutusan` date DEFAULT NULL COMMENT 'Tanggal Putusan PT: isian tanggal',
  `noPutusanBanding` varchar(255) DEFAULT NULL COMMENT 'Nomor Putusan PT: isian bebas',
  `amarPutusan` text,
  `tglMinutasi` date DEFAULT NULL COMMENT 'Tanggal Minutasi',
  `tglPemberitahuanPutusanPembanding` date DEFAULT NULL,
  `tglPemberitahuanPutusanTerbanding` date DEFAULT NULL,
  `keterangan` text COMMENT 'Catatan Putusan Banding: isian bebas',
  PRIMARY KEY (`IDPerkara`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `barangbuktiweb`;
CREATE TABLE `barangbuktiweb` (
  `IDBarangBukti` bigint(20) NOT NULL AUTO_INCREMENT,
  `IDPerkara` bigint(20) DEFAULT NULL,
  `noPerkara` varchar(450) DEFAULT NULL,
  `tglPenerimaan` date DEFAULT NULL,
  `jenisBB` text,
  `tempatSimpan` varchar(150) DEFAULT NULL,
  `tempatPenyerahan` varchar(150) DEFAULT NULL,
  `penerima` varchar(1500) DEFAULT NULL,
  `tglPenyerahan` date DEFAULT NULL,
  `Catatan` text,
  PRIMARY KEY (`IDBarangBukti`)
) ENGINE=MyISAM AUTO_INCREMENT=207 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `dataumumweb`;
CREATE TABLE `dataumumweb` (
  `IDPerkara` bigint(20) NOT NULL,
  `tglPendaftaran` date DEFAULT NULL,
  `klasifikasiPerkara` tinyint(4) DEFAULT NULL,
  `IDJenisPerkara` smallint(6) DEFAULT NULL,
  `jenisPerkara` varchar(255) DEFAULT NULL,
  `noPerkara` varchar(50) DEFAULT NULL,
  `tglSurat` date DEFAULT NULL,
  `noSurat` varchar(50) DEFAULT NULL,
  `petitumDakwaan` text,
  `dipublikasikan` char(1) DEFAULT NULL,
  `prodeo` tinyint(1) DEFAULT NULL,
  `nilai_sengketa` bigint(20) DEFAULT NULL,
  `IDProses` smallint(6) DEFAULT NULL,
  `statusAkhir` varchar(100) DEFAULT NULL,
  `pihakPertama` text,
  `pihakKedua` text,
  `pihakKetiga` text,
  `pihakKeempat` text,
  `tglPutusan` date DEFAULT NULL,
  `tglMinutasi` date DEFAULT NULL,
  `pasalDakwaan` text,
  `tglBHT` date DEFAULT NULL,
  PRIMARY KEY (`IDPerkara`),
  FULLTEXT KEY `jenisPerkara` (`jenisPerkara`,`petitumDakwaan`,`statusAkhir`,`pihakPertama`,`pihakKedua`,`pihakKetiga`,`pihakKeempat`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `delegasikeluarweb`;
CREATE TABLE `delegasikeluarweb` (
  `ID` bigint(11) unsigned NOT NULL DEFAULT '0',
  `IDPerkara` bigint(20) unsigned NOT NULL,
  `noPerkara` varchar(50) NOT NULL,
  `idPNAsal` smallint(11) NOT NULL,
  `kodeSatkerAsal` int(11) NOT NULL,
  `pnAsalText` varchar(100) DEFAULT NULL,
  `IDPNTujuan` smallint(11) NOT NULL,
  `kodeSatkerTujuan` int(11) NOT NULL,
  `pnTujuanText` varchar(100) DEFAULT NULL,
  `tglDelegasi` date DEFAULT NULL,
  `IDJenisDelegasi` char(2) NOT NULL,
  `jenisDelegasiText` varchar(100) DEFAULT NULL,
  `tglSurat` date DEFAULT NULL,
  `tglPengiriman` date DEFAULT NULL,
  `noSurat` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `delegasimasukweb`;
CREATE TABLE `delegasimasukweb` (
  `ID` bigint(11) unsigned NOT NULL DEFAULT '0',
  `IDPerkara` bigint(20) unsigned NOT NULL,
  `noPerkara` varchar(50) NOT NULL,
  `idPNAsal` smallint(11) NOT NULL,
  `kodeSatkerAsal` int(11) NOT NULL,
  `pnAsalText` varchar(100) DEFAULT NULL,
  `IDPNTujuan` smallint(11) NOT NULL,
  `kodeSatkerTujuan` int(11) NOT NULL,
  `pnTujuanText` varchar(100) DEFAULT NULL,
  `tglDelegasi` date DEFAULT NULL,
  `IDJenisDelegasi` char(2) NOT NULL,
  `jenisDelegasiText` varchar(100) DEFAULT NULL,
  `tglSurat` date DEFAULT NULL,
  `tglPengiriman` date DEFAULT NULL,
  `noSurat` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `delegasiproseskeluarweb`;
CREATE TABLE `delegasiproseskeluarweb` (
  `IDDelegasi` bigint(20) unsigned NOT NULL,
  `tglSuratDiterima` date DEFAULT NULL,
  `IDPerkara` bigint(20) unsigned NOT NULL,
  `IDJurusita` bigint(11) unsigned NOT NULL,
  `jurusitaNama` varchar(100) DEFAULT NULL,
  `idPNAsal` smallint(11) unsigned NOT NULL,
  `pnAsalText` varchar(100) DEFAULT NULL,
  `kodeSatkerAsal` int(11) DEFAULT NULL,
  `idPNTujuan` smallint(11) NOT NULL,
  `pnTujuanText` varchar(100) DEFAULT NULL,
  `kodeSatkertTujuan` int(11) DEFAULT NULL,
  `tglRelaas` date DEFAULT NULL,
  `nomorRelaas` varchar(50) DEFAULT NULL,
  `tglPengirimanRelaas` date DEFAULT NULL,
  `nomorSuratPengantarRelaas` varchar(50) DEFAULT NULL,
  `idStatusDeleasgi` char(1) DEFAULT NULL,
  `statusDelegasi` varchar(50) DEFAULT NULL,
  `catatan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDDelegasi`,`IDPerkara`,`idPNAsal`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `delegasiprosesmasukweb`;
CREATE TABLE `delegasiprosesmasukweb` (
  `IDDelegasi` bigint(20) NOT NULL,
  `tglSuratDiterima` date DEFAULT NULL,
  `IDPerkara` bigint(20) NOT NULL,
  `IDJurusita` bigint(11) NOT NULL,
  `jurusitaNama` varchar(100) DEFAULT NULL,
  `idPNAsal` smallint(11) NOT NULL,
  `pnAsalText` varchar(100) DEFAULT NULL,
  `kodeSatkerAsal` int(11) DEFAULT NULL,
  `idPNTujuan` smallint(11) NOT NULL,
  `pnTujuanText` varchar(100) DEFAULT NULL,
  `kodeSatkertTujuan` int(11) DEFAULT NULL,
  `tglRelaas` date DEFAULT NULL,
  `nomorRelaas` varchar(50) DEFAULT NULL,
  `tglPengirimanRelaas` date DEFAULT NULL,
  `nomorSuratPengantarRelaas` varchar(50) DEFAULT NULL,
  `idStatusDeleasgi` char(1) DEFAULT NULL,
  `statusDelegasi` varchar(50) DEFAULT NULL,
  `catatan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDDelegasi`,`IDPerkara`,`idPNAsal`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `diversiweb`;
CREATE TABLE `diversiweb` (
  `id` bigint(20) NOT NULL,
  `perkara_id` bigint(20) DEFAULT NULL,
  `no_reg_penyidik` varchar(50) DEFAULT NULL,
  `no_reg_penuntut_umum` varchar(50) DEFAULT NULL,
  `tgl_penetapan_musyawarah` date DEFAULT NULL,
  `tgl_musyawarah` date DEFAULT NULL,
  `tgl_kesepakatan_diversi` date DEFAULT NULL,
  `tgl_penetapan_kesepakatan_diversi` date DEFAULT NULL,
  `no_penetapan_kesepakatan` varchar(50) DEFAULT NULL,
  `tgl_lap_pembimbing_masyarakat` date DEFAULT NULL,
  `hasil_diversi` varchar(50) DEFAULT NULL,
  `dibuka_kembali` int(1) DEFAULT NULL,
  `no_dibuka_kembali` varchar(50) DEFAULT NULL,
  `tgl_dibuka_kembali` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `perkara_diversiweb_fk` (`perkara_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `eksekusidetilweb`;
CREATE TABLE `eksekusidetilweb` (
  `ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `IDPerkara` bigint(20) unsigned NOT NULL COMMENT 'Primary key: merujuk ke tabel perkara kolom perkara_id (by system)',
  `nama` varchar(1000) DEFAULT NULL,
  `IDStatusPihak` int(11) DEFAULT NULL,
  `statusPihak` varchar(152) DEFAULT NULL,
  `pihakDimohonkan` text,
  `tglPemberitahuanPermohonan` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `eksekusiweb`;
CREATE TABLE `eksekusiweb` (
  `IDPerkara` bigint(20) unsigned NOT NULL COMMENT 'Primary key: merujuk ke tabel perkara(by system)',
  `IDAlurPerkara` int(11) unsigned NOT NULL COMMENT 'Id Alur Perkara: merujuk ke tabel alur_perkara kolom id(by system)',
  `noPerkaraPN` varchar(50) NOT NULL COMMENT 'Nomor Perkara PN: (by system)',
  `PutusanPN` date DEFAULT NULL,
  `noPerkaraBanding` varchar(50) DEFAULT NULL,
  `putusanBanding` date DEFAULT NULL,
  `noPerkaraKasasi` varchar(50) DEFAULT NULL,
  `putusanKasasi` date DEFAULT NULL,
  `noPerkaraPK` varchar(50) DEFAULT NULL,
  `putusanPK` date DEFAULT NULL,
  `eksekusiPutusan` int(11) DEFAULT NULL COMMENT 'Putusan yang dimohonkan eksekusi: 10=pn,20=Banding,30=Kasasi,40=PK',
  `eksekusiNomorPerkara` varchar(50) DEFAULT NULL,
  `eksekusiAmarPutusan` text COMMENT 'Amar Putusan yang Dieksekusi',
  `pihakPemohonEksekusi` int(11) DEFAULT NULL,
  `permohonanEsekusi` date DEFAULT NULL COMMENT 'Tanggal Permohonan Eksekusi: isian tanggal',
  `pemohonEksekusi` varchar(1000) DEFAULT NULL,
  `paraPihak` varchar(2000) DEFAULT NULL COMMENT 'Para Pihak: (by system)',
  `penetapanTeguranEksekusi` date DEFAULT NULL COMMENT 'Tanggal Penetapan Teguran Eksekusi: isian tanggal',
  `nomorPenetapanTeguranEksekusi` varchar(50) DEFAULT NULL COMMENT 'Nomor Penetapan Teguran Eksekusi',
  `pelaksanaanTeguranEksekusi` date DEFAULT NULL COMMENT 'Tanggal Pelaksanaan Teguran Eksekusi: isian tanggal',
  `penetapanSitaEksekusi` date DEFAULT NULL COMMENT 'Tanggal penetapan Sita Eksekusi: isian tanggal',
  `nomorPenetapanSitaEksekusi` varchar(50) DEFAULT NULL COMMENT 'Nomor penetapan Sita Eksekusi',
  `pelaksanaanSitaEksekusi` date DEFAULT NULL COMMENT 'Tanggal Pelaksanaan Sita Eksekusi: isian tanggal',
  `jurusitaNama` varchar(500) DEFAULT NULL COMMENT 'Nama Jurusita',
  `penetapanPerintahEksekusiLelang` date DEFAULT NULL COMMENT 'Tanggal Penetapan Perintah Eksekusi Lelang: isian tanggal',
  `pelaksanaanEksekusiLelang` date DEFAULT NULL COMMENT 'Tanggal pelaksanaan Eksekusi Lelang: isian tanggal',
  `penyerahanHasilLelang` date DEFAULT NULL COMMENT 'Tanggal Penyerahan Hasil Lelang: isian tanggal',
  `penetapanPerintahEksekusiRill` date DEFAULT NULL COMMENT 'Tanggal Penetapan Perintah Eksekusi Rill: isian tanggal',
  `pelaksanaanEksekusiRill` date DEFAULT NULL COMMENT 'Tanggal Pelaksanaan Eksekusi Rill: isian tanggal',
  `penetapanNoneksekusi` date DEFAULT NULL COMMENT 'Tanggal Penetapan Non-Eksekusi: isian tanggal',
  `diterimaPermohonan` date DEFAULT NULL,
  `panggilanParapihak` date DEFAULT NULL,
  `penetapanKetua` date DEFAULT NULL,
  `skObjekTidakPunyaKekuatanHukum` date DEFAULT NULL,
  `suratTergugatObjekNonExecutable` date DEFAULT NULL,
  `panggilanPihakNonExecutable` date DEFAULT NULL,
  `upayaKesepakatanKompensasi` date DEFAULT NULL,
  `penetapanKetuaKompensasi` date DEFAULT NULL,
  `upayaHukumKma` date DEFAULT NULL,
  `penetapanKmaKompensasi` date DEFAULT NULL,
  `uangpaksaPutusanHakim` bigint(20) DEFAULT NULL,
  `uangpaksaPenetapanKetua` bigint(20) DEFAULT NULL,
  `suratKetuaTergugatUangpaksa` date DEFAULT NULL,
  `suratPeringatanUangpaksa` date DEFAULT NULL,
  `perintahKetuaSaksiAdministratif` date DEFAULT NULL,
  `sanksiAministratifDariPejabat` date DEFAULT NULL,
  `pengumumanKetuaPaniteraJs` date DEFAULT NULL,
  `pengumumanMedia` date DEFAULT NULL,
  `surat_Pesiden` date DEFAULT NULL,
  `suratLembagaPerwakilanRakyat` date DEFAULT NULL,
  `alasanEksekusi` text COMMENT 'Alasan Ekseskusi: isian bebas',
  `catatanEksekusi` text COMMENT 'Catatan Eksekusi: isian bebas',
  `prodeoEksekusi` tinyint(1) DEFAULT NULL COMMENT 'Status Prodeo Eksekusi: 0=Tidak,1=Ya',
  `statusEksekusiText` varchar(100) DEFAULT NULL,
  `prodeo` tinyint(1) DEFAULT NULL COMMENT 'Status Prodeo: 0=Tidak,1:Ya',
  `tglPendaftaranAction` date DEFAULT NULL COMMENT 'Tanggal Pendaftaran: isian tanggal',
  PRIMARY KEY (`IDPerkara`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `grasiweb`;
CREATE TABLE `grasiweb` (
  `ID` bigint(20) unsigned NOT NULL,
  `IDPerkara` bigint(20) unsigned NOT NULL,
  `IDAlurPerkara` smallint(5) unsigned NOT NULL,
  `tglPermohonan` date DEFAULT NULL,
  `namaTerdakwa` text,
  `namaPemohon` text,
  `tglPertimbanganMA` date DEFAULT NULL,
  `tglPengirimanBerkas` date DEFAULT NULL,
  `tglPenerimaanBerkas` date DEFAULT NULL,
  `tglPutusan` date DEFAULT NULL,
  `noPutusan` varchar(50) DEFAULT NULL,
  `amarPutusan` text,
  `tglPemberitahuanPutusan` date DEFAULT NULL,
  `tglPemberitahuanTembusan` date DEFAULT NULL,
  `keterangan` text,
  PRIMARY KEY (`ID`,`IDPerkara`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `hakimweb`;
CREATE TABLE `hakimweb` (
  `IDPerkara` bigint(20) NOT NULL,
  `IDHakim` bigint(20) NOT NULL,
  `IDTahapan` tinyint(2) DEFAULT NULL,
  `tglPenetapan` date NOT NULL,
  `posisiHakim` varchar(20) DEFAULT NULL,
  `urutan` tinyint(2) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `aktif` char(1) DEFAULT NULL,
  `jenisAcara` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`IDPerkara`,`IDHakim`,`tglPenetapan`),
  KEY `indeks` (`IDPerkara`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `hartapailitweb`;
CREATE TABLE `hartapailitweb` (
  `IDPerkara` bigint(20) unsigned NOT NULL,
  `IDAlurPerkara` smallint(5) unsigned NOT NULL,
  `tglPendaftaran` date DEFAULT NULL,
  `noPerkara` varchar(50) DEFAULT NULL,
  `paraPihak` text,
  `IDPutusan` bigint(20) DEFAULT NULL,
  `tglPutusan` date DEFAULT NULL,
  `noPutusan` varchar(50) DEFAULT NULL,
  `hakimPengawas` varchar(255) DEFAULT NULL,
  `kurator` varchar(255) DEFAULT NULL,
  `tglInsolvensi` date DEFAULT NULL,
  `tglPenetapanHakimPengawas` date DEFAULT NULL,
  `noPenetapanHakimPengawas` varchar(50) DEFAULT NULL,
  `amarPenetapanHakimPengawas` text,
  `panitera` varchar(255) DEFAULT NULL,
  `jurusita` varchar(255) DEFAULT NULL,
  `tglPelelangan` date DEFAULT NULL,
  `tglPembagian` date DEFAULT NULL,
  `kreditur` varchar(255) DEFAULT NULL,
  `jumlahPembagian` varchar(20) DEFAULT NULL,
  `catatan` text,
  PRIMARY KEY (`IDPerkara`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `ikrarweb`;
CREATE TABLE `ikrarweb` (
  `IDPerkara` bigint(20) unsigned NOT NULL,
  `tglPenetapanMajelis` date DEFAULT NULL,
  `majelisHakim` varchar(500) DEFAULT NULL,
  `tglPenetapanPP` date DEFAULT NULL,
  `paniteraPengganti` varchar(200) DEFAULT NULL,
  `tglPenetapanJurusita` date DEFAULT NULL,
  `jurusita` varchar(200) DEFAULT NULL,
  `tglPenetapanSidang` date DEFAULT NULL,
  `tglSidangPertama` date DEFAULT NULL,
  `tglIkrar` date DEFAULT NULL,
  `IDStatusPenetapan` char(50) DEFAULT NULL,
  `amarPutusan` text,
  PRIMARY KEY (`IDPerkara`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `jadwalsidangweb`;
CREATE TABLE `jadwalsidangweb` (
  `ID` bigint(20) NOT NULL,
  `IDPerkara` bigint(20) NOT NULL,
  `tglSidang` date DEFAULT NULL,
  `jamSidang` time DEFAULT NULL,
  `selesaiSidang` time DEFAULT NULL,
  `agenda` text,
  `ruangan` varchar(50) DEFAULT NULL,
  `sidangKeliling` char(1) DEFAULT NULL,
  `dihadiriOleh` varchar(25) DEFAULT NULL,
  `ditunda` char(1) DEFAULT NULL,
  `alasanDitunda` text,
  `verzet` char(1) DEFAULT NULL,
  `keterangan` text,
  PRIMARY KEY (`ID`,`IDPerkara`),
  KEY `indeks` (`IDPerkara`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `jenisperkaraweb`;
CREATE TABLE `jenisperkaraweb` (
  `id` smallint(3) NOT NULL,
  `idalurperkara` smallint(3) NOT NULL,
  `nama` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`,`idalurperkara`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `jurusitaweb`;
CREATE TABLE `jurusitaweb` (
  `IDJs` bigint(20) DEFAULT NULL,
  `IDPerkara` bigint(20) NOT NULL,
  `IDTahapan` tinyint(2) DEFAULT NULL,
  `tglPenetapan` date NOT NULL,
  `nama` varchar(100) NOT NULL,
  `aktif` char(1) DEFAULT NULL,
  PRIMARY KEY (`IDPerkara`,`tglPenetapan`,`nama`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `kasasidetilweb`;
CREATE TABLE `kasasidetilweb` (
  `ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `IDPerkara` bigint(20) unsigned NOT NULL COMMENT 'Primary key: merujuk ke tabel perkara kolom perkara_id (by system)',
  `nama` text,
  `IDStatusPihak` int(11) DEFAULT NULL COMMENT 'Status Pihak: 1=Pemohon Kasasi; 2=Termohon Kasasi',
  `statusPihak` varchar(153) DEFAULT NULL,
  `pihak_nama` text,
  `pihak_diwakili` char(1) DEFAULT NULL COMMENT 'Diwakili: Y=Ya; T=Tidak',
  `pemohon_nama` varchar(1000) DEFAULT NULL COMMENT 'Nama Pemohon Kasasi: isian bebas',
  `tglPermohonan` date DEFAULT NULL COMMENT 'Tanggal Permohonan Kasasi: isian tanggal',
  `tglPemberitahuanPermohonan` date DEFAULT NULL COMMENT 'Tanggal Pemberitahuan Kasasi: isian tanggal',
  `tglPenerimaanMemori` date DEFAULT NULL COMMENT 'Tanggal Penerimaan Memori Kasasi: isian tanggal',
  `tglPenyerahanMemori` date DEFAULT NULL COMMENT 'Tanggal Penyerahan Memori Kasasi: isian tanggal',
  `tglPenerimaanKontra` date DEFAULT NULL COMMENT 'Tanggal Penerimaan Kontra Kasasi: isian tanggal',
  `tglPenyerahanKontra` date DEFAULT NULL COMMENT 'Tanggal Penyerahan Kontra Kasasi: isian tanggal',
  `tglPemberitahuanInzage` date DEFAULT NULL COMMENT 'Tanggal Pemberitahuan Inzage Kasasi: isian tanggal',
  `tglPelaksanaanInzage` date DEFAULT NULL COMMENT 'Tanggal Pelaksanaan Inzage Kasasi: isian tanggal',
  `tglPemberitahuanPutusanKasasi` date DEFAULT NULL COMMENT 'Tanggal Pemberitahuan putusan Kasasi kepada Pemohon/Termohon/Pembanding/Terbanding: isian tanggal',
  `tglCabut` date DEFAULT NULL,
  PRIMARY KEY (`ID`,`IDPerkara`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `kasasiweb`;
CREATE TABLE `kasasiweb` (
  `IDPerkara` bigint(20) unsigned NOT NULL COMMENT 'Primary key: merujuk ke tabel perkara kolom perkara_id (by system)',
  `noPerkaraKasasi` varchar(50) DEFAULT NULL COMMENT 'Nomor perkara MA: isian bebas',
  `tglPermohonankasasi` date DEFAULT NULL COMMENT 'Tanggal Permohonan Kasasi: isian tanggal',
  `pemohonkasasi` varchar(1000) DEFAULT NULL COMMENT 'Pihak yang dimohonkan Kasasi: (by system)',
  `tglPengirimanBerkas` date DEFAULT NULL COMMENT 'Tanggal Pengiriman Berkas Kasasi dari PN ke MA: isian tanggal',
  `noSuratPengiriman` varchar(255) DEFAULT NULL COMMENT 'Nomor Surat Pengiriman Berkas Kasasi dari PN ke MA: isian bebas',
  `tglPenerimaanKembaliBerkas` date DEFAULT NULL COMMENT 'Tanggal Penerimaan Berkas Kasasi dari MA ke PN: isian tanggal',
  `hakimPertama` varchar(50) DEFAULT NULL COMMENT 'Nama Hakim 1 Tingkat Kasasi: merujuk ke tabel hakim_ma kolom nama',
  `hakimKedua` varchar(50) DEFAULT NULL COMMENT 'Nama Hakim 2 Tingkat Kasasi: merujuk ke tabel hakim_ma kolom nama',
  `hakimKetiga` varchar(50) DEFAULT NULL COMMENT 'Nama Hakim 3 Tingkat Kasasi: merujuk ke tabel hakim_ma kolom nama',
  `hakimKeempat` varchar(50) DEFAULT NULL COMMENT 'Nama Hakim 4 Tingkat Kasasi: merujuk ke tabel hakim_ma kolom nama',
  `hakimKelima` varchar(50) DEFAULT NULL COMMENT 'Nama Hakim 5 Tingkat Kasasi: merujuk ke tabel hakim_ma kolom nama',
  `paniteraPengganti` varchar(50) DEFAULT NULL COMMENT 'Nama Panitera Pengganti Tingkat Kasasi: merujuk ke tabel panitera_ma kolom nama',
  `tglPutusan` date DEFAULT NULL COMMENT 'Tanggal Putusan Kasasi(MA): isian tanggal',
  `noPutusankasasi` varchar(255) DEFAULT NULL COMMENT 'Nomor Putusan Kasasi: isian bebas',
  `amarPutusan` text,
  `tglMinutasi` date DEFAULT NULL COMMENT 'Tanggal Minutasi',
  `tglBeritaPutusan` date DEFAULT NULL COMMENT 'Tanggal Pengumuman Dalam Berita Negara RI: isian tanggal',
  `namaMediaBerita` varchar(250) DEFAULT NULL COMMENT 'Nama Media Berita: isian bebas',
  `tglSuratKabar` date DEFAULT NULL COMMENT 'Tanggal Pengumuman Dalam Surat Kabar: isian tanggal',
  `namaSuratKabar` varchar(250) DEFAULT NULL COMMENT 'Nama Surat Kabar: isian bebas',
  `prodeo` tinyint(1) unsigned DEFAULT NULL COMMENT 'Status Prodeo Kasasi: 0=Tidak, 1=Ya',
  `keterangan` text COMMENT 'Catatan putusan kasasi',
  PRIMARY KEY (`IDPerkara`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `mediasiweb`;
CREATE TABLE `mediasiweb` (
  `IDMediasi` bigint(20) NOT NULL,
  `IDTahapan` tinyint(1) DEFAULT NULL,
  `IDPerkara` bigint(20) NOT NULL,
  `jenisMediasi` tinyint(1) DEFAULT NULL,
  `tglPenetapan` date DEFAULT NULL,
  `SKPenetapan` varchar(50) DEFAULT NULL,
  `IDMediator` varchar(50) DEFAULT NULL,
  `statusMediator` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `tglMulaiMediasi` date DEFAULT NULL,
  `tglPutusan` date DEFAULT NULL,
  `hasil` text,
  `jenisHasilMediasi` text,
  `tglKesepakatan` date DEFAULT NULL,
  `tglPengajuanSepakat` date DEFAULT NULL,
  `tglAkta` date DEFAULT NULL,
  `isiAkta` text,
  `tglPermohonanMediasi` date DEFAULT NULL,
  `tglBeritahu` date DEFAULT NULL,
  `tglLaporan` date DEFAULT NULL,
  `tglKirimKesepakatan` date DEFAULT NULL,
  PRIMARY KEY (`IDMediasi`,`IDPerkara`),
  KEY `indeks` (`IDMediasi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `mediatorweb`;
CREATE TABLE `mediatorweb` (
  `IDMediator` int(11) unsigned NOT NULL COMMENT 'Primary key: (by system)',
  `statusMediator` char(1) DEFAULT NULL COMMENT 'Status Mediator: pilihan H=Hakim; N=Mediator Umum; P=Pegawai',
  `IDHakim` int(11) unsigned DEFAULT NULL COMMENT 'Hakim Id : MErujuk ke tabel hakim_pn kolom id',
  `nip` varchar(20) DEFAULT NULL COMMENT 'NIP(Nomor Induk Pegawai)',
  `nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Nama Lengkap: isian bebas (tanpa gelar dan singkatan)',
  `namaGelar` varchar(50) DEFAULT NULL COMMENT 'Nama Lengkap Dengan Gelar: isian bebas',
  `profesi` varchar(50) DEFAULT NULL COMMENT 'Profesi: isian bebas',
  `bersertifikat` char(1) NOT NULL COMMENT 'Status bersertifikat : Y (bersertifikat) T (tidak bersertifikat)',
  `nomorSertifikasi` varchar(50) DEFAULT NULL,
  `tglSertifikasi` date DEFAULT NULL,
  `lembagaSertifikasi` varchar(255) DEFAULT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_general_ci COMMENT 'Keterangan: isian bebas',
  PRIMARY KEY (`IDMediator`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` smallint(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent` smallint(11) DEFAULT NULL,
  `urutan` smallint(11) DEFAULT NULL,
  `title` varchar(150) DEFAULT NULL,
  `link` varchar(225) DEFAULT NULL,
  `params` varchar(255) DEFAULT NULL,
  `publish` char(1) NOT NULL DEFAULT 'Y',
  `jenis_pengadilan` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

insert  into `menu`(`id`,`parent`,`urutan`,`title`,`link`,`params`,`publish`,`jenis_pengadilan`) values (1,NULL,1,'Beranda','list_perkara',NULL,'Y',NULL),(2,NULL,2,'Perdata Umum',NULL,NULL,'Y','1'),(3,NULL,3,'Perdata Khusus',NULL,NULL,'Y','1'),(4,NULL,4,'Pidana',NULL,NULL,'Y','1'),(5,NULL,5,'Pidana Khusus',NULL,NULL,'Y','1'),(6,NULL,6,'Jadwal Sidang','list_jadwal_sidang',NULL,'Y',NULL),(7,2,1,'Perdata Gugatan','list_perkara','var_id=1;var_tahapan=10;','Y','1'),(8,2,4,'Perdata Permohonan','list_perkara','var_id=2;var_tahapan=10;','Y','1'),(12,4,1,'Pidana Biasa','list_perkara','var_id=111;var_tahapan=10;','Y','1'),(13,4,2,'Pidana Singkat','list_perkara','var_id=112;var_tahapan=10;','Y','1'),(14,4,3,'Pidana Cepat','list_perkara','var_id=113;var_tahapan=10;','Y','1'),(15,4,4,'Praperadilan','list_perkara','var_id=119;var_tahapan=10;','T','1'),(16,4,5,'Perkara Lalu Lintas','list_perkara','var_id=114;var_tahapan=10;','Y','1'),(17,2,2,'Perdata Gugatan Sederhana','list_perkara','var_id=8;var_tahapan=10;','Y','1'),(18,2,3,'Perdata Gugatan Bantahan','list_perkara','var_id=7;var_tahapan=10;','Y','1'),(19,5,1,'Pidana Anak','list_perkara','var_id=118;var_tahapan=10;','Y','1'),(20,3,1,'Hak Kekayaan Intelektual (HKI)','list_perkara','var_id=5;var_tahapan=10;','Y','1'),(21,3,2,'Kepailitan & PKPU','list_perkara','var_id=3,4;var_tahapan=10;','Y','1'),(22,3,3,'Pengadilan Hubungan Industrial (PHI)','list_perkara','var_id=6;var_tahapan=10;','Y','1'),(23,5,2,'Tindak Pidana Korupsi','list_perkara','var_id=115;var_tahapan=10;','Y','1'),(24,5,3,'Pidana Perikanan','list_perkara','var_id=116;var_tahapan=10;','Y','1'),(25,5,4,'Hak Asasi Manusia','list_perkara','var_id=117;var_tahapan=10;','Y','1'),(26,4,4,'Pidana Pra Peradilan','list_perkara','var_id=119;var_tahapan=10;','Y','1'),(27,NULL,7,'Laporan',NULL,NULL,'Y',NULL),(28,27,8,'Statistik Perkara','statistik_perkara','','Y',NULL),(29,NULL,8,'Delegasi',NULL,NULL,'Y','1'),(30,29,1,'Delegasi Masuk','list_delegasi','var_id=1;','Y','1'),(31,29,1,'Delegasi Keluar','list_delegasi','var_id=2;','Y','1'),(32,40,1,'Perdata Gugatan','list_perkara','var_id=9;var_tahapan=10;','Y','3'),(33,NULL,2,'Perdata Gugatan','list_perkara','var_id=15;var_tahapan=10;','Y','4'),(34,NULL,3,'Perdata Permohonan','list_perkara','var_id=16;var_tahapan=10;','Y','4'),(35,NULL,4,'Jinayah',NULL,NULL,'Y','4'),(36,35,1,'Jinayah','list_perkara','var_id=122;var_tahapan=10;','Y','4'),(37,35,1,'Praperadilan Jinayah','list_perkara','var_id=123;var_tahapan=10;','Y','4'),(38,NULL,4,'Pidana Kejahatan','list_perkara','var_id=120;var_tahapan=10;','Y','2'),(39,NULL,5,'Pidana Pelanggaran','list_perkara','var_id=121;var_tahapan=10;','Y','2'),(40,NULL,2,'Perkara',NULL,NULL,'Y','3'),(41,40,2,'Permohonan UU AP','list_perkara','var_id=10;var_tahapan=10;','Y','3'),(42,40,3,'Gugatan Keberatan (KIP)','list_perkara','var_id=11;var_tahapan=10;','Y','3');

DROP TABLE IF EXISTS `panggilandismissalweb`;
CREATE TABLE `panggilandismissalweb` (
  `ID` bigint(20) unsigned NOT NULL,
  `IDPerkara` bigint(20) unsigned NOT NULL,
  `tglPanggilan` date NOT NULL,
  `statusText` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`,`IDPerkara`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `penahananweb`;
CREATE TABLE `penahananweb` (
  `ID` bigint(20) unsigned NOT NULL,
  `IDPerkara` bigint(20) unsigned NOT NULL,
  `terdakwa` varchar(255) DEFAULT NULL,
  `jenisTahanan` varchar(100) DEFAULT NULL,
  `ditahanOleh` varchar(100) DEFAULT NULL,
  `statusPenahanan` varchar(100) DEFAULT NULL,
  `tglSurat` date DEFAULT NULL,
  `noSurat` varchar(100) DEFAULT NULL,
  `mulai` date DEFAULT NULL,
  `sampai` date DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `penetapandismissalweb`;
CREATE TABLE `penetapandismissalweb` (
  `IDPerkara` bigint(20) unsigned NOT NULL,
  `tglPenetapan` date NOT NULL,
  `amar` text,
  `hasil` char(1) DEFAULT NULL,
  `pemberitahuanPenggugat` date DEFAULT NULL,
  `pemberitahuanTergugat` date DEFAULT NULL,
  PRIMARY KEY (`IDPerkara`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `penetapanpersiapanprosesweb`;
CREATE TABLE `penetapanpersiapanprosesweb` (
  `ID` bigint(20) unsigned NOT NULL,
  `IDPerkara` bigint(20) unsigned NOT NULL,
  `urutan` smallint(2) NOT NULL,
  `tglMusyawarah` date NOT NULL,
  `agenda` varchar(100) DEFAULT NULL,
  `waktu` time DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`IDPerkara`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `penetapanpersiapanweb`;
CREATE TABLE `penetapanpersiapanweb` (
  `IDPerkara` bigint(20) unsigned NOT NULL,
  `tglPenetapan` date NOT NULL,
  `petitum` text NOT NULL,
  PRIMARY KEY (`IDPerkara`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `pengacaraweb`;
CREATE TABLE `pengacaraweb` (
  `IDPerkara` bigint(20) unsigned NOT NULL,
  `IDPengacara` bigint(20) unsigned NOT NULL,
  `pengacaraNama` varchar(500) NOT NULL,
  `urutan` smallint(6) DEFAULT NULL,
  `aktif` char(1) DEFAULT 'Y',
  `pihakKe` tinyint(1) NOT NULL,
  `IDPihak` bigint(20) unsigned NOT NULL,
  `pihakNama` varchar(500) NOT NULL,
  PRIMARY KEY (`IDPerkara`,`IDPengacara`,`IDPihak`,`pihakKe`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `perkarabiayaweb`;
CREATE TABLE `perkarabiayaweb` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `IDPerkara` bigint(20) unsigned NOT NULL,
  `IDTahapan` smallint(6) DEFAULT NULL,
  `jenisTransaksi` tinyint(1) DEFAULT NULL,
  `tglTransaksi` date DEFAULT NULL,
  `uraian` varchar(255) DEFAULT NULL,
  `nominal` int(10) unsigned NOT NULL,
  `keterangan` text,
  PRIMARY KEY (`ID`,`IDPerkara`)
) ENGINE=MyISAM AUTO_INCREMENT=8233 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `perkaraeksekusihtweb`;
CREATE TABLE `perkaraeksekusihtweb` (
  `IDHT` bigint(20) unsigned NOT NULL,
  `nomorperkaraPN` varchar(50) DEFAULT NULL,
  `putusanPn` date DEFAULT NULL,
  `nomorPerkaraBanding` varchar(50) DEFAULT NULL,
  `putusanBanding` date DEFAULT NULL,
  `nomorPerkaraKasasi` varchar(50) DEFAULT NULL,
  `putusanKasasi` date DEFAULT NULL,
  `nomorPerkaraPK` varchar(50) DEFAULT NULL,
  `putusanPK` date DEFAULT NULL,
  `eksekusiPutusan` int(11) DEFAULT NULL,
  `eksekusiNomorPerkara` varchar(50) DEFAULT NULL,
  `eksekusiAmarPutusan` text,
  `pihakPemohonEksekusi` int(11) DEFAULT NULL,
  `permohonanEksekusi` date DEFAULT NULL,
  `pemohonEksekusi` varchar(1000) DEFAULT NULL,
  `paraPihak` varchar(2000) DEFAULT NULL,
  `PenetapanTeguranEksekusi` date DEFAULT NULL,
  `nomorPenetapanTeguranEksekusi` varchar(50) DEFAULT NULL,
  `pelaksanaanTeguranEksekusi` date DEFAULT NULL,
  `penetapanSitaEKsekusi` date DEFAULT NULL,
  `nomorPenetapanSitaEksekusi` varchar(50) DEFAULT NULL,
  `pelaksanaanSitaEksekusi` date DEFAULT NULL,
  `jurusitaNama` varchar(500) DEFAULT NULL,
  `penetapanPerintahEksekusiLelang` date DEFAULT NULL,
  `pelaksanaanEksekusiLelang` date DEFAULT NULL,
  `penyerahanHasilLelang` date DEFAULT NULL,
  `penetapanPerintahEksekusiRill` date DEFAULT NULL,
  `pelaksanaanEksekusiRill` date DEFAULT NULL,
  `penetapanNonEksekusi` date DEFAULT NULL,
  `alasanEksekusi` text,
  `catatanEksekusi` text,
  `prodeoEksekusi` tinyint(1) DEFAULT NULL,
  `statusEksekusiText` varchar(100) DEFAULT NULL,
  `jenisHTText` varchar(250) DEFAULT NULL,
  `tglSertifikat` date DEFAULT NULL,
  `noSertifikat` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`IDHT`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `perkarakeberatanweb`;
CREATE TABLE `perkarakeberatanweb` (
  `IDPerkara` bigint(20) unsigned NOT NULL,
  `tglPendaftaran` date DEFAULT NULL,
  `pemohon` varchar(500) DEFAULT NULL,
  `tglPenetapanMajelis` date DEFAULT NULL,
  `majelisHakim` varchar(500) DEFAULT NULL,
  `tglPenetapanPP` date DEFAULT NULL,
  `paniteraPengganti` varchar(500) DEFAULT NULL,
  `tglPenetapanJurusita` date DEFAULT NULL,
  `jurusita` varchar(500) DEFAULT NULL,
  `tglPutusan` date DEFAULT NULL,
  `statusPutusan` varchar(50) DEFAULT NULL,
  `amar` text,
  `jenisPemberitahuan` varchar(10) DEFAULT NULL,
  `tglPemberitahuan` date DEFAULT NULL,
  `tglPemberitahuanPihakPertama` date DEFAULT NULL,
  `tglPemberitahuanPihakKedua` date DEFAULT NULL,
  `penerimaanMemori` date DEFAULT NULL,
  `penyerahanMemori` date DEFAULT NULL,
  `penerimaanKontra` date DEFAULT NULL,
  `penyerahanKontra` date DEFAULT NULL,
  PRIMARY KEY (`IDPerkara`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `perkaralalulintasweb`;
CREATE TABLE `perkaralalulintasweb` (
  `IDPerkara` bigint(20) NOT NULL,
  `ditilangOleh` varchar(100) DEFAULT NULL,
  `nomorTilang` varchar(50) DEFAULT NULL,
  `jenisKendaraan` varchar(100) DEFAULT NULL,
  `nomorPolisi` varchar(50) DEFAULT NULL,
  `buktiTilang` varchar(100) DEFAULT NULL,
  `tanggalPenindakan` date DEFAULT NULL COMMENT 'Tanggal Kejadian Penilangan',
  `jenisTilang` varchar(6) DEFAULT NULL COMMENT 'Warna Form Tilang (Merah, Biru)',
  `nomorPembayaran` varchar(20) DEFAULT NULL COMMENT 'Nomor BRI Virtual Account',
  PRIMARY KEY (`IDPerkara`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `perkaramatraweb`;
CREATE TABLE `perkaramatraweb` (
  `IDPerkara` bigint(20) unsigned NOT NULL,
  `matra` char(4) DEFAULT NULL,
  `asalBerkas` varchar(100) DEFAULT NULL,
  `tglKejadian` varchar(500) DEFAULT NULL,
  `tempatKejadian` text,
  `tglSkeppera` date DEFAULT NULL,
  `noSkeppera` varchar(50) DEFAULT NULL,
  `pejabatSkeppera` varchar(50) DEFAULT NULL,
  `tglSuratDakwaan` date DEFAULT NULL,
  `noSuratDakwaan` varchar(50) DEFAULT NULL,
  `penyidik` varchar(100) DEFAULT NULL,
  `noBAPPenyidik` varchar(100) DEFAULT NULL,
  `tglPenyidik` date DEFAULT NULL,
  PRIMARY KEY (`IDPerkara`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `perkarapenuntutanweb`;
CREATE TABLE `perkarapenuntutanweb` (
  `IDPerkara` bigint(20) unsigned NOT NULL,
  `tglPenuntutan` date DEFAULT NULL,
  `isiTuntutan` text,
  PRIMARY KEY (`IDPerkara`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `perkaraprosesweb`;
CREATE TABLE `perkaraprosesweb` (
  `IDPerkara` bigint(20) unsigned NOT NULL,
  `IDTahapan` smallint(6) NOT NULL,
  `tahapan` varchar(25) DEFAULT NULL,
  `IDProses` smallint(6) NOT NULL,
  `proses` varchar(200) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  PRIMARY KEY (`IDPerkara`,`IDTahapan`,`IDProses`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `perkaraputusanterdakwaweb`;
CREATE TABLE `perkaraputusanterdakwaweb` (
  `ID` bigint(20) unsigned NOT NULL,
  `IDPerkara` bigint(20) unsigned NOT NULL DEFAULT '0',
  `IDStatusPutusan` tinyint(4) NOT NULL,
  `nama` text,
  `durasiNominal` text,
  `tglPutusan` date DEFAULT NULL,
  `statusPutusan` varchar(50) DEFAULT NULL,
  `satuan` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID`,`IDPerkara`,`IDStatusPutusan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `perkaraputusanweb`;
CREATE TABLE `perkaraputusanweb` (
  `IDPerkara` bigint(20) unsigned NOT NULL,
  `tglPutusan` date NOT NULL,
  `isVerstek` char(1) DEFAULT NULL,
  `sumberHukum` varchar(100) DEFAULT NULL,
  `IDStatusPutusan` smallint(20) DEFAULT NULL,
  `statusPutusan` varchar(100) DEFAULT NULL,
  `tglCabut` date DEFAULT NULL,
  `tglGugur` date DEFAULT NULL,
  `amar` text,
  `tglPenetapanHakimPengawas` date DEFAULT NULL,
  `noPenetapanHakimPengawas` varchar(50) DEFAULT NULL,
  `IDHakimPengawas` bigint(20) unsigned DEFAULT NULL,
  `IDPengurus` bigint(20) unsigned DEFAULT NULL,
  `tglPenetapanKreditur` date DEFAULT NULL,
  `panitiaKreditur` varchar(500) DEFAULT NULL,
  `IDKurator` bigint(20) unsigned DEFAULT NULL,
  `tglMediaBerita` date DEFAULT NULL,
  `namaMediaBerita` varchar(250) DEFAULT NULL,
  `tglSuratKabar` date DEFAULT NULL,
  `namaSuratKabar` varchar(250) DEFAULT NULL,
  `tglMinutasi` date DEFAULT NULL,
  `TglKirimSalinanPenyidik` date DEFAULT NULL,
  `keterangan` text,
  `nilaiGantiRugi` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`IDPerkara`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `pihakintervensiweb`;
CREATE TABLE `pihakintervensiweb` (
  `ID` bigint(20) unsigned NOT NULL,
  `IDPerkara` bigint(20) unsigned NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jenisIntervensi` varchar(20) DEFAULT NULL,
  `tglIzinIntervensi` date DEFAULT NULL,
  `tergabungKePihak` varchar(25) DEFAULT NULL,
  `petitum` text,
  PRIMARY KEY (`ID`,`IDPerkara`),
  KEY `indeks` (`IDPerkara`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `pihakweb`;
CREATE TABLE `pihakweb` (
  `pihak_ke` tinyint(4) NOT NULL,
  `ID` bigint(20) NOT NULL,
  `IDPerkara` bigint(20) NOT NULL,
  `nama` text,
  `umur` int(3) DEFAULT NULL,
  `jenisKelamin` varchar(1) DEFAULT NULL,
  `urutan` int(20) DEFAULT NULL,
  PRIMARY KEY (`ID`,`IDPerkara`),
  KEY `indeks` (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `pkdetilweb`;
CREATE TABLE `pkdetilweb` (
  `ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `IDPerkara` bigint(20) unsigned NOT NULL COMMENT 'Primary key: merujuk ke tabel perkara kolom perkara_id (by system)',
  `nama` text,
  `IDStatusPihak` int(11) DEFAULT NULL,
  `statusPihak` varchar(153) DEFAULT NULL,
  `pihak_nama` text,
  `pihak_diwakili` char(1) DEFAULT NULL,
  `pemohon_nama` varchar(1000) DEFAULT NULL,
  `tglPermohonan` date DEFAULT NULL,
  `tglPemberitahuanPermohonan` date DEFAULT NULL COMMENT 'Tanggal Pemberitahuan PK: isian tanggal',
  `tglPenerimaanMemori` date DEFAULT NULL COMMENT 'Tanggal Penerimaan Memori PK',
  `tglPenyerahanMemori` date DEFAULT NULL COMMENT 'Tanggal Penyerahan Memori PK',
  `tglPenerimaanKontra` date DEFAULT NULL COMMENT 'Tanggal Penerimaan Jawaban PK : isian tanggal',
  `tglPenyerahanKontra` date DEFAULT NULL COMMENT 'Tanggal Penyerahan Jawaban PK: isian tanggal',
  `tglPemberitahuanInzage` date DEFAULT NULL,
  `tglPelaksanaanInzage` date DEFAULT NULL,
  `tglPemberitahuanPutusan` date DEFAULT NULL COMMENT 'Tanggal Pemberitahuan Salinan Putusan PK pada Pemohon/Isi Putusan PK pada Termohon: isian tanggal',
  `tglCabut` date DEFAULT NULL,
  PRIMARY KEY (`ID`,`IDPerkara`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `pkweb`;
CREATE TABLE `pkweb` (
  `IDPerkara` bigint(20) unsigned NOT NULL COMMENT 'Primary key: merujuk ke tabel perkara kolom perkara_id (by system)',
  `noPerkaraPK` varchar(50) DEFAULT NULL COMMENT 'Nomor Perkara PK: isian bebas',
  `tglPermohonan` date DEFAULT NULL COMMENT 'Tanggal Permohonan PK: isian tanggal',
  `pemohon` varchar(1000) DEFAULT NULL COMMENT 'Pihak yang dimohonkan PK: (by system)',
  `tglPemberitahuanPermohonan` date DEFAULT NULL COMMENT 'Tanggal Pemberitahuan PK: isian tanggal',
  `tglPenerimaanMemori` date DEFAULT NULL COMMENT 'Tanggal Penerimaan Memori PK',
  `tglPenyerahanMemori` date DEFAULT NULL COMMENT 'Tanggal Penyerahan Memori PK',
  `tglPenerimaanKontra` date DEFAULT NULL COMMENT 'Tanggal Penerimaan Jawaban PK : isian tanggal',
  `tglPenyerahanKontra` date DEFAULT NULL COMMENT 'Tanggal Penyerahan Jawaban PK: isian tanggal',
  `tglPemberitahuanInzagePihak1` date DEFAULT NULL,
  `tglPemberitahuanInzagePihak2` date DEFAULT NULL,
  `tglPelaksanaanInzagePihak1` date DEFAULT NULL,
  `tglPelaksanaanInzagePihak2` date DEFAULT NULL,
  `tglPengirimanBerkas` date DEFAULT NULL COMMENT 'Tanggal Pengiriman Berkas PK dari PN ke MA: isian tanggal',
  `nomorSuratPengiriman` varchar(255) DEFAULT NULL COMMENT 'Nomor Surat Pengiriman Berkas PK dari PN ke MA: isian bebas',
  `tglPenerimaanKembaliBerkas` date DEFAULT NULL COMMENT 'Tanggal Penerimaan Berkas PK dari MA ke PN: isian tanggal',
  `majelisHakim` varchar(500) DEFAULT NULL COMMENT 'Daftar Nama Makelis Hakim PK dipisahkan dengan <br />(by system)',
  `paniteraPengganti` varchar(50) DEFAULT NULL COMMENT 'Nama Panitera Pengganti PK: merujuk ke tabel panitera_ma kolom nama',
  `tglPutusan` date DEFAULT NULL COMMENT 'Tanggal Putusan PK: isian babas',
  `noPutusanPK` varchar(255) DEFAULT NULL COMMENT 'Nomor Putusan PK: isian babas',
  `amarPutusan` text,
  `tglMinutasi` date DEFAULT NULL COMMENT 'Tanggal Minutasi',
  `tglPemberitahuanPutusanPihak1` date DEFAULT NULL COMMENT 'Tanggal Pemberitahuan Salinan Putusan PK pada Pemohon: isian tanggal',
  `tglPemberitahuanPutusanPihak2` date DEFAULT NULL COMMENT 'Tanggal Pemberitahuan Salinan Isi Putusan PK pada Termohon: isian tanggal',
  PRIMARY KEY (`IDPerkara`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `ppweb`;
CREATE TABLE `ppweb` (
  `IDPP` bigint(11) NOT NULL,
  `IDPerkara` bigint(20) NOT NULL,
  `IDTahapan` tinyint(2) DEFAULT NULL,
  `tglPenetapan` date NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `aktif` char(1) DEFAULT NULL,
  PRIMARY KEY (`IDPerkara`,`IDPP`,`tglPenetapan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `proses`;
CREATE TABLE `proses` (
  `ID` smallint(6) NOT NULL,
  `idalurperkara` smallint(3) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `prosesalurperkaraweb`;
CREATE TABLE `prosesalurperkaraweb` (
  `ID` tinyint(2) NOT NULL,
  `IDTahapan` tinyint(2) NOT NULL,
  `IDAlurPerkara` smallint(3) NOT NULL,
  `IDProses` smallint(3) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDTahapan`,`IDAlurPerkara`,`IDProses`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `prosesweb`;
CREATE TABLE `prosesweb` (
  `ID` smallint(6) NOT NULL,
  `idalurperkara` smallint(3) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `putusanpemberitahuanweb`;
CREATE TABLE `putusanpemberitahuanweb` (
  `IDPerkara` bigint(20) unsigned NOT NULL,
  `PutusanAkhir` tinyint(4) NOT NULL,
  `pihakke` tinyint(4) NOT NULL,
  `IDPihak` bigint(20) NOT NULL,
  `urutan` smallint(6) NOT NULL,
  `nama` text,
  `tglPemberitahuan` date DEFAULT NULL,
  `tglMenerimaPutusan` date DEFAULT NULL,
  `tglKirimSalinan` date DEFAULT NULL,
  PRIMARY KEY (`IDPerkara`,`PutusanAkhir`,`pihakke`,`IDPihak`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `putusanpenahananweb`;
CREATE TABLE `putusanpenahananweb` (
  `IDPerkara` bigint(20) unsigned NOT NULL,
  `IDPihak` bigint(20) unsigned NOT NULL,
  `nama` varchar(150) DEFAULT NULL,
  `IDStatusPutusan` varchar(15) DEFAULT NULL,
  `statusPutusan` varchar(150) DEFAULT NULL,
  `keterangan` text,
  PRIMARY KEY (`IDPerkara`,`IDPihak`),
  KEY `indeks` (`IDPerkara`),
  FULLTEXT KEY `statusPutusan` (`statusPutusan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `putusanperdataweb`;
CREATE TABLE `putusanperdataweb` (
  `IDPerkara` bigint(20) unsigned NOT NULL,
  `tglPutusan` date DEFAULT NULL,
  `IDStatusPutusan` tinyint(4) DEFAULT NULL,
  `statusPutusan` varchar(50) DEFAULT NULL,
  `verstek` varchar(1) DEFAULT NULL,
  `sumberHukum` varchar(50) DEFAULT NULL,
  `amar` text,
  `tglPemberitahuanPihak1` date DEFAULT NULL,
  `tglPemberitahuanPihak2` date DEFAULT NULL,
  `tglPemberitahuanPihak3` date DEFAULT NULL,
  `tglMinutasi` date DEFAULT NULL,
  `keterangan` text,
  `nilaiGantiRugi` bigint(20) DEFAULT NULL,
  `tanggalCabut` date DEFAULT NULL,
  PRIMARY KEY (`IDPerkara`),
  KEY `DATE` (`IDPerkara`,`tglPutusan`),
  KEY `indeks` (`IDPerkara`),
  FULLTEXT KEY `amar` (`amar`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `putusanpidanaweb`;
CREATE TABLE `putusanpidanaweb` (
  `IDPerkara` bigint(20) unsigned NOT NULL,
  `tglPutusan` date DEFAULT NULL,
  `StatusPutusan` varchar(50) DEFAULT NULL,
  `amar` text,
  `tglPemberitahuanPihak1` date DEFAULT NULL,
  `tglPemberitahuanPihak2` date DEFAULT NULL,
  `tglJaksaMenerima` date DEFAULT NULL,
  `tglTerdakwaMenerima` date DEFAULT NULL,
  `TglKirimSalinanPihak1` date DEFAULT NULL,
  `TglKirimSalinanPihak2` date DEFAULT NULL,
  `TglKirimSalinanPihak3` date DEFAULT NULL,
  `tglMinutasi` date DEFAULT NULL,
  `keterangan` text,
  PRIMARY KEY (`IDPerkara`),
  KEY `DATE` (`IDPerkara`,`tglPutusan`),
  KEY `indeks` (`IDPerkara`),
  FULLTEXT KEY `amar` (`amar`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `putusanselakhususweb`;
CREATE TABLE `putusanselakhususweb` (
  `IDPerkara` bigint(20) unsigned NOT NULL,
  `tglMinutasi` date DEFAULT NULL,
  `tglBerita` date DEFAULT NULL,
  `namaBerita` varchar(250) DEFAULT NULL,
  `tglSuratBerita` date DEFAULT NULL,
  `namaSuratkabar` varchar(250) DEFAULT NULL,
  `tglPenetapanHakimPengawas` date DEFAULT NULL,
  `namaHakimPengawas` varchar(150) DEFAULT NULL,
  `namaPengurus` varchar(150) DEFAULT NULL,
  `tglPerpanjangan` date DEFAULT NULL,
  `mulaiPerpanjangan` date DEFAULT NULL,
  `sampaiPerpanjangan` date DEFAULT NULL,
  `waktuPerpanjangan` varchar(50) DEFAULT NULL,
  `tglPenetapanSitaJaminan` date DEFAULT NULL,
  `tglPelaksanaanSitaJaminan` date DEFAULT NULL,
  PRIMARY KEY (`IDPerkara`),
  KEY `indeks` (`IDPerkara`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `putusanselaweb`;
CREATE TABLE `putusanselaweb` (
  `IDPerkara` bigint(20) unsigned NOT NULL,
  `tglPutusanSela` date DEFAULT NULL,
  `amarSela` text,
  `tglMinutasi` date DEFAULT NULL,
  `tglBerita` date DEFAULT NULL,
  `namaMedia` varchar(255) DEFAULT NULL,
  `tglSuratKabar` date DEFAULT NULL,
  `namaSuratKabar` varchar(255) DEFAULT NULL,
  `tglPenetapanHakim` date DEFAULT NULL,
  `hakimPengawas` varchar(255) DEFAULT NULL,
  `pengurusNama` varchar(255) DEFAULT NULL,
  `tglPerpanjangan` date DEFAULT NULL,
  `mulaiPerpanjangan` date DEFAULT NULL,
  `sampaiPerpanjangan` date DEFAULT NULL,
  `penetapanSitaJaminan` date DEFAULT NULL,
  `pelaksanaanSitaJaminan` date DEFAULT NULL,
  `tglPemberitahuanPihak1` date DEFAULT NULL,
  `tglPemberitahuanPihak2` date DEFAULT NULL,
  `tglPemberitahuanPihak3` date DEFAULT NULL,
  `keterangan` text,
  PRIMARY KEY (`IDPerkara`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `rekonvensiweb`;
CREATE TABLE `rekonvensiweb` (
  `IDPerkara` bigint(20) unsigned NOT NULL,
  `tglPendaftaran` date NOT NULL,
  `parapihak` varchar(500) NOT NULL,
  `petitum` text NOT NULL,
  PRIMARY KEY (`IDPerkara`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `sidangpertamaweb`;
CREATE TABLE `sidangpertamaweb` (
  `IDPerkara` bigint(20) NOT NULL,
  `tglPenetapan` date DEFAULT NULL,
  `tglSidangPertama` date DEFAULT NULL,
  PRIMARY KEY (`IDPerkara`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `statuspihakweb`;
CREATE TABLE `statuspihakweb` (
  `IDAlurPerkara` smallint(11) unsigned NOT NULL,
  `IDTahapan` int(11) unsigned NOT NULL,
  `PihakKe` tinyint(1) unsigned NOT NULL,
  `nama` varchar(50) NOT NULL,
  `aktif` char(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`IDAlurPerkara`,`IDTahapan`,`PihakKe`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `statusputusanweb`;
CREATE TABLE `statusputusanweb` (
  `id` tinyint(2) NOT NULL,
  `IDJenisPerkara` tinyint(2) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jenis_pengadilan` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`,`jenis_pengadilan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `ordering` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `NAME` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `sys_sinkronisasi`;
CREATE TABLE `sys_sinkronisasi` (
  `id` char(1) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `verzetweb`;
CREATE TABLE `verzetweb` (
  `IDPerkara` bigint(20) unsigned NOT NULL,
  `tglPendaftaran` date DEFAULT NULL,
  `tglPenetapanMajelis` date DEFAULT NULL,
  `majelisHakim` varchar(500) DEFAULT NULL,
  `tglPenetapanPP` date DEFAULT NULL,
  `paniteraPengganti` varchar(500) DEFAULT NULL,
  `tglPenetapanJurusita` date DEFAULT NULL,
  `jurusita` varchar(500) DEFAULT NULL,
  `tglPenetapanSidang` date DEFAULT NULL,
  `tglSidangPertama` date DEFAULT NULL,
  `verstek` char(1) DEFAULT NULL,
  `sumberHukum` varchar(50) DEFAULT NULL,
  `putusan` date DEFAULT NULL,
  `statusPutusan` varchar(50) DEFAULT NULL,
  `amarPutusan` text,
  `jenisPemberitahuan` varchar(15) DEFAULT NULL,
  `tglPemberitahuan` date DEFAULT NULL,
  `tglPemberitahuanPutusanKpdPenggugat` text,
  `tglPemberitahuanPutusanKpdTergugat` text,
  PRIMARY KEY (`IDPerkara`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DELIMITER $$

/*!50003 CREATE PROCEDURE `updateData`()
BEGIN
	UPDATE sys_sinkronisasi SET time_stamp=CURRENT_TIMESTAMP WHERE id=1;
END */$$
DELIMITER ;

/*Table structure for table `viewperkaraklasifikasi` */

DROP TABLE IF EXISTS `viewperkaraklasifikasi`;

/*!50001 DROP VIEW IF EXISTS `viewperkaraklasifikasi` */;
/*!50001 DROP TABLE IF EXISTS `viewperkaraklasifikasi` */;

/*!50001 CREATE TABLE  `viewperkaraklasifikasi`(
 `IDPerkara` bigint(20) ,
 `klasifikasiPerkara` tinyint(4) 
)*/;

/*Table structure for table `viewputusanall` */

DROP TABLE IF EXISTS `viewputusanall`;

/*!50001 DROP VIEW IF EXISTS `viewputusanall` */;
/*!50001 DROP TABLE IF EXISTS `viewputusanall` */;

/*!50001 CREATE TABLE  `viewputusanall`(
 `IDPerkara` bigint(20) unsigned ,
 `tglPutusan` date 
)*/;

/*View structure for view viewperkaraklasifikasi */

/*!50001 DROP TABLE IF EXISTS `viewperkaraklasifikasi` */;
/*!50001 DROP VIEW IF EXISTS `viewperkaraklasifikasi` */;

/*!50001 CREATE VIEW `viewperkaraklasifikasi` AS select `dataumumweb`.`IDPerkara` AS `IDPerkara`,`dataumumweb`.`klasifikasiPerkara` AS `klasifikasiPerkara` from `dataumumweb` */;

/*View structure for view viewputusanall */

/*!50001 DROP TABLE IF EXISTS `viewputusanall` */;
/*!50001 DROP VIEW IF EXISTS `viewputusanall` */;

/*!50001 CREATE VIEW `viewputusanall` AS select `perdata`.`IDPerkara` AS `IDPerkara`,`perdata`.`tglPutusan` AS `tglPutusan` from `putusanperdataweb` `perdata` union select `pidana`.`IDPerkara` AS `IDPerkara`,`pidana`.`tglPutusan` AS `tglPutusan` from `putusanpidanaweb` `pidana` */;

