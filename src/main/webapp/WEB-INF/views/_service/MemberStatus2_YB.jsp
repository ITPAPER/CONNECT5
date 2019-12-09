<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!doctype html>
<html>
<head>
<jsp:include page="../assets/inc/css.jsp" />

<!-- 시각적 확인을 위한 CSS 적용 -->
<style>

#chartdiv {
  width: 100%;
  height: 800px;
}

</style>


<meta charset="utf-8" />
<title>서비스 안내_멤버 현황(Service_MemberStatus2)</title>


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
		
		<!-- Chart code -->
		<script>
		am4core.ready(function() {
		
		// Themes begin
		am4core.useTheme(am4themes_animated);
		// Themes end
		
		 // Create chart instance
		var chart = am4core.create("chartdiv", am4charts.XYChart);
		
		// Add data
		chart.data = [{
		  "SalaryAnnual": "~2000(만원)이하",
		  "NoOfSalAnnualM": ${jsonSal0010M},
		  "NoOfSalAnnualW": ${jsonSal0010W}
		},{
		  "SalaryAnnual": "2,000~2,999(만원)",
		  "NoOfSalAnnualM": ${jsonSal2000M},
		  "NoOfSalAnnualW": ${jsonSal2000W}
		},{
		  "SalaryAnnual": "3,000~3,999(만원)",
		  "NoOfSalAnnualM": ${jsonSal3000M},
		  "NoOfSalAnnualW": ${jsonSal3000W}
		},{
		  "SalaryAnnual": "4,000~4,999(만원)",
		  "NoOfSalAnnualM": ${jsonSal4000M},
		  "NoOfSalAnnualW": ${jsonSal4000W}
		},{
		  "SalaryAnnual": "5,000~5,999(만원)",
		  "NoOfSalAnnualM": ${jsonSal5000M},
		  "NoOfSalAnnualW": ${jsonSal5000W}
		},{
		  "SalaryAnnual": "6,000~7,999(만원)",
		  "NoOfSalAnnualM": ${jsonSal6070M},
		  "NoOfSalAnnualW": ${jsonSal6070W}
		},{
		  "SalaryAnnual": "8,000~9,999(만원)",
		  "NoOfSalAnnualM": ${jsonSal8090M},
		  "NoOfSalAnnualW": ${jsonSal8090W}
		},{
		  "SalaryAnnual": "1억원(10,000만원) 이상~",
		  "NoOfSalAnnualM": ${jsonSal10000M},
		  "NoOfSalAnnualW": ${jsonSal10000W}
		
		}];
		
		// Create axes
		var categoryAxis = chart.yAxes.push(new am4charts.CategoryAxis());
		categoryAxis.dataFields.category = "SalaryAnnual";
		categoryAxis.numberFormatter.numberFormat = "#";
		categoryAxis.renderer.inversed = true;
		categoryAxis.renderer.grid.template.location = 0;
		categoryAxis.renderer.cellStartLocation = 0.1;
		categoryAxis.renderer.cellEndLocation = 0.9;
		
		var  valueAxis = chart.xAxes.push(new am4charts.ValueAxis()); 
		valueAxis.renderer.opposite = true;
		
		// Create series
		function createSeries(field, name) {
		  var series = chart.series.push(new am4charts.ColumnSeries());
		  series.dataFields.valueX = field;
		  series.dataFields.categoryY = "SalaryAnnual";
		  series.name = name;
		  series.columns.template.tooltipText = "{name}: [bold]{valueX}[/]";
		  series.columns.template.height = am4core.percent(100);
		  series.sequencedInterpolation = true;
		
		  var valueLabel = series.bullets.push(new am4charts.LabelBullet());
		  valueLabel.label.text = "{valueX}";
		  valueLabel.label.horizontalCenter = "left";
		  valueLabel.label.dx = 10;
		  valueLabel.label.hideOversized = false;
		  valueLabel.label.truncate = false;
		
		  var categoryLabel = series.bullets.push(new am4charts.LabelBullet());
		  categoryLabel.label.text = "{name}";
		  categoryLabel.label.horizontalCenter = "right";
		  categoryLabel.label.dx = -10;
		  categoryLabel.label.fill = am4core.color("#fff");
		  categoryLabel.label.hideOversized = false;
		  categoryLabel.label.truncate = false;
		}
		
		createSeries("NoOfSalAnnualM", "남자회원");
		createSeries("NoOfSalAnnualW", "여자회원");
		
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