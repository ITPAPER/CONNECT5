<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<jsp:include page="../assets/inc/css.jsp" />


<title>my연-결_이전 매칭기록(MyPage_Ex-MatchingRecord)</title>

<!-- 시각적 확인을 위한 CSS 적용 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/YB/Mypage/Ex-MatchingRecord.css">


	<!-- 스크립트 추가 작성란 --> 
	<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script type="text/javascript">
	
</script>

<!-- 모바일 웹 페이지 설정 -->
		<link rel="shortcut icon" href="assets/ico/favicon.ico" />
		<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/assets/ico/apple-touch-icon-144-precomposed.png" />

		<!-- bootstrap -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />

		<!-- 나눔고딕 웹 폰트 적용 -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/nanumfont.css"/>

</head>
<body>
	<jsp:include page="../assets/inc/top.jsp" />



	<!-- 변경사항  -->


	<!-- 상단 이미지 ( 다른 이미지 저장 시 src 변경 이름 ) -->
	<div class="boximg">
		<img src="${pageContext.request.contextPath}/assets/img/매칭기록보기_상단.jfif" alt="연-결"
			class="img-responsive" />
	</div>
	<!-- 상단 이미지 끝 -->

	 <!-- 가운데 영역 -->
     <div class="col-md-2">
     	
     	<!-- 패널 타이틀1 -->
      	<div class="left_sidebar">
      		<h3 class="title">My 연-결</h3>
      		
      		<!-- 사이드바 메뉴목록1 -->
      		<div class="list-group">
	            <a href="${pageContext.request.contextPath}/./_mypage/myInfo_GD.do" class="list-group-item">My현황</a> 
				<a href="${pageContext.request.contextPath}/./_mypage/search_SE.do" class="list-group-item">인연 찾기</a> 
				<a href="${pageContext.request.contextPath}/./_mypage/1_1questionEmpty_YH.do" class="list-group-item">1:1 문의</a>
				<a href="${pageContext.request.contextPath}/./_mypage/Ex-MatchingRecord_YB.do" class="list-group-item btncolor">매칭 기록 보기</a> 
				<a href="${pageContext.request.contextPath}/./_mypage/personal_information1_HG.do" class="list-group-item">개인정보수정</a> 
				<a href="${pageContext.request.contextPath}/./_mypage/withdrawal1_HG.do" class="list-group-item">회원탈퇴</a>
            </div> 
        </div>
      </div>

		<!-- 내용 작성  -->
        <h3 class="col-md-10">매칭 기록 보기</h3><br />
        	<div class="col-md-10 text1">
				<h5>회원님의 이전 매칭 기록입니다.</h5>
			</div>
			
			<div class="col-md-10 content">	
				<div class="table-responsive">
					<table class="table table-striped table-bordered table-hover">
						<thead>
							<tr class="text-center">
								<th id="name">이름</th>
								<th id="birthdate">생년월일</th>
								<th id="height">신장</th>
								<th id="academicBackground">학력</th>
								<th id="job">직업</th>
							</tr>
						</thead>
						<tbody>
							<tr class="text-center">
								<td id="name">전지현</td>
								<td id="birthdate">1981.05.29</td>
								<td id="height">173</td>
								<td id="academicBackground">대학교 졸업</td>
								<td id="job">모델</td>
							</tr>
							<tr class="text-center">
								<td id="name">오연서</td>
								<td id="birthdate">1987.06.22</td>
								<td id="height">168</td>
								<td id="academicBackground">대학교 졸업</td>
								<td id="job">회사원</td>
							</tr>
							<tr class="text-center">
								<td id="name">김설현</td>
								<td id="birthdate">1995.01.03</td>
								<td id="height">167</td>
								<td id="academicBackground">OOO 졸업</td>
								<td id="job">웹개발자</td>
							</tr>
							<tr class="text-center">
								<td id="name">아이린</td>
								<td id="birthdate">1991.03.29</td>
								<td id="height">160</td>
								<td id="academicBackground">OOO 졸업</td>
								<td id="job">아티스트</td>
							</tr>
							<tr class="text-center">
								<td id="name">김태리</td>
								<td id="birthdate">1990.04.24</td>
								<td id="height">166</td>
								<td id="academicBackground">OOO 졸업</td>
								<td id="job">공무원</td>
							</tr>
							<tr class="text-center">
								<td id="name">배수지</td>
								<td id="birthdate">1994.10.10</td>
								<td id="height">168</td>
								<td id="academicBackground">OOO 졸업</td>
								<td id="job">건축가</td>
							</tr>
							<tr class="text-center">
								<td id="name">연우</td>
								<td id="birthdate">1996.08.01</td>
								<td id="height">165</td>
								<td id="academicBackground">OOO 졸업</td>
								<td id="job">교사</td>
							</tr>
							<tr class="text-center">
								<td id="name">박경리</td>
								<td id="birthdate">1990.07.05</td>
								<td id="height">170</td>
								<td id="academicBackground">OOO 졸업</td>
								<td id="job">은행원</td>
							</tr>
							<tr class="text-center">
								<td id="name">아리아나 그란데</td>
								<td id="birthdate">1993.06.26</td>
								<td id="height">153</td>
								<td id="academicBackground">OOO 졸업</td>
								<td id="job">팝아티스트</td>
							</tr>
							<tr class="text-center">
								<td id="name">박지효</td>
								<td id="birthdate">1997.02.01</td>
								<td id="height">162</td>
								<td id="academicBackground">OOO 졸업</td>
								<td id="job">디자이너</td>
							</tr>
						</tbody>
					</table>
					
						<ul class="pagination pagination-sm">
							<li class="disabled"><a href="#">&laquo;</a></li>
							<li class="active"><span>1 <span class="sr-only">(current)</span></span></li>
							<li><a href="${pageContext.request.contextPath}/_mypage/Ex-MatchingRecord2_YB.do"><span>2 <span class="sr-only">(current)</span></span></a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">&raquo;</a></li>
						</ul>
					
				</div>
			
				
				
			</div>
            <!-- 가운데(내용) 영역 끝 -->
            
	<!-- 변경 사항 -->

	<jsp:include page="../assets/inc/footer.jsp" />
	
	<!-- Javascript -->
	<script src="${pageContext.request.contextPath}/./assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/./assets/js/bootstrap.min.js"></script>
	
</body>
</html>