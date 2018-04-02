<!-- The Modal -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Update Peserta</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body"> 
            <?php echo form_open_multipart('rumah/update_peserta');?>
               <h4>Anggota</h4>
                <div class="form-group">
                <select id="tim" name="tim" required="" style=" width: 100%;">
                  <option value="">Tim Lomba</option>
                  {tim}
                </select>
                </div>
                <div class="form-group">
                <select id="jenis" name="jenis"  required="" style=" width: 100%;">
                  <option value="">Jenis Peserta</option>
                  <option value="MHS">Mahasiswa</option>
                  <option value="PDP">Pendamping</option>
                  <option value="MKN">Mekanik</option>
                </select>
                </div>
                <div class="form-group">
                <input type="text" id="nama" name="nama" placeholder="Nama" required="" value="{nama}" style=" width: 100%;">
                </div>
                  <div class="form-group">
                <input type="text" id="nim"  name="nim" placeholder="NIM/NPM/NPP/NIP" required=""  value="{nim}"  style=" width: 100%;">
                </div>
                  <div class="form-group">
                <input type="text" id="email"  name="email" placeholder="Email" required=""  value="{email}" style=" width: 100%;">
                </div>
                  <div class="form-group">
                <input type="text" id="hp"  name="hp" placeholder="NO HP" required="" value="{hp}"  style=" width: 100%;">
                </div>
                  <div class="form-group">
                  Foto
                <input type="file" id="foto" name="foto" required=""  value="{foto}"  style=" width: 100%;">
                 <input type="hidden" id="id_univ"  name="id_univ" value="{id_univ}">
                </div> 
                <div class="form-group">
                <button type="submit" class="btn btn-default">Update</button>

              </div>
        </form>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          
      </div>
      </div>
    </div>
  </div>