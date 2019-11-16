<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../assets/inc/css.jsp" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/HG/Test/propensity3.css">

<meta charset="utf-8" />
<title>연-결</title>
</head>
<body>
	<jsp:include page="../assets/inc/top.jsp" />



	<!-- 변경사항  -->


	<!-- 상단 이미지 ( 다른 이미지 저장 시 src 변경 이름 ) -->
	<div class="boximg">
		<img src="${pageContext.request.contextPath}/assets/img/propensityimg.PNG" alt="연-결"
			class="img-responsive" />
	</div>
	<!-- 상단 이미지 끝 -->

	<div class="col-md-2">
		<!-- 패널 타이틀1 -->
		<div class="left sidebar1">
			<h3 class="title">연-결 테스트</h3>
			<!-- 사이드바 메뉴목록1 -->
			<div class="list-group">
				<a href="${pageContext.request.contextPath}/_test/propensity1_HG.do"
					class="list-group-item btncolor">연애성향 테스트</a> <a
					href="${pageContext.request.contextPath}/_test/idealtype_HG.do"
					class="list-group-item ">이상형 찾기</a> <a
					href="${pageContext.request.contextPath}/_test/lovescore1_HG.do"
					class="list-group-item ">나의 연애 매력</a>
			</div>
		</div>
	</div>


	<h3 class="col-md-10">연애성향 테스트</h3>
	<div class="col-md-10 text1">
		<h5>나의 연애성향을 알아봅시다.</h5>
	</div>

	<div class="col-md-9 content">
		<div class="all">
			<img src="${pageContext.request.contextPath}/assets/img/test1img.PNG">
			<div class="table-responsive">
				<br />
				<br />
				<table class="table table-bordered">
					<thead>
						<tr>
							<th class="text-center" id="num">타입</th>
							<th class="title1">우좌(input-우뇌,output-좌뇌)타입</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td id="context" colspan="3" align="left">감각적으로 이해하고 이를
								논리적으로 표현하는 인간형인 당신.<br /> 감각적인 이해를 논리적으로 표현하기에 괴짜형으로 보일 수 있는 드문
								타입이다. 하지만 그 특별함이 장점이 되어 진급이나 출세에 강하다.
							</td>
						</tr>

					</tbody>
				</table>
			</div>
		</div>
		<div class="back1">
			<img src="${pageContext.request.contextPath}/assets/img/backimg1.PNG">
		</div>
	</div>


	<!-- 변경 사항 -->

	<jsp:include page="../assets/inc/footer.jsp" />
</body>
</html>