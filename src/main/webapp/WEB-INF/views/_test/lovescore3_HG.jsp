<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../assets/inc/css.jsp" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/HG/Test/lovescore3.css">
<meta charset="utf-8" />
<title>연-결</title>
</head>
<body>
	<jsp:include page="../assets/inc/top.jsp" />



	<!-- 변경사항  -->


	<!-- 상단 이미지 ( 다른 이미지 저장 시 src 변경 이름 ) -->
	<div class="boximg">
		<img src="${pageContext.request.contextPath}/assets/img/lovescoreimg.PNG" alt="연-결"
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
					class="list-group-item">연애성향 테스트</a> <a
					href="${pageContext.request.contextPath}/_test/idealtype_HG.do"
					class="list-group-item ">이상형 찾기</a> <a
					href="${pageContext.request.contextPath}/_test/lovescore1_HG.do"
					class="list-group-item btncolor">나의 연애 매력</a>
			</div>
		</div>
	</div>


	<h3 class="col-md-10">나의 연애 매력</h3>
	<div class="col-md-10 text1">
		<h5>나의 연애 매력을 알아봅시다.</h5>
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
							<th class="text-center" id="num">결과보기</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td id="context" align="left">당신은 자극적이고 대담한 매력을 가졌지만 자신감이
								부족해 이를 잘 표현하지 못하는 경우가 많습니다. <br />당신의 매력에 자신을 갖고 도전해 보세요. 당신의
								매력은 성실함과 솔직함입니다. <br />이런 사람은 사랑에 빠지면 헌신적이며 자상하고 부드러운 성격으로 상대에게
								바라는 것 없이 그 사람을 따뜻하게 지켜주는 매력을 지니고 있습니다. 한마디로 당신은 최고의 애인감!
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