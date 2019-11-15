<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<jsp:include page="../assets/inc/css.jsp" />


<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/GD/Find/CheckId.css">

<script>

	/* 스크립트 추가 작성란  */
	
</script>

<meta charset="utf-8" />
<title>연-결</title>
</head>
<body>
	<jsp:include page="../assets/inc/top.jsp" />

<!-- 상단 이미지 ( 다른 이미지 저장 시 src 변경 이름 ) -->
	<div class="boximg">
		<img src="${pageContext.request.contextPath}/assets//img/question1.png" alt="연-결"
			class="img-responsive" />
	</div>
	<!-- 상단 이미지 끝 -->


	<!-- 변경사항  -->


	<!-- 상단 이미지 ( 다른 이미지 저장 시 src 변경 이름 ) -->

	<!-- 상단 이미지 끝 -->

	<div class="col-md-2">
		<!-- 패널 타이틀1 -->
		<div class="left sidebar1">
			<h3 class="title">회원가입</h3>
				<!-- 사이드바 메뉴목록1 -->
				<div class="list-group">
				<a href="${pageContext.request.contextPath}/_join/join1_HG.jsp" class="list-group-item">회원가입</a> <a href="${pageContext.request.contextPath}/_login/login_HG.jsp"
						class="list-group-item">로그인</a> <a href="${pageContext.request.contextPath}/FindId_GD.jsp"
						class="list-group-item btncolor">ID/PW 찾기</a>
			</div>
		</div>
	</div>


	
	<h3 class="col-md-10">아이디 찾기</h3>
		<div class="col-md-10 text1">
			<h5>아이디를 확인하고 로그인 해주세요.</h5>
	</div>

	<div class="col-md-9 content">
<hr />


		
		
		<div id="show_id">
		<% 
		
		String id = "hello";
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("user_name");
		
		
		%>
		<%=name %> 회원 님의 아이디는 <%=id %> 입니다.
		
		
		</div>
		<div id="btn">
					<br />
					<br />
					<button type="button" ><a href="${pageContext.request.contextPath}/_login/login_HG.jsp">로그인</a></button>
					<button type="button" ><a href="${pageContext.request.contextPath}/FindPw_GD.jsp">비밀번호찾기</a></button>


		</div>
	

</div>






		<!-- 내용 작성  -->




	<!-- 변경 사항 -->

	<jsp:include page="../assets/inc/footer.jsp" />
</body>
</html>