<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<jsp:include page="../assets/inc/css.jsp" />

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/GD/Mypage/mypage.css">

	


<script>
	/* 스크립트 추가 작성란  */
</script>

<meta charset="utf-8" />
<title>연-결</title>
</head>
<body>
<jsp:include page="../assets/inc/top.jsp" />



	<!-- 변경사항  -->


	<!-- 상단 이미지 ( 다른 이미지 저장 시 src 변경 이름 ) -->
	<div class="boximg">
		<img src="${pageContext.request.contextPath}/assets/img/question1.png" alt="연-결"
			class="img-responsive" />
	</div>
	<!-- 상단 이미지 끝 -->

	<div class="col-md-2">
		<!-- 패널 타이틀1 -->
		<div class="left sidebar1">
			<h3 class="title">My 연-결</h3>
			<!-- 사이드바 메뉴목록1 -->
			<div class="list-group">
				<a href="myInfo_GD.jsp" class="list-group-item btncolor">My현황</a> 
				<a href="search_SE.jsp"
					class="list-group-item">인연 찾기</a> <a href="1_1questionEmpty_YH.jsp"
					class="list-group-item">1:1 문의</a> <a href="Ex-MatchingRecord_YB.jsp"
					class="list-group-item">매칭 기록 보기 </a><a href="personal_information1_HG.jsp"
					class="list-group-item">개인정보수정</a> <a href="withdrawal1_HG.jsp"
					class="list-group-item">회원탈퇴</a>
			</div>
		</div>
	</div>

<h3 class="col-md-10">My 현황</h3>
	<div class="col-md-10 text1">
		<h5>연 - 결 마이페이지</h5>
		<hr />
	</div>

<hr />

	<div class="col-md-9 content">

		
	<p></p>
		<p id="level">
		나의 연-결 등급　
		<img src="${pageContext.request.contextPath}/assets/img/vip.PNG" id="level_icon"><span style=" font-weight: bold; color:#F73478; font-size:35px" id="level_text" />　V.I.P　</span>	
		
		<span style=" font-weight: bold; font-size: 1.3em; " id="name/">박경동 </span><span> 님의 잔여 매칭 횟수 </span><span style=" font-weight: bold; font-size: 1.3em;" id="count">5</span><span> 회 </span>
	</p>
	<div style="clear:both;"></div>	
		<hr />
		<h4>현재 매칭 상대</h4>
		<div class="state_matching">현재 진행중인 매칭이 없습니다.<p class="look_match"><a href="${pageContext.request.contextPath}/search_SE.do" id="lf_partner">내 연-결 찾기</a></p></div>
		<h4>데이트 신청</h4>
		<div class="request_date">현재 들어온 데이트 신청이 없습니다.</div>
		<h4>나의 매니저</h4>
		<table class="table table-bordered table-hover" >
			<tr>
				<td width="50px">
				 	<img src="${pageContext.request.contextPath}/assets/img/manager1.jpg" width="100px;" height:auto;>
				</td>
				<td>
					<span class="mg_name">아줌마&nbsp;<span class="job">상담 수석 실장</span></span>
					<p></p>
		<p>핸드폰 : <a href="#">010-4425-7773</a></p>
		이메일 : <span>azoomma@gmail.com</span>
				</td>
			</tr>

</table>

	
</div>


	<!-- 변경 사항 -->

	<jsp:include page="../assets/inc/footer.jsp" />
</body>
</html>