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
    <title>Gallery Media Grid - Robust Free Bootstrap Admin Template</title>
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
    <link rel="stylesheet" type="text/css" href="./resources/app-assets/vendors/js/gallery/photo-swipe/photoswipe.css">
    <link rel="stylesheet" type="text/css" href="./resources/app-assets/vendors/js/gallery/photo-swipe/default-skin/default-skin.css">
    <!-- END VENDOR CSS-->
    <!-- BEGIN ROBUST CSS-->
    <link rel="stylesheet" type="text/css" href="./resources/app-assets/css/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href="./resources/app-assets/css/app.css">
    <link rel="stylesheet" type="text/css" href="./resources/app-assets/css/colors.css">
    <!-- END ROBUST CSS-->
    <!-- BEGIN Page Level CSS-->
    <link rel="stylesheet" type="text/css" href="./resources/app-assets/css/core/menu/menu-types/vertical-menu.css">
    <link rel="stylesheet" type="text/css" href="./resources/app-assets/css/core/menu/menu-types/vertical-overlay-menu.css">
    <link rel="stylesheet" type="text/css" href="./resources/app-assets/css/pages/gallery.css">
    <!-- END Page Level CSS-->
    <!-- BEGIN Custom CSS-->
    <link rel="stylesheet" type="text/css" href="./resources/assets/css/style.css">
    <!-- END Custom CSS-->
  </head>
  <body data-open="click" data-menu="vertical-menu" data-col="2-columns" class="vertical-layout vertical-menu 2-columns  fixed-navbar">


    <div class="app-content content container-fluid">
      <div class="content-wrapper">
        <div class="content-header row">
          <div class="content-header-left col-md-6 col-xs-12 mb-1">
            <h2 class="content-header-title">Advertising List</h2>
          </div>
          <div class="content-header-right breadcrumbs-right breadcrumbs-top col-md-6 col-xs-12">
            <div class="breadcrumb-wrapper col-xs-12">
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Home</a>
                </li>
                <li class="breadcrumb-item"><a href="#">Gallery</a>
                </li>
                <li class="breadcrumb-item active">
                </li>
              </ol>
            </div>
          </div>
        </div>
        <div class="content-body"><!-- Description -->


<!-- Image grid -->
<section id="image-gallery" class="card">
  <div class="card-header">
    <h4 class="card-title"></h4>
    <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
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
    <div class="card-block  my-gallery" itemscope itemtype="http://schema.org/ImageGallery">
      <div class="row">
        <figure class="col-lg-3 col-md-6 col-xs-12" itemprop="associatedMedia" itemscope itemtype="http://schema.org/ImageObject">
			<iframe class="img-thumbnail" src="https://www.youtube.com/embed/SsE5U7ta9Lw?rel=0&amp;controls=0&amp;showinfo=0" allowfullscreen=""></iframe>         	  	   
        </figure>
        <figure class="col-lg-3 col-md-6 col-xs-12" itemprop="associatedMedia" itemscope itemtype="http://schema.org/ImageObject">
			<iframe class="img-thumbnail" src="https://www.youtube.com/embed/SsE5U7ta9Lw?rel=0&amp;controls=0&amp;showinfo=0" allowfullscreen=""></iframe>         	  	   
        </figure>
        <figure class="col-lg-3 col-md-6 col-xs-12" itemprop="associatedMedia" itemscope itemtype="http://schema.org/ImageObject">
			<iframe class="img-thumbnail" src="https://www.youtube.com/embed/SsE5U7ta9Lw?rel=0&amp;controls=0&amp;showinfo=0" allowfullscreen=""></iframe>         	  	   
        </figure>
        <figure class="col-lg-3 col-md-6 col-xs-12" itemprop="associatedMedia" itemscope itemtype="http://schema.org/ImageObject">
			<iframe class="img-thumbnail" src="https://www.youtube.com/embed/SsE5U7ta9Lw?rel=0&amp;controls=0&amp;showinfo=0" allowfullscreen=""></iframe>         	  	   
        </figure>
      </div>
      <div class="row">
        <figure class="col-lg-3 col-md-6 col-xs-12" itemprop="associatedMedia" itemscope itemtype="http://schema.org/ImageObject">
			<iframe class="img-thumbnail" src="https://www.youtube.com/embed/SsE5U7ta9Lw?rel=0&amp;controls=0&amp;showinfo=0" allowfullscreen=""></iframe>         	  	   
        </figure>
        <figure class="col-lg-3 col-md-6 col-xs-12" itemprop="associatedMedia" itemscope itemtype="http://schema.org/ImageObject">
			<iframe class="img-thumbnail" src="https://www.youtube.com/embed/SsE5U7ta9Lw?rel=0&amp;controls=0&amp;showinfo=0" allowfullscreen=""></iframe>         	  	   
        </figure>
        <figure class="col-lg-3 col-md-6 col-xs-12" itemprop="associatedMedia" itemscope itemtype="http://schema.org/ImageObject">
			<iframe class="img-thumbnail" src="https://www.youtube.com/embed/SsE5U7ta9Lw?rel=0&amp;controls=0&amp;showinfo=0" allowfullscreen=""></iframe>         	  	   
        </figure>
        <figure class="col-lg-3 col-md-6 col-xs-12" itemprop="associatedMedia" itemscope itemtype="http://schema.org/ImageObject">
			<iframe class="img-thumbnail" src="https://www.youtube.com/embed/yshNZlWezDk\" allowfullscreen=""></iframe>
		</figure>
      </div>
      <div class="row">
        <figure class="col-lg-3 col-md-6 col-xs-12" itemprop="associatedMedia" itemscope itemtype="http://schema.org/ImageObject">
			<iframe class="img-thumbnail" src="https://www.youtube.com/embed/SsE5U7ta9Lw?rel=0&amp;controls=0&amp;showinfo=0" allowfullscreen=""></iframe>         	  	   
        </figure>
        <figure class="col-lg-3 col-md-6 col-xs-12" itemprop="associatedMedia" itemscope itemtype="http://schema.org/ImageObject">
			<iframe class="img-thumbnail" src="https://www.youtube.com/embed/SsE5U7ta9Lw?rel=0&amp;controls=0&amp;showinfo=0" allowfullscreen=""></iframe>         	  	   
        </figure>
        <figure class="col-lg-3 col-md-6 col-xs-12" itemprop="associatedMedia" itemscope itemtype="http://schema.org/ImageObject">
			<iframe class="img-thumbnail" src="https://www.youtube.com/embed/SsE5U7ta9Lw?rel=0&amp;controls=0&amp;showinfo=0" allowfullscreen=""></iframe>         	  	   
        </figure>
        <figure class="col-lg-3 col-md-6 col-xs-12" itemprop="associatedMedia" itemscope itemtype="http://schema.org/ImageObject">
			<iframe class="img-thumbnail" src="https://www.youtube.com/embed/SsE5U7ta9Lw?rel=0&amp;controls=0&amp;showinfo=0" allowfullscreen=""></iframe>         	  	   
        </figure>
      </div>
      <div class="row">
        <figure class="col-lg-3 col-md-6 col-xs-12" itemprop="associatedMedia" itemscope itemtype="http://schema.org/ImageObject">
			<iframe class="img-thumbnail" src="https://www.youtube.com/embed/SsE5U7ta9Lw?rel=0&amp;controls=0&amp;showinfo=0" allowfullscreen=""></iframe>         	  	   
        </figure>
        <figure class="col-lg-3 col-md-6 col-xs-12" itemprop="associatedMedia" itemscope itemtype="http://schema.org/ImageObject">
			<iframe class="img-thumbnail" src="https://www.youtube.com/embed/SsE5U7ta9Lw?rel=0&amp;controls=0&amp;showinfo=0" allowfullscreen=""></iframe>         	  	   
        </figure>
        <figure class="col-lg-3 col-md-6 col-xs-12" itemprop="associatedMedia" itemscope itemtype="http://schema.org/ImageObject">
			<iframe class="img-thumbnail" src="https://www.youtube.com/embed/SsE5U7ta9Lw?rel=0&amp;controls=0&amp;showinfo=0" allowfullscreen=""></iframe>         	  	   
        </figure>
        <figure class="col-lg-3 col-md-6 col-xs-12" itemprop="associatedMedia" itemscope itemtype="http://schema.org/ImageObject">
			<iframe class="img-thumbnail" src="https://www.youtube.com/embed/SsE5U7ta9Lw?rel=0&amp;controls=0&amp;showinfo=0" allowfullscreen=""></iframe>         	  	   
        </figure>
      </div>
    </div>
    <!--/ Image grid -->

    <!-- Root element of PhotoSwipe. Must have class pswp. -->
    <div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">

        <!-- Background of PhotoSwipe. 
             It's a separate element as animating opacity is faster than rgba(). -->
        <div class="pswp__bg"></div>

        <!-- Slides wrapper with overflow:hidden. -->
        <div class="pswp__scroll-wrap">

            <!-- Container that holds slides. 
                PhotoSwipe keeps only 3 of them in the DOM to save memory.
                Don't modify these 3 pswp__item elements, data is added later on. -->
            <div class="pswp__container">
                <div class="pswp__item"></div>
                <div class="pswp__item"></div>
                <div class="pswp__item"></div>
            </div>

            <!-- Default (PhotoSwipeUI_Default) interface on top of sliding area. Can be changed. -->
            <div class="pswp__ui pswp__ui--hidden">

                <div class="pswp__top-bar">

                    <!--  Controls are self-explanatory. Order can be changed. -->

                    <div class="pswp__counter"></div>

                    <button class="pswp__button pswp__button--close" title="Close (Esc)"></button>

                    <button class="pswp__button pswp__button--share" title="Share"></button>

                    <button class="pswp__button pswp__button--fs" title="Toggle fullscreen"></button>

                    <button class="pswp__button pswp__button--zoom" title="Zoom in/out"></button>

                    <!-- Preloader demo http://codepen.io/dimsemenov/pen/yyBWoR -->
                    <!-- element will get class pswp__preloader-active when preloader is running -->
                    <div class="pswp__preloader">
                        <div class="pswp__preloader__icn">
                          <div class="pswp__preloader__cut">
                            <div class="pswp__preloader__donut"></div>
                          </div>
                        </div>
                    </div>
                </div>

                <div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
                    <div class="pswp__share-tooltip"></div> 
                </div>

                <button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)">
                </button>

                <button class="pswp__button pswp__button--arrow--right" title="Next (arrow right)">
                </button>

                <div class="pswp__caption">
                    <div class="pswp__caption__center"></div>
                </div>

            </div>

        </div>
    </div>
  </div>
  <!--/ PhotoSwipe -->
</section>
<!--/ Image grid -->
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
    <script src="./resources/app-assets/vendors/js/gallery/masonry/masonry.pkgd.min.js" type="text/javascript"></script>
    <script src="./resources/app-assets/vendors/js/gallery/photo-swipe/photoswipe.min.js" type="text/javascript"></script>
    <script src="./resources/app-assets/vendors/js/gallery/photo-swipe/photoswipe-ui-default.min.js" type="text/javascript"></script>
    <!-- END PAGE VENDOR JS-->
    <!-- BEGIN ROBUST JS-->
    <script src="./resources/app-assets/js/core/app-menu.js" type="text/javascript"></script>
    <script src="./resources/app-assets/js/core/app.js" type="text/javascript"></script>
    <!-- END ROBUST JS-->
    <!-- BEGIN PAGE LEVEL JS-->
    <script src="./resources/app-assets/js/scripts/gallery/photo-swipe/photoswipe-script.js" type="text/javascript"></script>
    <!-- END PAGE LEVEL JS-->
  </body>
</html>
