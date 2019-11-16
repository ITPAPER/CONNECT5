<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<jsp:include page="../assets/inc/css.jsp" />


<title>연-결 코치_데이트 코스(Coach_DatingCourse2)</title>

<!-- 시각적 확인을 위한 CSS 적용 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/YB/Coach/DatingCourse2.css">

	<!-- 스크립트 추가 작성란 --> 
	<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script type="text/javascript">
	
</script>

<!-- 모바일 웹 페이지 설정 -->
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/ico/favicon.ico" />
		<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/assets/ico/apple-touch-icon-144-precomposed.png" />

		<!-- bootstrap -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />

		<!-- 나눔고딕 웹 폰트 적용 -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/nanumfont.css"/>

</head>
<body>
	<jsp:include page="../assets/inc/top.jsp" />

	<!-- 상단 이미지 ( 다른 이미지 저장 시 src 변경 이름 ) -->
	<div class="boximg">
		<img src="${pageContext.request.contextPath}/assets/img/데이트코스2_상단.png" alt="연-결"
			class="img-responsive" />
	</div>
	<!-- 상단 이미지 끝 -->

	 <!-- 가운데 영역 -->
     <div class="col-md-2">
     	
     	<!-- 패널 타이틀1 -->
      	<div class="left_sidebar">
      		<h3 class="title">연-결 코치</h3>
      		
      		<!-- 사이드바 메뉴목록1 -->
      		<div class="list-group">
	            <a href="${pageContext.request.contextPath}/./_coach/meetingTip_GD.do" class="list-group-item">미팅성공전략TIP</a>
	            <a href="${pageContext.request.contextPath}/./_coach/loveColumn_GD.do" class="list-group-item">LOVE 컬럼</a>
	            <a href="${pageContext.request.contextPath}/./_coach/DatingCourse_YB.do" class="list-group-item btncolor">데이트 코스</a>
	            <a href="${pageContext.request.contextPath}/./_coach/review_SE.do" class="list-group-item">연-결 만남 후기</a>
	            <a href="${pageContext.request.contextPath}/./_coach/QnA_SE.do" class="list-group-item">연-결 Q & A</a>
            </div> 
        </div>
      </div>

		<!-- 내용 작성  -->
        <h3 class="col-md-10">데이트 코스</h3><br />
        	<div class="col-md-10 text1">
				<h5>이색 데이트 코스#1</h5>
			</div>
			
			<div class="col-md-10 content">	
				<div class="container">
				
				<br />
				<br />
				
				<table class="board_view" width="800px" border="0" cellspacing="0" cellpadding="0">
				<tbody>
					<tr>
						<td class="subject1" width="20%"><font size="2" face="빙그레체" color="#5B5C8F">제목</font></td>
						<td class="subject2" ><font size="2" face="빙그레체" color="#5B5C8F">[서울] 북촌 한옥마을</font></th>
					</tr>
					<tr>
						<td class="subject1" width="20%"><font size="2" face="빙그레체" color="#5B5C8F">주소</font></td>
						<td class="subject2" ><font size="2" face="빙그레체" color="#5B5C8F">서울 종로구 계동길 37</font></td>
					</tr>
					<tr>
						<td class="subject1" width="20%"><font size="2" face="빙그레체" color="#5B5C8F">연락처</font></td>
						<td class="subject2" ><font size="2" face="빙그레체" color="#5B5C8F">02-2133-1372</font></td>
					</tr>
					<tr>
						<td class="subject1" width="20%"><font size="2" face="빙그레체" color="#5B5C8F">찾아오시는 길</font></td>
						<td class="subject2" ><font size="2" face="빙그레체" color="#5B5C8F">서울 종로구 계동길 37</font></td>
					</tr>
				</tbody>
				</table>
					
					
				<table class="board_view" width="800px" border="0" cellspacing="0" cellpadding="0">
				<tbody>	
					<tr>
					
					<td class="subject2" colspan="3" class="contents2">
					<div class=box1>
					<br /><br />
					<div class="photo transform1" alt="북촌1" align="center">
						<img src="${pageContext.request.contextPath}/assets/img/북촌01.jpg">
						<font size="2" face="빙그레체" color="#5B5C8F">
						<p><br />북촌 한옥마을1</p></font>
					</div>					
					<div class="photo transform2" alt="북촌2" align="center">
						<img src="${pageContext.request.contextPath}/assets/img/북촌02.jpg">
						<font size="2" face="빙그레체" color="#5B5C8F">
						<p><br />북촌 한옥마을2</p></font>
					</div>		
					<div class="photo transform3" alt="북촌3" align="center">
						<img src="${pageContext.request.contextPath}/assets/img/북촌03.jpg">
						<font size="2" face="빙그레체" color="#5B5C8F">
						<p><br />북촌 한옥마을3</p></font>
					</div>		
					
					</td>
					</tr>
					</tbody>
				</table>
					
				
					
					<table class="board_view" width="800px" border="0" cellspacing="0" cellpadding="0">
					<tbody>
					<tr>
					
						<td class="subject2" colspan="2" class="contents">
						<font size="2" face="빙그레체" color="#5B5C8F">
						북촌은 북악과 응봉을 연결하는 산줄기의 남쪽 기슭에 자리하고 있어 예로부터 풍수지리적으로 가장 좋은 곳입니다.
						그리고 북쪽으로 삼청공원과 북악산이 펼쳐져 있어 도심에서는 보기 드문 울창한 숲을 이루고 있는 곳이기도 합니다.
						또한 북촌은 북쪽이 남쪽보다 높아 겨울에 따뜻하고 배수가 잘 될 뿐만 아니라 남쪽은 넓게 트여 있어 남산이 보이는 좋은 전망을 갖추고 있습니다.
						<br />
						이외에도 경복궁과 마주하고 있는 삼청동길 주변에는 많은 갤러리가 늘어서 있고, 
						화동길과 더불어 각종 먹거리 자원과 특색있는 카페가 자리잡고 있어 이색적인 데이트를 즐길 수 있습니다.
						</font>
						</td>
					</tr>
					<tr>
						<td class="pntitle">
							<font size="2" face="빙그레체">이전글</font></td>
						<td colspan="2" class="subject2">
							<a href="#"><font size="2" face="빙그레체" color="#5B5C8F">
							[서울] 남산 N 타워
							</font></a>
						</td>
					</tr>
					</tbody>
				</table>
			</div>
		</div>	
        <!-- 가운데(내용) 영역 끝 -->

	<jsp:include page="../assets/inc/footer.jsp" />
	
	<!-- Javascript -->
	<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
	
</body>
</html>