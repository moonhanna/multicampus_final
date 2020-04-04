<link href="./resources/app-assets/css/styles.css" rel="stylesheet" />

<style>
#chart {
	max-width: 650px;
	margin: 35px auto;
}
</style>

<script>
      window.Promise || document.write('<script src="https://cdn.jsdelivr.net/npm/promise-polyfill@8/dist/polyfill.min.js"><\/script>')
      window.Promise || document.write('<script src="https://cdn.jsdelivr.net/npm/eligrey-classlist-js-polyfill@1.2.20171210/classList.min.js"><\/script>')
      window.Promise || document.write('<script src="https://cdn.jsdelivr.net/npm/findindex_polyfill_mdn"><\/script>')
</script>

<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>

<script>
      // Replace Math.random() with a pseudo-random number generator to get reproducible results in e2e tests
      // Based on https://gist.github.com/blixt/f17b47c62508be59987b
      var _seed = 42
      Math.random = function() {
        _seed = (_seed * 16807) % 2147483647
        return (_seed - 1) / 2147483646
      }
</script>

<script>
  var lastDate = 0;
  var data = []
  var TICKINTERVAL = 86400000
  let XAXISRANGE = 777600000
  function getDayWiseTimeSeries(baseval, count, yrange) {
    var i = 0;
    while (i < count) {
      var x = baseval;
      var y = Math.floor(Math.random() * (yrange.max - yrange.min + 1)) + yrange.min;
  
      data.push({
        x, y
      });
      lastDate = baseval
      baseval += TICKINTERVAL;
      i++;
    }
  }
  
  getDayWiseTimeSeries(new Date('11 Feb 2017 GMT').getTime(), 10, {
    min: 10,
    max: 90
  })
  
  function getNewSeries(baseval, yrange) {
    var newDate = baseval + TICKINTERVAL;
    lastDate = newDate
  
    for(var i = 0; i< data.length - 10; i++) {
      // IMPORTANT
      // we reset the x and y of the data which is out of drawing area
      // to prevent memory leaks
      data[i].x = newDate - XAXISRANGE - TICKINTERVAL
      data[i].y = 0
    }
  
    data.push({
      x: newDate,
      y: Math.floor(Math.random() * (yrange.max - yrange.min + 1)) + yrange.min
    })
  }
  
  function resetData(){
    // Alternatively, you can also reset the data at certain intervals to prevent creating a huge series 
    data = data.slice(data.length - 10, data.length);
  }
</script>

<div class="app-content content container-fluid">
	<div class="content-wrapper">
		<div class="content-body">
			<div class="row">
				<div class="col-xs-12">
					<div class="card">
						<div class="card-header">
							<h4 class="card-title">Test Page</h4>
						</div>
					</div>
				</div>

				<div id="chart"></div>

				<script>
	var options = {
		series : [ {
			data : data.slice()
		} ],
		chart : {
			id : 'realtime',
			height : 350,
			type : 'line',
			animations : {
				enabled : true,
				easing : 'linear',
				dynamicAnimation : {
					speed : 1000
				}
			},
			toolbar : {
				show : false
			},
			zoom : {
				enabled : false
			}
		},
		dataLabels : {
			enabled : false
		},
		stroke : {
			curve : 'smooth'
		},
		title : {
			text : 'Dynamic Updating Chart',
			align : 'left'
		},
		markers : {
			size : 0
		},
		xaxis : {
			type : 'datetime',
			range : XAXISRANGE,
		},
		yaxis : {
			max : 100
		},
		legend : {
			show : false
		},
	};

	var chart = new ApexCharts(document.querySelector("#chart"), options);
	chart.render();

	window.setInterval(function() {
		getNewSeries(lastDate, {
			min : 10,
			max : 90
		})

		chart.updateSeries([ {
			data : data
		} ])
	}, 1000)
</script>

			</div>
		</div>
	</div>
</div>
