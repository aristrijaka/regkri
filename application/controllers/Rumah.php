<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Rumah extends CI_Controller {

	 function __construct() {
        parent::__construct();
        $this->load->helper('form');
        $this->load->library('parser');
        $config['upload_path'] = './uploads/';
		$config['allowed_types'] = 'gif|jpg|png';
		$config['max_size']     = '100';
		$config['max_width'] = '1024';
		$config['max_height'] = '768';
		$this->load->library('upload', $config);
        $this->load->database();
    }

	public function index()
	{
		
		$data = array(
        'base_url' => base_url(),
        'univ' => $this->get_univ()
		);

		$this->parser->parse('home_v', $data);
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
		$eko = "";
		foreach ($query->result() as $row)
		{
						$eko .= "<option value='".$row->id."'> ".$row->nama."</option>"; 
		}
		echo $eko;
	}

	public function get_lomba1($univ='')
	{
		$value = $this->input->post('univ'); 
		$query = $this->db->query('select * from anggota where id_univ='.$value);

		$eko = '<table class="table">
					    <thead>
					      <tr>
					        <th>TIM</th>
					        <th>Nama</th>
					        <th>NIM/NPP/NIP</th>
					        <th>Jenis</th>
					        <th>Foto</th>
					        <th>Action</th>
					      </tr>
					    </thead>
					    <tbody> ';
		foreach ($query->result() as $row){
			$query2 = $this->db->query("select * from peserta where id = ".$row->id_peserta);
			$rowx = $query2->row(); 
			 $foto = 'user.png';
			if ($row->foto<>''){
				$foto = $row->foto;
			}
			$eko .=' <tr>
					        <td>'.$rowx->tim.'</td>
					        <td>'.$row->nama.'</td>
					        <td>'.$row->npm.'</td>
					        <td>'.$row->jenis.'</td>
					        <td><img src="'.base_url().'uploads/'.$foto.'" class="img-thumbnail" alt="'.$row->nama.'" width="50" </td>
					        <td><a href="#"  <span class="glyphicon glyphicon-print">detail</span></a>&nbsp;|&nbsp; <a href="'.base_url().'index.php/rumah/hapus_anggota?kdid='.$row->id.'&kduniv='.$value.'" onclick="return confirm(\'Anda yakin data ini akan di hapus?\');" <span class="glyphicon glyphicon-erase">dell</span></a></td>
					      </tr>';
		

		}
		$eko .='</tbody> </table> </div>';
		echo $eko;

	}
	
	public function tambah_peserta()
	{
		$value = $this->input->post('univ'); 
		$data = array(
        'base_url' => base_url(),
        'tim' => $this->get_peserta($value),
        'id_univ' => $value
		);

		$this->parser->parse('tambah_peserta', $data); 
	}
	public function get_peserta($value='')
	{
		$query = $this->db->query("select * from peserta where id_univ = ".$value);
		$eko = "";
		foreach ($query->result() as $row)
		{
						$eko .= "<option value='".$row->id."'> ".$row->tim."</option>"; 
		}
		return $eko;
	}
	public function eko()
	{
		$this->load->view('tes');
	}
	public function simpan_peserta()
        {

                $config['upload_path']          = './uploads/';
                $config['allowed_types']        = '*';
                $config['max_size']             = '2000';
				$config['max_width'] = '1024';
				$config['max_height'] = '768';
                $config['max_filename'] ='1000';

                $this->load->library('upload', $config);

                if ( ! $this->upload->do_upload('foto'))
                {
                        $error = array('error' => $this->upload->display_errors());

                        var_dump($error);

                		redirect('/rumah/data_peserta?kduniv='.$this->input->post('id_univ'));
                }
                else
                {
                        $data = array('upload_data' => $this->upload->data());
                      	$foto = $this->upload->data('file_name');
			        	$tim = $this->input->post('tim');
						$jenis = $this->input->post('jenis');
						$nama = $this->input->post('nama');
						$nim = $this->input->post('nim');
						$email = $this->input->post('email');
						$hp = $this->input->post('hp'); 
						$id_univ = $this->input->post('id_univ'); 
						$data = array(
						        'id_univ' => $id_univ,
						        'id_peserta' => $tim,
						        'jenis' => $jenis,
								'nama'=> $nama,
								'npm'=> $nim, 
								'no_hp'=> $hp,
								'email'=> $email,
								'foto'=> $foto,
						);

						$this->db->insert('anggota', $data);

                		redirect('/rumah/data_peserta?kduniv='.$id_univ);
                }
               //redirect('data_peserta/'.$id_univ);
        }
        function data_peserta(){
			$id_univ = $this->input->get('kduniv');
			$query2 = $this->db->query("select * from univ where id = ".$id_univ);
			$rowx = $query2->row();  

			$data = array(
	        'base_url' => base_url(),
	        'kduniv' => $id_univ,
	        'univ' => "<option selected value='".$rowx->id."'> ".$rowx->nama."</option>"
			);

			$this->parser->parse('home_v2', $data);
	    }
	    public function hapus_anggota()
	    {
	    	$value = $this->input->get('kdid');
	    	$id_univ = $this->input->get('kduniv');
	    	$this->db->where('id', $value);
			$this->db->delete('anggota');
			redirect('/rumah/data_peserta?kduniv='.$id_univ);

	    }
}
