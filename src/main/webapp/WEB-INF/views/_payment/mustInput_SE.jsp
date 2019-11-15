<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<jsp:include page="../assets/inc/css.jsp" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/GD/Payment/mustInput.css">

<script>

$(document).ready(function() {
	$("#btn1").click(function(){
		
		if($("#profile_img").val() == ""){
			alert("프로필사진을 선택해주세요");
		}else if($("#height").val() == ""){
			alert("키를 선택해주세요");
		} else if($("#blood").val() == ""){
			alert("혈액형을 선택해주세요");
		} else if($("#place").val() == ""){
	  		alert("데이트선호장소를 선택해주세요");
	  		return false;
	  	} else if($("#style").val() == ""){
	  		alert("선호스타일을 선택해주세요");
	  		return false;
	  	} else if($("#personality").val() == ""){
	  		alert("선호성격을 선택해주세요");
	  		return false;
	  	} else if($("input[id=income]:checked").val() == ""){
	  		alert("연봉을 선택해주세요");
	  		return false;
	  	} else if(confirm("결제페이지로 이동하시겠습니까?") == true){
			location.href="${pageContext.request.contextPath}/_payment/payment_GD.do";
		} else {
			return;
		}
		
	});

});
	
</script>

<meta charset="utf-8" />
<title>연-결</title>
</head>
<body>
	<jsp:include page="../assets/inc/top.jsp" />


	<!-- 상단 이미지 ( 다른 이미지 저장 시 src 변경 이름 ) -->
	<div class="boximg">
		<img src="${pageContext.request.contextPath}/assets/img/mustinputImg.jpg" alt="연-결"
			class="img-responsive" />
	</div>
	<!-- 상단 이미지 끝 -->

	<div class="col-md-2">
		<!-- 패널 타이틀1 -->
		<div class="left sidebar1">
			<h3 class="title">유료 결제</h3>
			<!-- 사이드바 메뉴목록1 -->
			<div class="list-group">
				<a href="#" class="list-group-item btncolor">필수 입력 항목</a> <a href="#"
					class="list-group-item">결제 수단 선택</a> <a href="#"
					class="list-group-item">결제 완료</a>
			</div>
		</div>
	</div>


	<h3 class="col-md-10">정회원 필수 입력 항목</h3>
	<div class="col-md-10 text1">
		<h5>추가 정보를 입력해주세요.</h5>
	</div>

	<div class="col-md-9 content">
		<table class="table table-bordered">
			<tbody>
				<tr>
					<th id="title">프로필사진</th>
					<th><input type="file" id="profile_img"></th>
					<th id="title">키</th>
					<th><select id="height">
							<option value="">--------선택--------</option>
							<option value="140">150cm이하</option>
							<option value="150">151~160cm</option>
							<option value="160">161~170cm</option>
							<option value="170">171~180cm</option>
							<option value="180">181cm이상</option>
					</select></th>
				</tr>

				<tr>
					<th id="title">혈액형</th>
					<th><select id="blood">
							<option value="">--------선택--------</option>
							<option value="A">A형</option>
							<option value="B">B형</option>
							<option value="AB">AB형</option>
							<option value="O">O형</option>
					</select></th>
					<th id="title">데이트선호장소</th>
					<th><select id="place">
							<option value="">--------선택--------</option>
							<option value="1">서울</option>
							<option value="2">경기도</option>
							<option value="3">강원도</option>
							<option value="4">충청도</option>
							<option value="5">전라도</option>
							<option value="6">경상도</option>
							<option value="7">제주도</option>
					</select></th>
				</tr>
				<tr>
					<th id="title">선호스타일</th>
					<th><select id="style">
							<option value="">--------선택--------</option>
							<option value="cute">귀여움</option>
							<option value="man">남성스러움</option>
							<option value="woman">여성스러움</option>
							<option value="thin">마름</option>
							<option value="chubby">통통</option>
					</select></th>
					<th id="title">선호성격</th>
					<th><select id="personality">
							<option value="">--------선택--------</option>
							<option value="extrovert">외향적</option>
							<option value="introvert">내향적</option>
							<option value="emotional">감성적</option>
							<option value="intuitive">직관적</option>
							<option value="tender">자상함</option>
					</select></th>
				</tr>
				<tr>
					<th id="title">연봉</th>
					<th colspan="3"><input type="radio" id="income"/>
						3000 이하&nbsp;&nbsp;&nbsp; <input type="radio" name="income" checked />
						5000 이하&nbsp;&nbsp;&nbsp; <input type="radio" name="income"/>
						7000 이하&nbsp;&nbsp;&nbsp; <input type="radio" name="income" />
						1억 이상</th>
				</tr>

			</tbody>
		</table>

		<div id="btn">
			<button class="btn btn-default" id="btn1">결제페이지로
				이동</button>
		</div>

	</div>


	<!-- 변경 사항 -->

<jsp:include page="../assets/inc/footer.jsp" />
</body>
</html>