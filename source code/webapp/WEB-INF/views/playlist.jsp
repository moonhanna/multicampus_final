<script>
	function display(data) {
		var result = '';
		var tmp = '';
		$(data).each(function(idx, item) {
							tmp = item.adcategory;
							result += '<figure class="col-lg-3 col-md-6 col-xs-12 '+tmp+'" itemprop="associatedMedia" itemscope itemtype="http://schema.org/ImageObject">';
							result += '<h5>';
							result += item.agency;
							result += ' - ';
							result += item.productname;
							result += '</h5>';
							result += item.adurl;
							result += '</figure>';

						});
		$('#playlist').html(result);
	};

	function getData() {
		$.ajax({
			url : 'playlistgetdata',
			dataType : "json",
			success : function(data) {
				console.log(data);
				display(data);
			},
			error : function(request, status, error) {
				alert("code:" + request.status + "\n" + "message:"
						+ request.responseText + "\n" + "error:" + error);
			}
		})
	};

	$(document).ready(function() {
		getData();
	});
	
	function category(adcategory){

		if(adcategory == 'living')
		{
			$('.living').css('display', '');
			$('.food').css('display', 'none');
			$('.fashion').css('display', 'none');
			$('.culture').css('display', 'none');
			$('.etc').css('display', 'none');
		}
		if(adcategory == 'food')
		{	
			$('.food').css('display', '');
			$('.living').css('display', 'none');
			$('.fashion').css('display', 'none');
			$('.culture').css('display', 'none');
			$('.etc').css('display', 'none');
		}
		if(adcategory == 'fashion')
		{
			$('.fashion').css('display', '');
			$('.living').css('display', 'none');
			$('.food').css('display', 'none');
			$('.culture').css('display', 'none');
			$('.etc').css('display', 'none');
		}
		if(adcategory == 'culture')
		{
			$('.culture').css('display', '');
			$('.living').css('display', 'none');
			$('.food').css('display', 'none');
			$('.fashion').css('display', 'none');
			$('.etc').css('display', 'none');
		}
		if(adcategory == 'etc')
		{
			$('.etc').css('display', '');
			$('.living').css('display', 'none');
			$('.food').css('display', 'none');
			$('.fashion').css('display', 'none');
			$('.culture').css('display', 'none');
		}
		
		if(adcategory == 'all')
		{
			$('.living').css('display', '');
			$('.food').css('display', '');
			$('.fashion').css('display', '');
			$('.culture').css('display', '');
			$('.etc').css('display', '');
		}

	}
</script>


	<div class="app-content content container-fluid">
		<div class="content-wrapper">
			<div class="content-header row">
				<div class="content-header-left col-md-6 col-xs-12 mb-1">
					<h2 class="content-header-title">Advertising List</h2>
				</div>
				<div
					class="content-header-right breadcrumbs-right breadcrumbs-top col-md-6 col-xs-12">
					<div class="breadcrumb-wrapper col-xs-12">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.html">Home</a></li>
							<li class="breadcrumb-item"><a href="#">Gallery</a></li>
							<li class="breadcrumb-item active"></li>
						</ol>
					</div>
				</div>
			</div>
			<div class="content-body">
				<!-- Description -->

				<!-- Image grid -->
				<section id="image-gallery" class="card">
					<div class="card-header">
						<h4 class="card-title" style="display: inline;">Category [</h4>
						<h4 class="card-title" style="display: inline;">
							<a href="#" onclick="category('all');">all</a> &nbsp;
						</h4>
						<h4 class="card-title" style="display: inline;">
							<a href="#" onclick="category('living');">living</a> &nbsp;
						</h4>
						<h4 class="card-title" style="display: inline;">
							<a href="#" onclick="category('food');">food</a> &nbsp;
						</h4>
						<h4 class="card-title" style="display: inline;">
							<a href="#" onclick="category('fashion');">fashion</a> &nbsp;
						</h4>
						<h4 class="card-title" style="display: inline;">
							<a href="#" onclick="category('culture');">culture</a> &nbsp;
						</h4>
						<h4 class="card-title" style="display: inline;">
							<a href="#" onclick="category('etc');">etc</a>
						</h4>
						<h4 class="card-title" style="display: inline;">]</h4>
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
						<div class="card-block  my-gallery" itemscope
							itemtype="http://schema.org/ImageGallery">
							<div class="row" id="playlist"></div>
						</div>
						<!--/ Image grid -->

					
					</div>
					<!--/ PhotoSwipe -->
				</section>
				<!--/ Image grid -->
			</div>
		</div>
	</div>
<!-- BEGIN PAGE LEVEL JS-->
<script src="./resources/app-assets/js/scripts/gallery/photo-swipe/photoswipe-script.js" type="text/javascript"></script>
<!-- END PAGE LEVEL JS-->