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
  width: 750px;
  height: 500px;
}

</style>


<meta charset="utf-8" />
<title>서비스 안내_멤버 현황(Service_MemberStatus3)</title>


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
		<h5>회원들의 비율 및 수를 그래프로 보여줍니다.</h5>
	
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
		
		<!-- Chart code -->
		<script>
		am4core.ready(function() {
		
		// Themes begin
		am4core.useTheme(am4themes_animated);
		// Themes end
		
		// Create chart instance
		var chart = am4core.create("chartdiv", am4charts.XYChart3D);
		
		// Add data
		chart.data = [{
		    "연령대": "만 20-24세",
		    "NoOfAgeM": ${jsonAge2024M},
		    "NoOfAgeW": ${jsonAge2024W}
		}, {
		    "연령대": "만 20-29세",
		    "NoOfAgeM": ${jsonAge2529M},
		    "NoOfAgeW": ${jsonAge2529W}
		}, {
		    "연령대": "만 30-34세",
		    "NoOfAgeM": ${jsonAge3034M},
		    "NoOfAgeW": ${jsonAge3034W}
		}, {
		    "연령대": "만 35-39세",
		    "NoOfAgeM": ${jsonAge3539M},
		    "NoOfAgeW": ${jsonAge3539W}
		}, {
		    "연령대": "만 40-49세",
		    "NoOfAgeM": ${jsonAge4049M},
		    "NoOfAgeW": ${jsonAge4049W}
		}, {
		    "연령대": "만 50세 이상~",
		    "NoOfAgeM": ${jsonAge50PlusM},
		    "NoOfAgeW": ${jsonAge50PlusW}
		}];
		
		// Create axes
		var categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
		categoryAxis.dataFields.category = "연령대";
		categoryAxis.title.text = "연-결 연령대별 남녀 회원 수(만 나이 기준)";
		categoryAxis.renderer.grid.template.location = 0;
		categoryAxis.renderer.minGridDistance = 30;
		categoryAxis.renderer.cellStartLocation = 0.1;
		categoryAxis.renderer.cellEndLocation = 0.9;
		
		var valueAxis = chart.yAxes.push(new am4charts.ValueAxis());
		valueAxis.title.text = "회원 수";
		valueAxis.renderer.labels.template.adapter.add("text", function(text) {
		  return text + "명";
		});
		
		// Create series
		var series = chart.series.push(new am4charts.ColumnSeries3D());
		series.dataFields.valueY = "NoOfAgeM";
		series.dataFields.categoryX = "연령대";
		series.name = "남성회원";
		series.clustered = true;
		series.columns.template.tooltipText = "연-결 회원 수 {category} (남성회원): [bold]{valueY}[/]";
		series.columns.template.fillOpacity = 0.9;
		
		var series2 = chart.series.push(new am4charts.ColumnSeries3D());
		series2.dataFields.valueY = "NoOfAgeW";
		series2.dataFields.categoryX = "연령대";
		series2.name = "여성회원";
		series2.clustered = true;
		series2.columns.template.tooltipText = "연-결 회원 수 {category} (여성회원): [bold]{valueY}[/]";
		
		}); // end am4core.ready()
		</script>
		
		<!-- HTML -->
		<div id="chartdiv"></div>
		
	</div>
	</div>
		<!-- 가운데(내용) 영역 끝 -->


	<!-- 변경 사항 -->

	<jsp:include page="../assets/inc/footer.jsp" />
</body>
</html>