<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	 function __construct() {
        parent::__construct();
        $this->load->helper('form');
        $this->load->library('parser');
        $this->load->database();
    }

	public function index()
	{
		
		$data = array(
        'base_url' => base_url(),
        'univ' => $this->get_univ()
		);

		$this->parser->parse('home', $data);
	}
	public function get_univ()
	{
		$query = $this->db->query("select * from univ");
		$eko = "";
		foreach ($query->result() as $row)
		{
		       $eko .= "<option value='".$row->id."'> ".$row->nama."</option>"; 
		}
		return $eko;

	}
	public function get_tim($value='1')
	{
		$value = $this->input->post('univ'); 
		$query = $this->db->query("select * from peserta where id_univ = ".$value);
		$eko = '<button onclick="tambah()">Tambah Anggota</button>';
		foreach ($query->result() as $row)
		{
						if($row->id_divisi==1){
							$eko .= $this->get_lomba1($row->id);
						}else if($row->id_divisi==2){
							$eko .= $this->get_krsbi_roda($row->id);
						}else if($row->id_divisi==3){
							$eko .= $this->get_krsbi_kaki($row->id);
						}else {
							$eko .= $this->get_krai($row->id);
						}
		}
	
		echo $eko;
	}
	public function get_lomba1($id='')
	{
		$query = $this->db->query('select * from peserta where id = '.$id);
		$row = $query->row();
		if (isset($row))
		{
			$eko = ' <h2>'.$row->tim.'</h2>
					  <table class="table">
					    <thead>
					      <tr>
					        <th>TIM</th>
					        <th>Nama</th>
					        <th>NIM/NPP/NIP</th>
					        <th>Email</th>
					        <th>Telp</th>
					        <th>Foto</th>
					        <th>Aksi</th>
					      </tr>
					    </thead>
					    <tbody>   
					      <tr class="success">
					        <td>Success</td>
					        <td>Doe</td>
					        <td>john@example.com</td>
					        <td>john@example.com</td>
					        <td>john@example.com</td>
					        <td>john@example.com</td>
					        <td>edit|delete</td>
					      </tr>
					      <tr class="danger">
					        <td>Danger</td>
					        <td>Moe</td>
					        <td>mary@example.com</td>
					      </tr>
					      <tr class="info">
					        <td>Info</td>
					        <td>Dooley</td>
					        <td>july@example.com</td>
					      </tr>
					      <tr class="warning">
					        <td>Warning</td>
					        <td>Refs</td>
					        <td>bo@example.com</td>
					      </tr>
					      <tr class="active">
					        <td>Active</td>
					        <td>Activeson</td>
					        <td>act@example.com</td>
					      </tr>
					    </tbody>
					  </table>
					</div>';

		}
		echo $eko;

	}
	public function get_krsti($id='')
	{
		$query = $this->db->query('select * from peserta where id = '.$id);
		$row = $query->row();
		if (isset($row))
		{
		        $eko = '<div class="styled-input-2">
						<label class="header">'.$row->tim.'</label>
						<div class="row">
						 	 <div class="col-sm-6">
						 	 <h4>Anggota1</h4>
							  	<div class="styled-input">
								<input type="text" name="Nama1" placeholder="Nama">
								</div>
							  	<div class="styled-input">
								<input type="text" name="Nim1" placeholder="Nim" >
								</div>
							  	<div class="styled-input">
								<input type="text" name="Email1" placeholder="Email">
								</div>
							  	<div class="styled-input">
								<input type="text" name="hp1" placeholder="NO HP">
								</div>
							  	<div class="styled-input">
							  	Foto
								<input type="file" name="foto1">
								</div>
							</div>
						  	<div class="col-sm-6">
						 	 <h4>Anggota2</h4>
							  	<div class="styled-input">
								<input type="text" name="Nama2" placeholder="Nama 2">
								</div>
							  	<div class="styled-input">
								<input type="text" name="Nim2" placeholder="Nim 2" >
								</div>
							  	<div class="styled-input">
								<input type="text" name="Email2" placeholder="Email 2">
								</div>
							  	<div class="styled-input">
								<input type="text" name="hp2" placeholder="NO HP 2">
								</div>
							  	<div class="styled-input">
							  	Foto
								<input type="file" name="foto2">
								</div>
						  	</div>
						</div>
						<div class="row">
						 	 <div class="col-sm-6">
						 	 <h4>Anggota3</h4>
							  	<div class="styled-input">
								<input type="text" name="Nama3" placeholder="Nama 3">
								</div>
							  	<div class="styled-input">
								<input type="text" name="Nim3" placeholder="Nim 3" >
								</div>
							  	<div class="styled-input">
								<input type="text" name="Email3" placeholder="Email 3">
								</div>
							  	<div class="styled-input">
								<input type="text" name="hp3" placeholder="NO HP 3">
								</div>
							  	<div class="styled-input">
							  	Foto
								<input type="file" name="foto3">
								</div>
							</div>
						  	<div class="col-sm-6">
						 	 <h4>Pembimbing</h4>
						 	 	<div class="styled-input">
							  	<input type="text" name="Namap" placeholder="Nama Pembimbing">
								</div>
							  	<div class="styled-input">
								<input type="text" name="Nimp" placeholder="NPP/NIP Pembimbing" >
								</div>
							  	<div class="styled-input">
								<input type="text" name="Emailp" placeholder="Email Pembimbing">
								</div>
							  	<div class="styled-input">
								<input type="text" name="hpp" placeholder="NO HP Pembimbing">
								</div>
							  	<div class="styled-input">
							  	Foto
								<input type="file" name="fotop" placeholder="foto Pembimbing">
								</div>
						  	</div>
						</div></div>';

						$eko .='<div class="styled-input-2">
									<label class="header">Mekanik '.$row->tim.'</label>
									<i style="color:  yellow;">* biaya tambahan</i>
									<div class="styled-input">
								  	<input type="text" name="Namam" placeholder="Nama Mekanik">
									</div>
								  	<div class="styled-input">
									<input type="text" name="Nimm" placeholder="NPP/NIP Mekanik" >
									</div>
								  	<div class="styled-input">
									<input type="text" name="Emailm" placeholder="Email Mekanik">
									</div>
								  	<div class="styled-input">
									<input type="text" name="hpm" placeholder="NO HP Mekanik">
									</div>
								  	<div class="styled-input">
								  	Foto Mekanik
									<input type="file" name="fotom" placeholder="foto Mekanik">
									</div>
								</div>
								<div class="clear"> </div>';
		}
		
		echo $eko;
	}
	public function get_krsbi_roda($id='')
	{
		$query = $this->db->query('select * from peserta where id = '.$id);
		$row = $query->row();
		if (isset($row))
		{
		        $eko = '<div class="styled-input-2">
						<label class="header">'.$row->tim.'</label>
						<div class="row">
						 	 <div class="col-sm-6">
						 	 <h4>Anggota1</h4>
							  	<div class="styled-input">
								<input type="text" name="Nama1" placeholder="Nama">
								</div>
							  	<div class="styled-input">
								<input type="text" name="Nim1" placeholder="Nim" >
								</div>
							  	<div class="styled-input">
								<input type="text" name="Email1" placeholder="Email">
								</div>
							  	<div class="styled-input">
								<input type="text" name="hp1" placeholder="NO HP">
								</div>
							  	<div class="styled-input">
							  	Foto
								<input type="file" name="foto1">
								</div>
							</div>
						  	<div class="col-sm-6">
						 	 <h4>Anggota2</h4>
							  	<div class="styled-input">
								<input type="text" name="Nama2" placeholder="Nama 2">
								</div>
							  	<div class="styled-input">
								<input type="text" name="Nim2" placeholder="Nim 2" >
								</div>
							  	<div class="styled-input">
								<input type="text" name="Email2" placeholder="Email 2">
								</div>
							  	<div class="styled-input">
								<input type="text" name="hp2" placeholder="NO HP 2">
								</div>
							  	<div class="styled-input">
							  	Foto
								<input type="file" name="foto2">
								</div>
						  	</div>
						</div>
						<div class="row">
						 	 <div class="col-sm-6">
						 	 <h4>Anggota3</h4>
							  	<div class="styled-input">
								<input type="text" name="Nama3" placeholder="Nama 3">
								</div>
							  	<div class="styled-input">
								<input type="text" name="Nim3" placeholder="Nim 3" >
								</div>
							  	<div class="styled-input">
								<input type="text" name="Email3" placeholder="Email 3">
								</div>
							  	<div class="styled-input">
								<input type="text" name="hp3" placeholder="NO HP 3">
								</div>
							  	<div class="styled-input">
							  	Foto
								<input type="file" name="foto3">
								</div>
							</div>
						  	<div class="col-sm-6">
						 	 <h4>Anggota</h4>
						 	 	<div class="styled-input">
								<input type="text" name="Nama4" placeholder="Nama 4">
								</div>
							  	<div class="styled-input">
								<input type="text" name="Nim4" placeholder="Nim 4" >
								</div>
							  	<div class="styled-input">
								<input type="text" name="Email4" placeholder="Email 4">
								</div>
							  	<div class="styled-input">
								<input type="text" name="hp4" placeholder="NO HP 4">
								</div>
							  	<div class="styled-input">
							  	Foto
								<input type="file" name="foto4">
								</div>
						  	</div>
						</div>
						<div class="row">
						  	<div class="col-sm-6">
						 	 <h4>Pembimbing</h4>
						 	 	<div class="styled-input">
							  	<input type="text" name="Namap" placeholder="Nama Pembimbing">
								</div>
							  	<div class="styled-input">
								<input type="text" name="Nimp" placeholder="NPP/NIP Pembimbing" >
								</div>
							  	<div class="styled-input">
								<input type="text" name="Emailp" placeholder="Email Pembimbing">
								</div>
							  	<div class="styled-input">
								<input type="text" name="hpp" placeholder="NO HP Pembimbing">
								</div>
							  	<div class="styled-input">
							  	Foto
								<input type="file" name="fotop" placeholder="foto Pembimbing">
								</div>
						  	</div>
						</div></div>';


						$eko .='<div class="styled-input-2">
									<label class="header">Mekanik '.$row->tim.'</label>
									<i style="color:  yellow;">* biaya tambahan</i>
									<div class="styled-input">
								  	<input type="text" name="Namam" placeholder="Nama Mekanik">
									</div>
								  	<div class="styled-input">
									<input type="text" name="Nimm" placeholder="NPP/NIP Mekanik" >
									</div>
								  	<div class="styled-input">
									<input type="text" name="Emailm" placeholder="Email Mekanik">
									</div>
								  	<div class="styled-input">
									<input type="text" name="hpm" placeholder="NO HP Mekanik">
									</div>
								  	<div class="styled-input">
								  	Foto Mekanik
									<input type="file" name="fotom" placeholder="foto Mekanik">
									</div>
								</div>
								<div class="clear"> </div>';
		}
		echo $eko;
	}
	public function get_krsbi_kaki($id='')
	{
		$query = $this->db->query('select * from peserta where id = '.$id);
		$row = $query->row();
		if (isset($row))
		{
		        $eko = '<div class="styled-input-2">
						<label class="header">'.$row->tim.'</label>
						<div class="row">
						 	 <div class="col-sm-6">
						 	 <h4>Anggota1</h4>
							  	<div class="styled-input">
								<input type="text" name="Nama1" placeholder="Nama">
								</div>
							  	<div class="styled-input">
								<input type="text" name="Nim1" placeholder="Nim" >
								</div>
							  	<div class="styled-input">
								<input type="text" name="Email1" placeholder="Email">
								</div>
							  	<div class="styled-input">
								<input type="text" name="hp1" placeholder="NO HP">
								</div>
							  	<div class="styled-input">
							  	Foto
								<input type="file" name="foto1">
								</div>
							</div>
						  	<div class="col-sm-6">
						 	 <h4>Anggota2</h4>
							  	<div class="styled-input">
								<input type="text" name="Nama2" placeholder="Nama 2">
								</div>
							  	<div class="styled-input">
								<input type="text" name="Nim2" placeholder="Nim 2" >
								</div>
							  	<div class="styled-input">
								<input type="text" name="Email2" placeholder="Email 2">
								</div>
							  	<div class="styled-input">
								<input type="text" name="hp2" placeholder="NO HP 2">
								</div>
							  	<div class="styled-input">
							  	Foto
								<input type="file" name="foto2">
								</div>
						  	</div>
						</div>
						<div class="row">
						  	<div class="col-sm-6">
						 	 <h4>Pembimbing</h4>
						 	 	<div class="styled-input">
							  	<input type="text" name="Namap" placeholder="Nama Pembimbing">
								</div>
							  	<div class="styled-input">
								<input type="text" name="Nimp" placeholder="NPP/NIP Pembimbing" >
								</div>
							  	<div class="styled-input">
								<input type="text" name="Emailp" placeholder="Email Pembimbing">
								</div>
							  	<div class="styled-input">
								<input type="text" name="hpp" placeholder="NO HP Pembimbing">
								</div>
							  	<div class="styled-input">
							  	Foto
								<input type="file" name="fotop" placeholder="foto Pembimbing">
								</div>
						  	</div>
						</div></div>';

						$eko .='<div class="styled-input-2">
									<label class="header">Mekanik '.$row->tim.'</label>
									<i style="color:  yellow;">* biaya tambahan</i>
									<div class="styled-input">
								  	<input type="text" name="Namam" placeholder="Nama Mekanik">
									</div>
								  	<div class="styled-input">
									<input type="text" name="Nimm" placeholder="NPP/NIP Mekanik" >
									</div>
								  	<div class="styled-input">
									<input type="text" name="Emailm" placeholder="Email Mekanik">
									</div>
								  	<div class="styled-input">
									<input type="text" name="hpm" placeholder="NO HP Mekanik">
									</div>
								  	<div class="styled-input">
								  	Foto Mekanik
									<input type="file" name="fotom" placeholder="foto Mekanik">
									</div>
								</div>
								<div class="clear"> </div>';
		}
		echo $eko;
	}
	public function get_krai($id='')
	{
		$query = $this->db->query('select * from peserta where id = '.$id);
		$row = $query->row();
		if (isset($row))
		{
		        $eko = '<div class="styled-input-2">
						<label class="header">'.$row->tim.'</label>
						<div class="row">
						 	 <div class="col-sm-6">
						 	 <h4>Anggota1</h4>
							  	<div class="styled-input">
								<input type="text" name="Nama1" placeholder="Nama">
								</div>
							  	<div class="styled-input">
								<input type="text" name="Nim1" placeholder="Nim" >
								</div>
							  	<div class="styled-input">
								<input type="text" name="Email1" placeholder="Email">
								</div>
							  	<div class="styled-input">
								<input type="text" name="hp1" placeholder="NO HP">
								</div>
							  	<div class="styled-input">
							  	Foto
								<input type="file" name="foto1">
								</div>
							</div>
						  	<div class="col-sm-6">
						 	 <h4>Anggota2</h4>
							  	<div class="styled-input">
								<input type="text" name="Nama2" placeholder="Nama 2">
								</div>
							  	<div class="styled-input">
								<input type="text" name="Nim2" placeholder="Nim 2" >
								</div>
							  	<div class="styled-input">
								<input type="text" name="Email2" placeholder="Email 2">
								</div>
							  	<div class="styled-input">
								<input type="text" name="hp2" placeholder="NO HP 2">
								</div>
							  	<div class="styled-input">
							  	Foto
								<input type="file" name="foto2">
								</div>
						  	</div>
						</div>
						<div class="row">
						 	 <div class="col-sm-6">
						 	 <h4>Anggota3</h4>
							  	<div class="styled-input">
								<input type="text" name="Nama3" placeholder="Nama 3">
								</div>
							  	<div class="styled-input">
								<input type="text" name="Nim3" placeholder="Nim 3" >
								</div>
							  	<div class="styled-input">
								<input type="text" name="Email3" placeholder="Email 3">
								</div>
							  	<div class="styled-input">
								<input type="text" name="hp3" placeholder="NO HP 3">
								</div>
							  	<div class="styled-input">
							  	Foto
								<input type="file" name="foto3">
								</div>
							</div>
						  	<div class="col-sm-6">
						 	 <h4>Pembimbing</h4>
						 	 	<div class="styled-input">
							  	<input type="text" name="Namap" placeholder="Nama Pembimbing">
								</div>
							  	<div class="styled-input">
								<input type="text" name="Nimp" placeholder="NPP/NIP Pembimbing" >
								</div>
							  	<div class="styled-input">
								<input type="text" name="Emailp" placeholder="Email Pembimbing">
								</div>
							  	<div class="styled-input">
								<input type="text" name="hpp" placeholder="NO HP Pembimbing">
								</div>
							  	<div class="styled-input">
							  	Foto
								<input type="file" name="fotop" placeholder="foto Pembimbing">
								</div>
						  	</div>
						</div></div>';

						$eko .='<div class="styled-input-2">
									<label class="header">Mekanik '.$row->tim.'</label>
									<i style="color:  yellow;">* biaya tambahan</i>
									<div class="styled-input">
								  	<input type="text" name="Namam" placeholder="Nama Mekanik">
									</div>
								  	<div class="styled-input">
									<input type="text" name="Nimm" placeholder="NPP/NIP Mekanik" >
									</div>
								  	<div class="styled-input">
									<input type="text" name="Emailm" placeholder="Email Mekanik">
									</div>
								  	<div class="styled-input">
									<input type="text" name="hpm" placeholder="NO HP Mekanik">
									</div>
								  	<div class="styled-input">
								  	Foto Mekanik
									<input type="file" name="fotom" placeholder="foto Mekanik">
									</div>
								</div>
								<div class="clear"> </div>';
		}
		echo $eko;
	}
	public function tambah_peserta($value='')
	{
		$this->load->view('tambah_peserta');
	}
	public function eko()
	{
		$this->load->view('tes');
	}
}
