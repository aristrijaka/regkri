<!DOCTYPE html>
<html lang="en">
<head>
  <title>KRI 2018 UPGRIS</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>REGISTRASI KRI2018 REGION 3</h2>
  <form action="/action_page.php">
    <div class="form-group">
      <label for="email">Universitas:</label>
     <select id="universitas" required="">
              <option value="">Universitas</option>
              {univ}
            </select>
    </div>
     <div id="ResponseDiv"></div>
  </form>

<button id="bttambah" style="display: none;" onclick="tambah()">Tambah Anggota</button>
<i style="color: red;">* Tambah Peserta/mekanik di luar ketentuan akan dikenakan biaya tambahan</i>
</div>
<!-- The Modal -->
  <div id=ResponseModal></div>

</body>
<script type="text/javascript"> 
    $('#universitas').on('change', function() {
      var univer = this.value ;
      $.post("{base_url}index.php/rumah/get_lomba1",
            {
              univ: univer
            },
            function(data){
                $('#ResponseDiv').html(data);
        });
      $.post("{base_url}index.php/rumah/tambah_peserta",
            {
              univ: univer
            },
            function(data){
                $('#ResponseModal').html(data);
                $('#bttambah').show();
        });
    });
    function tambah(){
    $('#myModal').modal();
    }
</script>
</html>
