<?php
/*
-- ---------------------------------------------------------------
-- SWARAKALIBATA Ci CMS
-- CREATED BY : ROBBY PRIHANDAYA

-- LICENSE    : http://opensource.org/licenses/MIT  MIT License
-- CREATED ON : 2019-03-26
-- UPDATED ON : 2019-11-18
-- ---------------------------------------------------------------
*/
defined('BASEPATH') OR exit('No direct script access allowed');
class Hubungi extends CI_Controller {
	public function index(){
		$query = $this->model_utama->view_where('mod_alamat',array('id_alamat' => 1));
		$data['iden'] = $this->model_utama->view_where('identitas',array('id_identitas' => 1))->row_array();
		$row = $query->row_array();
		$data['title'] = 'Hubungi Kami';
		$data['description'] = 'Silahkan Mengisi Form Dibawah ini untuk menghubungi kami';
		$data['keywords'] = 'hubungi, kontak, kritik, saran, pesan';
		$data['rows'] = $row;

        $kategori = $this->model_utama->kategori();
		$this->template->load(template().'/template',template().'/hubungi',$data, $kategori);
	}

	function kirim(){
		if (isset($_POST['submit'])){
			if ($this->input->post()) {
				$data = array('nama'=>cetak($this->input->post('a',TRUE)),
	                            'email'=>cetak($this->input->post('b',TRUE)),
	                            'subjek'=>$_SERVER['REMOTE_ADDR'],
	                            'pesan'=>cetak($this->input->post('c',TRUE)),
                                'kategori'=>cetak($this->input->post('d',TRUE)),
	                            'tanggal'=>date('Y-m-d'),
	                            'jam'=>date('H:i:s'));
				$this->model_utama->insert('hubungi',$data);
				echo $this->session->set_flashdata('message', '<div class="alert alert-success"><center>Pesan terkirim!, akan kami respon via email!</center></div>');
			}else{
				echo $this->session->set_flashdata('message', '<div class="alert alert-danger"><center>Security Code yang anda masukkan salah!</center></div>');
			}
			redirect('hubungi');
		}
	}
}
