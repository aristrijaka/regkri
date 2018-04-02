<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Registrasi KRI 2018</title>
  <script>
    addEventListener("load", function () {
      setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
      window.scrollTo(0, 1);
    }
  </script>
  <!-- Custom Theme files -->
  <link href="{base_url}assets/web/css/style.css" rel="stylesheet" type="text/css" media="all" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
 <script src="//code.jquery.com/jquery-1.11.0.min.js"></script> 
  <!-- //Custom Theme files -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <!-- jQuery Modal -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
  <!-- Font-Awesome-Icons-CSS -->
  <!-- web font -->
</head>

<body>
  <!-- main -->
  <div class="main-agileits">
    <h1>Registrasi KRI 2018
      <img src="{base_url}assets/web/images/logo.png" alt="">
    </h1>
    <div id='myform' class="register-form">
      <form action="#" method="post">
        <div class="fields-grid">
          <div class="styled-input agile-styled-input-top">
            <i class="fa fa-university" aria-hidden="true"></i>
            <select id="universitas" class="category2" required="">
              <option value="">Universitas</option>
              {univ}
            </select>
          </div>
          <div id="ResponseDiv"></div>
          <div class="clear"> </div>
        </div>
        <input type="submit" value="Submit">
      </form>
    </div>
    <a href="{base_url}index.php/welcome/tambah_peserta/" rel="modal:open">example</a>
  </div>
  <!-- //main -->
  <!-- copyright -->
  <div class="w3copyright-agile">
    <h2>© 2018 KONTES ROBOT INDONESIA REGIONAL 3 
    </h2>
  </div>
  <!-- //copyright --> 
  <script>
  


    $(function () {
      $("#datepicker,#datepicker1,#datepicker2,#datepicker3").datepicker();
    });
  </script>
  <script type="text/javascript">
    $('#universitas').on('change', function() {
      var univer = this.value ;
      $.post("{base_url}index.php/welcome/get_tim",
            {
              univ: univer
            },
            function(data){
                $('#ResponseDiv').html(data);
        });
    });
    </script>
  <!-- //Calendar --> 

</body>

</html>
