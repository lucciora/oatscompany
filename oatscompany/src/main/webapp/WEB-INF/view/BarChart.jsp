<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>박지인</title>
</head>
<body>
	<script>
		var svgWidth = 1600;
		// var svgHeight = 300;
		// Legend를 넣기 위해 높이 늘림
		var svgHeight = 400;
		var svg = content.append("svg").attr("width", svgWidth).attr("height", svgHeight);

		/* canvas 내부에 공간을 두어 그래프 그리기 */
		
		// Legend를 넣기 위해 right를 늘림
		var margin = {
			top : 40,
			right : 30,
			bottom : 40,
			left : 50
		};

		var chartWidth = svgWidth - margin.left - margin.right;
		var chartHeight = svgHeight - margin.top - margin.bottom;
		/* 그라데이션 색상 설정 */
		var color = d3.scaleOrdinal(d3.schemeCategory20)
		// d3.scaleOrdinal().range(["#E14D57", "#EC932F", "#71B37C", "#5290E9", "#965994"])
		// d3.scaleLinear().domain([1,10]).range(["brown", "steelblue"]); // 그라데이션

		/* axis 설정
		 선스타일 - linear
		 데이터범위(domain) 실제 수치들의 min, max를 찾아내어 범위를 정함
		 표시할범위(range) 그러질 스케일 비율로 조절됨.
		 scaleBand
		 scaleLinear
		 scaleTime
		 range
		 rangeRound
		 */
		 
		/* x축의 범위 설정 */
		var x = d3.scaleBand().rangeRound([ 0, chartWidth ]) // 왼 -> 오
		.domain(dataSet.map(function(d) {
			return d.produce
		}))

		/* y축의 범위 설정 */
		var y = d3.scaleLinear().rangeRound([ chartHeight, 0 ]) // 위 -> 아래
		.domain([ 2.5, d3.max(dataSet.map(function(d) {
			return d.meancorr
		})) ])

		/* axis 추가 */
		// translate(왼,위) : 축 이동시킴
		var xAxis = svg.append("g").attr("transform",
				"translate(" + margin.left + ", " + (margin.top + chartHeight)+ ")").call(d3.axisBottom(x));
						
		var yAxis = svg.append("g").attr("transform",
				"translate(" + margin.left + ", " + margin.top + ")").call(d3.axisLeft(y));

		/* chart 그리기 */
		/* bar 너비 */
		var barWidth = 20;
		
		/* chart group 만들어 차트 위치 한꺼번에 바꿀 수 있도록 */
		var g = svg.append("g").attr("transform", 
				"translate(" + (margin.left) + ", " + margin.top + ")")
		
		/* 막대 그리기 */
		var item = g.selectAll("rect").data(dataSet);
		item.enter().append("rect")
		/* 정해진 css 값의 색을 주기 */
		//.attr("class", "bar")
		.attr("width", barWidth).attr("x", function(d, i) {
			return i * (chartWidth / dataSet.length) +20
		}).attr("y", function(d) {
			return chartHeight
		}).attr("height", function(d, i) {
			return 0;
		})
		
		/* 막대를 다양한 color 옵션으로 색을 주기 */
		.style("fill", function(d, i) {
			return color(i);
		}).transition().delay(function(d, i) {
			return i * 50;
		}).duration(function(d, i) {
			return i * 60;
		})
		
		/* y(d.cpu_user); --> cpu_user 값을 scale에 맞게 비율 변환*/
		.attr("y", function(d) {
			//return d.number //<- 비율 적용 전
			return y(d.meancorr)
		}).attr("height", function(d, i) {
			//return chartHeight - d.cpu_user <- 비율 적용 전
			return chartHeight - y(d.meancorr);
		})
		
		/*막대에 수치표시*/
		item.enter().append("text").attr("x", function(d, i) {
			return i * (chartWidth / dataSet.length) + 15;
		}).attr("y", function(d) {
			return y(d.meancorr)-5;
		}).style("opacity", 0).text(function(d, i) {
			return d.meancorr;
		}).transition()
		/*.delay(500)
		 .duration(800)*/
		.delay(function(d, i) {
			return i * 50;
		}).duration(function(d, i) {
			return i * 70;
		}).style("opacity", 1)
		
	</script>

</body>
</html>
