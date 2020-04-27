<script src="https://www.youtube.com/player_api"></script>

<script>
	var player;
	var player2;
	var i = 0;
	var j = 0;
	var getadlist = new Array();
	var tmp;
	
	function display(data) {
		$(data).each(function(idx, item) {
			getadlist[idx] = item.adurl;
		});
		var t = Math.random();
		j = Math.floor(t * getadlist.length);
		play();
	}

	function play() {
		player = new YT.Player("id-player", {
			height : "750",
			width : "630",
			videoId : getadlist[i],
			playerVars : {
				enablejsapi : 1,
				autoplay : 1,
				loop : 0,
			},
			events : {
				onStateChange : onPlayerStateChange,
			},
		});

		player2 = new YT.Player("id-player2", {
			height : "750",
			width : "630",
			videoId : getadlist[j],
			playerVars : {
				enablejsapi : 1,
				autoplay : 1,
				loop : 0,
			},
			events : {
				onStateChange : onPlayerStateChange,
			},
		});

	}

	function nextplay() {
		sendData(getadlist[i]);
		player.loadVideoById(getadlist[i]);

	}

	function nextplay2() {
		player2.loadVideoById(getadlist[j]);

	}

	function sendData(tmp) {
		var adData = {
			"current_advertisement" : tmp
		};

		$.ajax({
			url : "fcmad",
			type : 'GET',
			data : adData,
			success : function(data) {
			},
			error : function(jqXHR, textStatus, errorThrown) {
				console.log("error \n" + textStatus + " : " + errorThrown);
			}
		})
		console.log("sendData");
	}

	function onPlayerStateChange(event) {
		var tmp = event.target.f.id;
		console.log(tmp);
		if (event.data == YT.PlayerState.ENDED) {
			if (tmp == "id-player") {
				if (i == getadlist.length) {
					i = 0;
				} else {
					i++;
				}
				nextplay();
			} else if (tmp == "id-player2") {
				var tt = Math.random();
				j = Math.floor(tt * getadlist.length);
				nextplay2();
			} else {

			}
		}
	}

	function getData() {
		$.ajax({
			url : 'getadlist',
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

<body data-open="click" data-menu="vertical-menu" data-col="2-columns"
	class="vertical-layout vertical-menu 2-columns  fixed-navbar">

	<div class="app-content content container-fluid">
		<div class="content-wrapper">
			<div class="content-header row">
				<div class="content-header-left col-md-6 col-xs-12 mb-1">
					<h2 class="content-header-title">Carousel</h2>
				</div>
				<div
					class="content-header-right breadcrumbs-right breadcrumbs-top col-md-6 col-xs-12">
					<div class="breadcrumb-wrapper col-xs-12">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.html">Home</a></li>
							<li class="breadcrumb-item"><a href="#">Components</a></li>
							<li class="breadcrumb-item active">Carousel</li>
						</ol>
					</div>
				</div>
			</div>
			<div class="content-body">
				<!-- Basic Carousel start -->
				<section id="basic-carousel">
					<div class="row">
						<div class="col-xs-12 mt-1">
							<p>
								<strong> Nested carousels are not supported.</strong>
							</p>
							<hr>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 col-sm-12">
							<div class="card">
								<div class="card-header">
									<h4 class="card-title">Signage1</h4>
								</div>
								<div class="card-body collapse in">
									<div class="card-block">
										<div id="carousel-example-generic" class="carousel slide"
											data-ride="carousel">
											<div class="carousel-item active">
												<div id="id-player"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-sm-12">
							<div class="card">
								<div class="card-header">
									<h4 class="card-title">Signage2</h4>
								</div>
								<div class="card-body collapse in">
									<div class="card-block">
										<div id="carousel-example-generic" class="carousel slide"
											data-ride="carousel">
											<div class="carousel-item active">
												<div id="id-player2"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
				</section>
			</div>
		</div>
	</div>

</body>
