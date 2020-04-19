<script src="https://www.youtube.com/player_api"></script>
<script>

	var player;
	var i = 0;

	// The below function "onYouTubePlayerAPIReady" or "onYouTubeIframeAPIReady" creates an <iframe> (and YouTube player) on the element with id="player" after the API code downloads.
	// The API will call this function when the page has finished downloading the JavaScript for the player API, which enables you to then use the API on your page. Thus, this function might create the player objects that you want to display when the page loads.
	function onYouTubeIframeAPIReady() {

		player = new YT.Player('id-player', {
			height : '800',
			width : '800',
			videoId : 'M7lc1UVf-VE',
			playerVars : {
				'enablejsapi' : 1,
				'autoplay' : 1,
				'loop' : 0
			},
			events : {
				'onStateChange' : onPlayerStateChange
			// 플레이어의 상태가 변경될 때마다 실행
			}
		});

		function onPlayerStateChange(event) {

			// 현재 동영상 재생 종료됬을 경우
			if (event.data == YT.PlayerState.ENDED) {

				// 5초뒤에 다음 영상 실행
				onPlayerStateChange_excute();

			}

		}
		function onPlayerStateChange_excute() {
			player.loadPlaylist({
                'playlist': ['Skhwqq-iGQM', 'R0W-voiYpQk', 'pB-5XG-DbAA', 'OPf0YbXqDm0'],
                'listType': 'playlist',
                'index': i,
                'startSeconds': 0,
                'suggestedQuality': 'small'
            });
			i++;
		}

	}
</script>
<div style="margin-left: 250px" id="id-player"></div>

