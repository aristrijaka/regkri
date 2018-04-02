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
	<!-- //Custom Theme files -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	<!-- Font-Awesome-Icons-CSS -->
	<!-- web font -->
</head>

<body>
	<!-- main -->
	<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#addContactModal">
  Launch demo modal
</button>
<div class="modal fade" id="addContactModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog modal-md" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title" id="myModalLabel">Add Contact</h4>
          </div>
          <form action="addcontact.php" method="POST">
          <div class="modal-body">
              <div class="container-fluid">
                  <div class="row">
                      <div class="col-md-6 col-sm-6 col-xs-6">
              <div class="form-group">
              <label for="contactfname">First Name</label>
              <input type="text" class="form-control" id="contactfname" name="txt_fn" required>
              </div>
              <div class="form-group">
              <label for="contactmname">Middle Name</label>
              <input type="text" class="form-control" id="contactmname" name="txt_mn" required>
              </div>
              <div class="form-group">
              <label for="contactlname">Last Name</label>
              <input type="text" class="form-control" id="contactlname" name="txt_ln" required>
              </div>


                  </div>
                   <div class="col-md-6 col-sm-6 col-xs-6">
              <div class="form-group">
              <label for="contactea">Email Address</label>
              <input type="email" class="form-control" id="contactea" name="txt_ea" required>
              </div>
              <div class="form-group">
              <label for="contactnum">Mobile Number</label>
              <input type="text" class="form-control" id="contactnum" name="txt_num" required>
              </div>
              <div class="form-group">
              <label for="contactgroup">Select Group</label>
              <select name="txt_group" class="form-control" id="contactgroup" required>
              <option value="">Choose group...</option> 
              </select>
              </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            <input type="submit" name="addgroupbtn" class="btn btn-primary" value="Save Contact">
                </div>
              </div>
                  </div>
          </div>
          </form>
        </div>
      </div>
    </div>
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
		  $.post("http://localhost/kri_reg/index.php/welcome/get_tim",
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