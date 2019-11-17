<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<jsp:include page="../assets/inc/css.jsp" />



<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/GD/Find/CheckPw.css">





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
				<a href="${pageContext.request.contextPath}/_join/join1_HG.do"
						class="list-group-item ">회원가입</a> <a
						href="${pageContext.request.contextPath}/_login/login_HG.do"
						class="list-group-item">로그인</a> <a
						href="${pageContext.request.contextPath}/_findAccount/FindId_GD.do"
						class="list-group-item btncolor">ID/PW 찾기</a>
			</div>
		</div>
	</div>


	<h3 class="col-md-10">비밀번호 찾기</h3>
		<div class="col-md-10 text1">
			<h5>새로운 비밀번호를 설정해주세요.</h5>
	</div>

	<div class="col-md-9 content">







		<!-- 내용 작성  -->

<hr />
<div id="show_id">

		<% 
		
	
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("user_id");
		
		
		%>
		<%=id %> 계정의 비밀번호를 새롭게 설정해 주세요.
		
		
		</div>

				<div class="new_pwd">
					<label for="new_pwd">새로운 비밀번호     </label> <input type="text"
						id="new_pwd" name="new_pwd" size="20" />
				</div>
				<div class="check_pwd">
					<label for="text" >변경할 비밀번호     </label> <input
						type="text" id="check_pwd" name="user_email" size="20" />
						<br />
						
						<br> <button class="btn btn-default" onclick='move()' id=ok>확인 </button>
						<br />
				</div>
			


			
				
	</div>
	<script type="text/javascript">

	function move(){
		 
		alert("정상적으로 변경되었습니다.");
		document.location.href="${pageContext.request.contextPath}/_login/login_HG.do";
	 }

		
    </script>









	<!-- 변경 사항 -->

	<jsp:include page="../assets/inc/footer.jsp" />
</body>
</html>