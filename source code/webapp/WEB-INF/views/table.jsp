<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" data-textdirection="ltr" class="loading">
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<meta name="description" content="Robust admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
<meta name="keywords" content="admin template, robust admin template, dashboard template, flat admin template, responsive admin template, web app">
<meta name="author" content="PIXINVENT">
<title>Basic Tables - Robust Free Bootstrap Admin Template</title>
<link rel="apple-touch-icon" sizes="60x60" href="./resources/app-assets/images/ico/apple-icon-60.png">
<link rel="apple-touch-icon" sizes="76x76" href="./resources/app-assets/images/ico/apple-icon-76.png">
<link rel="apple-touch-icon" sizes="120x120" href="./resources/app-assets/images/ico/apple-icon-120.png">
<link rel="apple-touch-icon" sizes="152x152" href="./resources/app-assets/images/ico/apple-icon-152.png">
<link rel="shortcut icon" type="image/x-icon" href="./resources/app-assets/images/ico/favicon.ico">
<link rel="shortcut icon" type="image/png" href="./resources/app-assets/images/ico/favicon-32.png">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-touch-fullscreen" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="default">
<!-- BEGIN VENDOR CSS-->
<link rel="stylesheet" type="text/css" href="./resources/app-assets/css/bootstrap.css">
<!-- font icons-->
<link rel="stylesheet" type="text/css" href="./resources/app-assets/fonts/icomoon.css">
<link rel="stylesheet" type="text/css" href="./resources/app-assets/fonts/flag-icon-css/css/flag-icon.min.css">
<link rel="stylesheet" type="text/css" href="./resources/app-assets/vendors/css/extensions/pace.css">
<!-- END VENDOR CSS-->
<!-- BEGIN ROBUST CSS-->
<link rel="stylesheet" type="text/css" href="./resources/app-assets/css/bootstrap-extended.css">
<link rel="stylesheet" type="text/css" href="./resources/app-assets/css/app.css">
<link rel="stylesheet" type="text/css" href="./resources/app-assets/css/colors.css">
<!-- END ROBUST CSS-->
<!-- BEGIN Page Level CSS-->
<link rel="stylesheet" type="text/css" href="./resources/app-assets/css/core/menu/menu-types/vertical-menu.css">
<link rel="stylesheet" type="text/css" href="./resources/app-assets/css/core/menu/menu-types/vertical-overlay-menu.css">
<!--<link rel="stylesheet" type="text/css" href="./resources/app-assets/css/core/colors/palette-gradient.css">-->
<!-- END Page Level CSS-->
<!-- BEGIN Custom CSS-->
<link rel="stylesheet" type="text/css" href="./resources/assets/css/style.css">
<!-- END Custom CSS-->

<script>
	function display(data) {
		var result = '';
		$(data).each(function(idx, item) {
			result += '<tr>';
			result += '<td>';
			result += item.userid;
			result += '</td>';
			result += '<td>';
			result += item.userage;
			result += '</td>';
			result += '<td>';
			result += item.usergender;
			result += '</td>';
			result += '<td>';
			result += item.useremail;
			result += '</td>';
			result += '<td>';
			result += item.userphone;
			result += '</td>';
			result += '<td>';
			result += item.useragree;
			result += '</td>';
			result += '<td>';	
			result += '<div class="dropdown">';
			result += '<button class="dropbtn">UserInterest</button>';
			result += '<div class="dropdown-content">';
			result += '<a href="#">living : '+item.living+'</a>';
			result += '<a href="#">food : '+item.food+'</a>';
			result += '<a href="#">fashion : '+item.fashion+'</a>';
			result += '<a href="#">culture : '+item.culture+'</a>';
			result += '<a href="#">etc: '+item.etc+'</a>';
			result += '</div>';
			result += '</div>';
			result += '</td>';
			result += '</tr>';

		});
		$('#userid').html(result);
	};

	function getData() {
		$.ajax({
			url : 'tablegetdata',
			dataType : "json",
			success : function(data) {
				display(data);
			},
			error : function() {
				alert("fail");
			}
		})
	};

	$(document).ready(function() {
		getData();
	});
</script>

<style>


.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #ddd;}
.dropdown:hover .dropdown-content {display: block;}
.dropdown:hover .dropbtn {background-color: #3e8e41;}

</style>

</head>
<body data-open="click" data-menu="vertical-menu" data-col="2-columns" class="vertical-layout vertical-menu 2-columns  fixed-navbar">

	<div class="app-content content container-fluid">
		<div class="content-wrapper">
			<div class="content-body">

				<!-- Table head options start -->
				<div class="row">
					<div class="col-xs-12">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title">User List</h4>
								<a class="heading-elements-toggle"><i
									class="icon-ellipsis font-medium-3"></i></a>
								<div class="heading-elements">
									<ul class="list-inline mb-0">
										<li><a data-action="collapse"><i class="icon-minus4"></i></a></li>
										<li><a data-action="reload"><i class="icon-reload"></i></a></li>
										<li><a data-action="expand"><i class="icon-expand2"></i></a></li>
										<li><a data-action="close"><i class="icon-cross2"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="card-body collapse in">
								<div class="table-responsive">
									<table class="table">
										<thead class="thead-inverse">
											<tr>
												<th>ID</th>
												<th>AGE</th>
												<th>GENDER</th>
												<th>EMAIL</th>
												<th>PHONE</th>
												<th>AGREE</th>
												<th>INTREST</th>
											</tr>
										</thead>
										<tbody id="userid">
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Table head options end -->

			</div>
		</div>





		
	</div>
	<!-- ////////////////////////////////////////////////////////////////////////////-->



	<!-- BEGIN VENDOR JS-->
	<script src="./resources/app-assets/js/core/libraries/jquery.min.js" type="text/javascript"></script>
	<script src="./resources/app-assets/vendors/js/ui/tether.min.js" type="text/javascript"></script>
	<script src="./resources/app-assets/js/core/libraries/bootstrap.min.js" type="text/javascript"></script>
	<script src="./resources/app-assets/vendors/js/ui/perfect-scrollbar.jquery.min.js" type="text/javascript"></script>
	<script src="./resources/app-assets/vendors/js/ui/unison.min.js" type="text/javascript"></script>
	<script src="./resources/app-assets/vendors/js/ui/blockUI.min.js" type="text/javascript"></script>
	<script src="./resources/app-assets/vendors/js/ui/jquery.matchHeight-min.js" type="text/javascript"></script>
	<script src="./resources/app-assets/vendors/js/ui/screenfull.min.js" type="text/javascript"></script>
	<script src="./resources/app-assets/vendors/js/extensions/pace.min.js" type="text/javascript"></script>
	<!-- BEGIN VENDOR JS-->
	<!-- BEGIN PAGE VENDOR JS-->
	<!-- <script src="./resources/app-assets/vendors/js/charts/chart.min.js" type="text/javascript"></script> -->
	<!-- END PAGE VENDOR JS-->
	<!-- BEGIN ROBUST JS-->
	<script src="./resources/app-assets/js/core/app-menu.js" type="text/javascript"></script>
	<script src="./resources/app-assets/js/core/app.js" type="text/javascript"></script>
	<!-- END ROBUST JS-->
	<!-- BEGIN PAGE LEVEL JS-->
    <!-- <script src="./resources/app-assets/js/scripts/pages/dashboard-2.js" type="text/javascript"></script> -->
    <!-- <script src="./resources/app-assets/js/scripts/pages/dashboard-lite.js" type="text/javascript"></script> -->
    <!-- END PAGE LEVEL JS-->
</body>
</html>
