<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en" data-textdirection="ltr" class="loading">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="Robust admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, robust admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
    <title>jQuery Vector Maps - Robust Free Bootstrap Admin Template</title>
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
    <link rel="stylesheet" type="text/css" href="./resources/app-assets/vendors/css/charts/jqvmap.css">
    <!-- END VENDOR CSS-->
    <!-- BEGIN ROBUST CSS-->
    <link rel="stylesheet" type="text/css" href="./resources/app-assets/css/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href="./resources/app-assets/css/app.css">
    <link rel="stylesheet" type="text/css" href="./resources/app-assets/css/colors.css">
    <!-- END ROBUST CSS-->
    <!-- BEGIN Page Level CSS-->
    <link rel="stylesheet" type="text/css" href="./resources/app-assets/css/core/menu/menu-types/vertical-menu.css">
    <link rel="stylesheet" type="text/css" href="./resources/app-assets/css/core/menu/menu-types/vertical-overlay-menu.css">
    <!-- END Page Level CSS-->
    <!-- BEGIN Custom CSS-->
    <link rel="stylesheet" type="text/css" href="./resources/assets/css/style.css">
    <!-- END Custom CSS-->
   
  </head>
  <body>

	<div id="map" style="width:1700px;height:1000px;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey="></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(37.501306, 127.039639),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
	</script>

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
    <script src="./resources/app-assets/vendors/js/charts/jqvmap/jquery.vmap.min.js" type="text/javascript"></script>
    <script src="./resources/app-assets/vendors/js/charts/jqvmap/maps/continents/jquery.vmap.africa.js" type="text/javascript"></script>
    <script src="./resources/app-assets/vendors/js/charts/jqvmap/maps/continents/jquery.vmap.asia.js" type="text/javascript"></script>
    <script src="./resources/app-assets/vendors/js/charts/jqvmap/maps/continents/jquery.vmap.australia.js" type="text/javascript"></script>
    <script src="./resources/app-assets/vendors/js/charts/jqvmap/maps/continents/jquery.vmap.europe.js" type="text/javascript"></script>
    <script src="./resources/app-assets/vendors/js/charts/jqvmap/maps/continents/jquery.vmap.north-america.js" type="text/javascript"></script>
    <script src="./resources/app-assets/vendors/js/charts/jqvmap/maps/continents/jquery.vmap.south-america.js" type="text/javascript"></script>
    <script src="./resources/app-assets/vendors/js/charts/jqvmap/maps/jquery.vmap.usa.js" type="text/javascript"></script>
    <script src="./resources/app-assets/vendors/js/charts/jqvmap/maps/jquery.vmap.world.js" type="text/javascript"></script>
    <!-- END PAGE VENDOR JS-->
    <!-- BEGIN ROBUST JS-->
    <script src="./resources/app-assets/js/core/app-menu.js" type="text/javascript"></script>
    <script src="./resources/app-assets/js/core/app.js" type="text/javascript"></script>
    <!-- END ROBUST JS-->
    <!-- BEGIN PAGE LEVEL JS-->
    <script src="./resources/app-assets/js/scripts/charts/jqvmap/jqvmap.js" type="text/javascript"></script>
    <script src="./resources/app-assets/data/jqvmaps/jquery.vmap.sampledata.js" type="text/javascript"></script>
    <!-- END PAGE LEVEL JS-->
  </body>
</html>
