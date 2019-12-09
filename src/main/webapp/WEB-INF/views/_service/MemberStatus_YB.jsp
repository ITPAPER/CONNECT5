<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!doctype html>
<html>
<head>
<jsp:include page="../assets/inc/css.jsp" />

<!-- 시각적 확인을 위한 CSS 적용 -->
<style>

body {
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
}

#chartdiv {
  width: 100%;
  height: 500px;
}

</style>


<meta charset="utf-8" />
<title>서비스 안내_멤버 현황(Service_MemberStatus1)</title>


</head>
<body>
	<jsp:include page="../assets/inc/top.jsp" />



	<!-- 변경사항  -->


	<!-- 상단 이미지 ( 다른 이미지 저장 시 src 변경 이름 ) -->
	<div class="boximg">
		<img src="${pageContext.request.contextPath}/assets/img/멤버현황상단.png" alt="연-결"
			class="img-responsive" />
	</div>
	<!-- 상단 이미지 끝 -->

	<div class="col-md-2">
		<!-- 패널 타이틀1 -->
		<div class="left sidebar1">
			<h3 class="title">서비스 안내</h3>
			<!-- 사이드바 메뉴목록1 -->
			<div class="list-group">
            	<a href="${pageContext.request.contextPath}/_service/ServiceProcedures_YB.do" class="list-group-item">서비스 이용절차</a>
                <a href="${pageContext.request.contextPath}/_service/MembershipRegisGuide_YB.do" class="list-group-item">회원가입안내</a>
                <a href="${pageContext.request.contextPath}/_service/MemberLevel_YH.do" class="list-group-item">회원등급안내</a>
                <a href="${pageContext.request.contextPath}/_service/SpecialService_YH.do" class="list-group-item">연-결 스페셜 서비스</a>
                <a href="${pageContext.request.contextPath}/_service/MemberStatus_YB.do" class="list-group-item btncolor">회원 현황</a>
            </div> 
		</div>
	</div>


	<h3 class="col-md-10">회원 현황</h3>
	<div class="col-md-10 text1">
		<h5>회원들의 비율을 지표 및 그래프로 보여줍니다.</h5>
	
	<div class="col-md-9 content">
	
		<div class="container">
			<a href="${pageContext.request.contextPath}/_service/MemberStatus_YB.do"><button class="btn btn-graph" type="submit">연-결 남녀 회원 현황 비율 </button></a>
			<a href="${pageContext.request.contextPath}/_service/MemberStatus2_YB.do"><button class="btn btn-graph" type="submit">연-결 남녀 회원 연봉 분포</button></a>
			<a href="${pageContext.request.contextPath}/_service/MemberStatus3_YB.do"><button class="btn btn-graph" type="submit">연-결 남녀 회원 연령 분포</button></a>
			<a href="${pageContext.request.contextPath}/_service/MemberStatus4_YB.do"><button class="btn btn-graph" type="submit">연-결 남녀 회원 학력 분포</button></a>
		</div>
	
    	
	    <!-- Resources -->
		<script src="https://www.amcharts.com/lib/4/core.js"></script>
		<script src="https://www.amcharts.com/lib/4/charts.js"></script>
		<script src="https://www.amcharts.com/lib/4/themes/animated.js"></script>
		
		<!-- 데이터 시각화 구현 -->
		<script>
		am4core.ready(function() {
		
		// Themes begin
		am4core.useTheme(am4themes_animated);
		// Themes end
		
		var chart = am4core.create("chartdiv", am4charts.XYChart);
		chart.hiddenState.properties.opacity = 0; // this makes initial fade in effect
		
		chart.data = [{
	
		  "gender": "연-결 남자 회원비율",
		  "value": (${jsonListm}/(${jsonListm}+${jsonListw}))
		}, {
		  "gender": "연-결 여자 회원비율",
		  "value": (${jsonListw}/(${jsonListm}+${jsonListw}))
	
		}];
		
		
		var categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
		categoryAxis.renderer.grid.template.location = 0;
		categoryAxis.dataFields.category = "gender";
		categoryAxis.renderer.minGridDistance = 40;
		
		var valueAxis = chart.yAxes.push(new am4charts.ValueAxis());
		
		var series = chart.series.push(new am4charts.CurvedColumnSeries());
		series.dataFields.categoryX = "gender";
		series.dataFields.valueY = "value";
		series.tooltipText = "{valueY.value}"
		series.columns.template.strokeOpacity = 0;
		
		series.columns.template.fillOpacity = 0.75;
		
		var hoverState = series.columns.template.states.create("hover");
		hoverState.properties.fillOpacity = 1;
		hoverState.properties.tension = 0.4;
		
		chart.cursor = new am4charts.XYCursor();
		
		// Add distinctive colors for each column using adapter
		series.columns.template.adapter.add("fill", function(fill, target) {
		  return chart.colors.getIndex(target.dataItem.index);
		});
		
		chart.scrollbarX = new am4core.Scrollbar();
		
		}); // end am4core.ready()
		</script>
		
		<!-- 그래프를 표시할 위치 -->
		<div id="chartdiv"></div>

	</div>
	</div>
		<!-- 가운데(내용) 영역 끝 -->


	<!-- 변경 사항 -->

	<jsp:include page="../assets/inc/footer.jsp" />
</body>
</html>