<div id="map" style="width:1700px;height:1000px;"></div>

    <script src="${url }" type="text/javascript"></script>

<style>
    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
</style>
	
	<script>
	
	var latitude = ${latitude };
	var longtitude = ${longitude };
	
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(37.492217, 127.029230),
			level: 4
		};

		var map = new kakao.maps.Map(container, options);
		
	      markerPosition1 = new kakao.maps.LatLng(latitude, longtitude);
	      markerTitle1 = 'Gangnam';
	          
	          // 마커를 생성합니다
	          var marker = new kakao.maps.Marker({
	              map: map, // 마커를 표시할 지도
	              position: markerPosition1, // 마커를 표시할 위치
	              title : markerTitle1, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
	              //image : markerImage // 마커 이미지 
	          });    
	      
	      var content1= '<div class="wrap">' + 
	                 '    <div class="info">' + 
	                 '        <div class="title">' + 
	                 '              advertisement' + 
	                 '            <div class="close" onclick="closeOverlay()" title="close"></div>' + 
	                 '        </div>' + 
	                 '        <div class="body">' + 
	                 '            <div class="img">' +
	                 '                <img src="./resources/img/test.png" width="73" height="70" alt="" >' +
	                 '           </div>' + 
	                 '            <div class="desc">' + 
	                 '                <div class="ellipsis"></div>' + 
	                 '                <div class="jibun ellipsis">advertisement playing now</div>' +    
	                 '            </div>' + 
	                 '        </div>' + 
	                 '    </div>' +    
	                 '</div>';
	      
	    
	        //마커 위에 커스텀오버레이를 표시합니다
	         //마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
	         var overlay = new kakao.maps.CustomOverlay({
	         content: content1,
	         map: map,
	         position: markerPosition1    
	         });
	         

	      //마커를 클릭했을 때 커스텀 오버레이를 표시합니다
	      kakao.maps.event.addListener(marker, 'click', function() {
	      overlay.setMap(map);
	      });

	       marker.setMap(map);
	      //커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
	      function closeOverlay() {
	      overlay.setMap(null);     
	      }

	</script>

<!-- BEGIN PAGE LEVEL JS-->
<script src="./resources/app-assets/data/jqvmaps/jquery.vmap.sampledata.js" type="text/javascript"></script>
<!-- END PAGE LEVEL JS-->

