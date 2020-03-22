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
    <title>Dashboard 2 - Robust Free Bootstrap Admin Template</title>
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
    <link rel="stylesheet" type="text/css" href="./resources/app-assets/css/core/colors/palette-gradient.css">
    <!-- END Page Level CSS-->
    <!-- BEGIN Custom CSS-->
    <link rel="stylesheet" type="text/css" href="./resources/assets/css/style.css">
    <!-- END Custom CSS-->

<script>

function Sendfcm(ip, idx)
{      
		var speed = $("#speed"+idx).val();

			$.ajax({
				url: "fcm",
				type: "POST",
				dataType:"json",	
				data:{"speed":speed, "ip":ip},
	         
	  			success: function(result){
	  		
	  	 		}
		});
};

	function display(data) {
		var result = '';
		$(data).each(function(idx, item) {			
			result += '<tr>';
			result += '<td class="text-truncate">';
			result += '<input type="hidden" value = "'+item.ip+'" id = "'+idx+'">';
			result += item.ip;
			result += '</td>';
			result += '<td class="text-truncate"><span class="tag tag-success">Low</span></td>';
			result += '<td class="valign-middle">';
			result += '<input type="text" class="form-control" id="speed'+idx+'">';
			result += '</td>';
			result += '<td class="text-truncate">';												  		
			result += '<button class="btn bg-info bg-darken-3 mr-1 white" onclick="Sendfcm('+"'"+ item.ip+"'"+','+idx+');">Send</button>';
			result += '</td>';
			result += '</tr>';
		});
		$('#clientip').html(result);
	};

	function getData() {
		$.ajax({
			url : 'clientgetdata',
			dataType : "json",
			success : function(data) {
				display(data);
			},
			error : function() {
				console.log("fail");
			}
		})
	};

	$(document).ready(function() {
		setInterval(getData,10000);

	});

</script>
        
  </head>
  <body data-open="click" data-menu="vertical-menu" data-col="2-columns" class="vertical-layout vertical-menu 2-columns  fixed-navbar">

    <div class="app-content content container-fluid">
      <div class="content-wrapper">
        <div class="content-header row">
        </div>
        <div class="content-body"><!-- Statistics -->
<div class="row">
    <div class="col-xl-3 col-lg-6 col-xs-12">
        <div class="card">
            <div class="card-body">
                <div class="media">
                    <div class="p-2 text-xs-center bg-cyan bg-darken-2 media-left media-middle">
                        <i class="icon-user1 font-large-2 white"></i>
                    </div>
                    <div class="p-2 bg-cyan white media-body">
                        <h5>Connect Client</h5>
                        <div id="clientnum"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-lg-6 col-xs-12">
        <div class="card">
            <div class="card-body">
                <div class="media">
                    <div class="p-2 text-xs-center bg-deep-orange bg-darken-2 media-left media-middle">
                        <i class="icon-user1 font-large-2 white"></i>
                    </div>
                    <div class="p-2 bg-deep-orange white media-body">
                        <h5>New Client</h5>
                        <h5 class="text-bold-400"></h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-lg-6 col-xs-12">
        <div class="card">
            <div class="card-body">
                <div class="media">
                    <div class="p-2 text-xs-center bg-teal bg-darken-2 media-left media-middle">
                        <i class="icon-cart font-large-2 white"></i>
                    </div>
                    <div class="p-2 bg-teal white media-body">
                        <h5>New Orders</h5>
                        <h5 class="text-bold-400">4,65,879</h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-lg-6 col-xs-12">
        <div class="card">
            <div class="card-body">
                <div class="media">
                    <div class="p-2 text-xs-center bg-pink bg-darken-2 media-left media-middle">
                        <i class="icon-banknote font-large-2 white"></i>
                    </div>
                    <div class="p-2 bg-pink white media-body">
                        <h5>Total Profit</h5>
                        <h5 class="text-bold-400">5.6 M</h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--/ Statistics -->

<!--/ project charts -->
<div class="row">
    <div class="col-xl-8 col-lg-12">
        <div class="card">
            <div class="card-body">
                <ul class="list-inline text-xs-center pt-2 m-0">
                    <li class="mr-1">
                        <h6><i class="icon-circle warning"></i> <span class="grey darken-1">Remaining</span></h6>
                    </li>
                    <li class="mr-1">
                        <h6><i class="icon-circle success"></i> <span class="grey darken-1">Completed</span></h6>
                    </li>
                </ul>
                <div class="chartjs height-250">
                    <canvas id="line-stacked-area" height="250"></canvas>
                </div>
            </div>
            <div class="card-footer">
                <div class="row">
                    <div class="col-xs-3 text-xs-center">
                        <span class="text-muted">Total Projects</span>
                        <h2 class="block font-weight-normal">18</h2>
                        <progress class="progress progress-xs mt-2 progress-success" value="70" max="100"></progress>
                    </div>
                    <div class="col-xs-3 text-xs-center">
                        <span class="text-muted">Total Task</span>
                        <h2 class="block font-weight-normal">125</h2>
                        <progress class="progress progress-xs mt-2 progress-success" value="40" max="100"></progress>
                    </div>
                    <div class="col-xs-3 text-xs-center">
                        <span class="text-muted">Completed Task</span>
                        <h2 class="block font-weight-normal">242</h2>
                        <progress class="progress progress-xs mt-2 progress-success" value="60" max="100"></progress>
                    </div>
                    <div class="col-xs-3 text-xs-center">
                        <span class="text-muted">Total Revenue</span>
                        <h2 class="block font-weight-normal">$11,582</h2>
                        <progress class="progress progress-xs mt-2 progress-success" value="90" max="100"></progress>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-4 col-lg-12">
        <div class="card card-inverse bg-info">
            <div class="card-body">
                <div class="position-relative">
                    <div class="chart-title position-absolute mt-2 ml-2 white">
                        <h1 class="display-4">84%</h1>
                        <span>Employees Satisfied</span>
                    </div>
                    <canvas id="emp-satisfaction" class="height-400 block"></canvas>
                    <div class="chart-stats position-absolute position-bottom-0 position-right-0 mb-2 mr-3 white">
                        <a href="#" class="btn bg-info bg-darken-3 mr-1 white">Statistics <i class="icon-stats-bars"></i></a> for the last year.
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--/ project charts -->

<!-- projects table with monthly chart -->
<div class="row">

        <div class="col-xl-4 col-md-6 col-sm-12">
        <div class="card">
            <div class="card-body">
                <div class="card-block">
                    <h4 class="card-title">Video Embed</h4>
                    <h6 class="card-subtitle text-muted">Support card subtitle</h6>
                </div>
                <div class="embed-responsive embed-responsive-item embed-responsive-16by9">
                    <iframe class="img-thumbnail" src="https://www.youtube.com/embed/SsE5U7ta9Lw?rel=0&amp;controls=0&amp;showinfo=0" allowfullscreen=""></iframe>
                </div>
                <div class="card-block">
                    <p class="card-text">Candy cupcake sugar plum oat cake wafer marzipan jujubes lollipop macaroon. Cake dragée jujubes donut chocolate bar chocolate cake cupcake chocolate topping. Dessert jelly beans toffee muffin.</p>
                    <a href="#" class="card-link">Card link</a>
                    <a href="#" class="card-link">Another link</a>
                </div>
            </div>
        </div>
    </div>

    <div class="col-xl-8 col-lg-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Ongoing Projects</h4>
                <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
                <div class="heading-elements">
                    <ul class="list-inline mb-0">
                        <li><a data-action="reload"><i class="icon-reload"></i></a></li>
                        <li><a data-action="expand"><i class="icon-expand2"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="card-body">
                <div class="card-block">
                    <p class="m-0">Total ongoing projects 6<span class="float-xs-right"><a href="#" target="_blank">Project Summary <i class="icon-arrow-right2"></i></a></span></p>
                </div>
                <div class="table-responsive">
                    <table class="table table-hover mb-0">
                        <thead>
                            <tr>
                                <th>IP</th>
                                <th>Priority</th>
                                <th>SPEED</th>
                                <th>Send</th>
                            </tr>
                        </thead>
                        <tbody id = "clientip">


                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    
</div>

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
    <script src="./resources/app-assets/vendors/js/charts/chart.min.js" type="text/javascript"></script>
    <!-- END PAGE VENDOR JS-->
    <!-- BEGIN ROBUST JS-->
    <script src="./resources/app-assets/js/core/app-menu.js" type="text/javascript"></script>
    <script src="./resources/app-assets/js/core/app.js" type="text/javascript"></script>
    <!-- END ROBUST JS-->
    <!-- BEGIN PAGE LEVEL JS-->
    <script src="./resources/app-assets/js/scripts/pages/dashboard-2.js" type="text/javascript"></script>
    <script src="./resources/app-assets/js/scripts/pages/dashboard-lite.js" type="text/javascript"></script>
    <!-- END PAGE LEVEL JS-->
  </body>
</html>

