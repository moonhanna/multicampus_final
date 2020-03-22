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
    
  </head>
  <body data-open="click" data-menu="vertical-menu" data-col="2-columns" class="vertical-layout vertical-menu 2-columns  fixed-navbar">

    <!-- navbar-fixed-top-->
    <nav class="header-navbar navbar navbar-with-menu navbar-fixed-top navbar-semi-dark navbar-shadow">
      <div class="navbar-wrapper">
        <div class="navbar-header">
          <ul class="nav navbar-nav">
            <li class="nav-item mobile-menu hidden-md-up float-xs-left"><a class="nav-link nav-menu-main menu-toggle hidden-xs"><i class="icon-menu5 font-large-1"></i></a></li>
            <li class="nav-item"><a href="index" class="navbar-brand nav-link"><img alt="branding logo" src="./resources/app-assets/images/logo/logo.png" data-expand="./resources/app-assets/images/logo/logo.png" data-collapse="./resources/app-assets/images/logo/logo.png" class="brand-logo"></a></li>
            <li class="nav-item hidden-md-up float-xs-right"><a data-toggle="collapse" data-target="#navbar-mobile" class="nav-link open-navbar-container"><i class="icon-ellipsis pe-2x icon-icon-rotate-right-right"></i></a></li>
          </ul>
        </div>
        
        <div class="navbar-container content container-fluid">
          <div id="navbar-mobile" class="collapse navbar-toggleable-sm">
            <ul class="nav navbar-nav">
              <li class="nav-item hidden-sm-down"><a class="nav-link nav-menu-main menu-toggle hidden-xs"><i class="icon-menu5"></i></a></li>
            </ul>

          </div>
        </div>
        
      </div>
    </nav>

    <!-- ////////////////////////////////////////////////////////////////////////////-->


    <!-- main menu-->
    <div data-scroll-to-active="true" class="main-menu menu-fixed menu-dark menu-accordion menu-shadow">
      <!-- main menu header-->
      <div class="main-menu-header">
        <br>
      </div>
      <!-- / main menu header-->
      <!-- main menu content-->
      <div class="main-menu-content">
        <ul id="main-menu-navigation" data-menu="menu-navigation" class="navigation navigation-main">
          <li class=" nav-item"><a href="index"><i class="icon-home3"></i><span data-i18n="nav.dash.main" class="menu-title">Dashboard</span></a>
          </li>

          <li class=" nav-item"><a href="form-layout-basic.html"><i class="icon-paper"></i><span data-i18n="nav.form_layouts.form_layout_basic" class="menu-title">Basic Forms</span></a>
          </li>
          <li class=" nav-item"><a href="table"><i class="icon-table2"></i><span data-i18n="nav.bootstrap_tables.table_basic" class="menu-title">User List</span></a>
          </li>
          <li class=" nav-item"><a href="#"><i class="icon-bar-graph-2"></i><span data-i18n="nav.google_charts.main" class="menu-title">google Charts</span></a>
          </li>
          <li class=" nav-item"><a href="#"><i class="icon-stats-dots"></i><span data-i18n="nav.chartjs.main" class="menu-title">Chartjs</span></a>
          </li>
          <li class=" nav-item"><a href="#"><i class="icon-pie-graph2"></i><span data-i18n="nav.flot_charts.main" class="menu-title">Flot Charts</span></a>
            <ul class="menu-content">
              <li><a href="flot-line-charts.html" data-i18n="nav.flot_charts.flot_line_charts" class="menu-item">Line charts</a>
              </li>
              <li><a href="flot-bar-charts.html" data-i18n="nav.flot_charts.flot_bar_charts" class="menu-item">Bar charts</a>
              </li>
              <li><a href="flot-pie-charts.html" data-i18n="nav.flot_charts.flot_pie_charts" class="menu-item">Pie charts</a>
              </li>
            </ul>
          </li>
          <li class=" nav-item"><a href="map"><i class="icon-map22"></i><span data-i18n="nav.maps.main" class="menu-title">Maps</span></a>
          </li>  
          <li class=" nav-item"><a href="playlist"><i class="icon-copy"></i><span data-i18n="nav.changelog.main" class="menu-title">Advertising list</span></a>
          </li>
          <li class=" nav-item"><a href="signage"><i class="icon-copy"></i><span data-i18n="nav.changelog.main" class="menu-title">Signage</span></a>
          </li>
        </ul>
      </div>
      <!-- /main menu content-->
      <!-- main menu footer-->
      <!-- include includes/menu-footer-->
      <!-- main menu footer-->
    </div>
    <!-- / main menu-->


	<section>	
		<c:choose>
			<c:when test="${center == null }">
				<jsp:include page="main.jsp" />
			</c:when>
			<c:otherwise>
				<jsp:include page="${center }.jsp" />
			</c:otherwise>
		</c:choose>
	</section>




	<footer class="footer footer-static footer-light navbar-border">
		<p class="clearfix text-muted text-sm-center mb-0 px-2">
			<span class="float-md-left d-xs-block d-md-inline-block">Copyright
				&copy; 2017 <a
				href="https://themeforest.net/user/pixinvent/portfolio?ref=pixinvent"
				target="_blank" class="text-bold-800 grey darken-2">PIXINVENT </a>,
				All rights reserved.
			</span><span class="float-md-right d-xs-block d-md-inline-block">Hand-crafted
				& Made with <i class="icon-heart5 pink"></i>
			</span>
		</p>
	</footer>

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
    <!-- END PAGE LEVEL JS-->
  </body>
</html>

