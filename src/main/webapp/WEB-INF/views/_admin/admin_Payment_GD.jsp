<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Grid</title>

<!-- 모바일 웹 페이지 설정 -->
<link rel="shortcut icon" href="../assets/ico/favicon.ico" />
<link rel="apple-touch-icon-precomposed"
	href="../assets/ico/apple-touch-icon-144-precomposed.png" />

<!-- bootstrap -->
<link rel="stylesheet" type="text/css"
	href="../assets/css/bootstrap.min.css" />

<!-- 나눔고딕 웹 폰트 적용 -->
<link rel="stylesheet" type="text/css"
	href="../assets/css/nanumfont.css" />

<!-- 반응형 웹을 지원하지 않을 경우 -->
<!-- <link rel="stylesheet" href="assets/css/non-responsive.css" /> -->

<!-- IE8 이하 버전 지원 -->
<!--[if lt IE 9]>
      <script type="text/javascript" src="assets/js/html5shiv.js"></script>
      <script type="text/javascript" src="assets/js/respond.min.js"></script>
   <![endif]-->

<!-- IE10 반응형 웹 버그 보완 -->
<!--[if gt IE 9]>
      <link rel="stylesheet" type="text/css" href="assets/css/ie10.css" />
      <script type="text/javascript" src="assets/js/ie10.js"></script>
   <![endif]-->

<!-- 시각적 확인을 위한 CSS 적용 -->

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/GD/Admin/payment.css">



<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>


<script type="text/javascript">
  
  	
         function levelcfm(){
            if (confirm("등급을 변경 하시겠습니까?") == true) {
         alert("등급이 변경 되었습니다.");
      } 
         }
</script>

</head>

<body>


	<div class="container">
		<div class="top">
			<div class="col-md-12 top_login">
				<p id="connect">
					admin 님 접속중
					<button type="submit" class="btn btn-xs">Logout</button>
				</p>
			</div>
		</div>


		<div class="col-md-2 sidebar1">
			<a href="admin_main_SE.jsp" class="list-group-item">대시보드</a> <a href="admin_userManager1_HG.jsp"
				class="list-group-item">회원관리</a> <a href="admin_userManagement_YH.jsp"
				class="list-group-item">게시판 관리</a> <a href="admin_userApply_YH.jsp"
				class="list-group-item">신청현황</a> <a href="admin_Question_SE.jsp" class="list-group-item">문의현황</a>
			<a href="admin_Payment_GD.jsp" class="list-group-item active">결제관리</a>

		</div>

		<div class="col-md-10 middle">
			<h2>결제 관리</h2>
		</div>


		<div class="col-md-4 searching_box">
			<ul id="key">
				<li><select name="keyField">
						<option value="0">---선택---</option>
						<option value="name">이름</option>
						<option value="id">아이디</option>
				</select> <input type="text" name="KeyWord" /> <input type="submit"
					id="s_btn" value="검색" /></li>
				<li><select id="start_year">
						<option value="">--년도--</option>
						<option value="start_2018">2018</option>
						<option value="start_2019">2019</option>
						<option value="start_2020">2020</option>
				</select> <select id="start_year">
						<option value="">--월--</option>
						<option value="start_1">1</option>
						<option value="start_2">2</option>
						<option value="start_3">3</option>
						<option value="start_1">4</option>
						<option value="start_2">5</option>
						<option value="start_3">6</option>
						<option value="start_1">7</option>
						<option value="start_2">8</option>
						<option value="start_3">9</option>
						<option value="start_1">10</option>
						<option value="start_2">11</option>
						<option value="start_3">12</option>
				</select> ~ <select id="start_year">
						<option value="">--년도--</option>
						<option value="last_2018">2018</option>
						<option value="last_2019">2019</option>
						<option value="last_2020">2020</option>
				</select> <select id="start_year">
						<option value="">--월--</option>
						<option value="last_1">1</option>
						<option value="last_2">2</option>
						<option value="last_3">3</option>
						<option value="last_4">4</option>
						<option value="last_5">5</option>
						<option value="last_6">6</option>
						<option value="last_7">7</option>
						<option value="last_8">8</option>
						<option value="last_9">9</option>
						<option value="last_10">10</option>
						<option value="last_11">11</option>
						<option value="last_12">12</option>
				</select> <input type="submit" id="datesearch_Btn" value="검색" /></li>

			</ul>
			
		</div>
		<br />
		<br />
		<div class="col-md-10 text_box">
			<table class="table table-striped table-bordered table-hover">
				<tr class="text-center">
					<td id="num">번호</td>
					<td>아이디</td>
					<td>이름</td>
					<td>결제수단</td>
					<td id="views">결제금액</td>
					<td id="date">결제일</td>
					<td>현재 등급</td>
					<td id="delete">등급</td>
					<td id="manager">매니저</td>
					<td>승인</td>
				</tr>
				<tr class="text-center">
					<td id="num">4</td>
					<td>yuhanJJaEung</td>
					<td onclick="location='#'" style="cursor: pointer;">박경동</td>
					<td>카드</td>
					<td id="">6,999,000</td>
					<td id="">2019-10-22</td>
					<td>일반</td>
					<td><select>
							<option value="bronze">브론즈</option>
							<option value="bronze">실버</option>
							<option value="bronze">골드</option>
							<option value="bronze">VIP</option>
					</select></td>
					
					<td><select>
							<option value="bronze">박경동</option>
							<option value="bronze">최유한</option>
							<option value="bronze">배세은</option>
							<option value="bronze">정유빈</option>
							<option value="bronze">남희권</option>
					</select></td>
					<td><button type="button" class="label label-warning"
							onclick="levelcfm()">확인</button></td>
				</tr>
				<tr class="text-center">
					<td id="num">3</td>
					<td>yuhanJJaEung</td>
					<td onclick="location='#'" style="cursor: pointer;">박경동</td>
					<td>카드</td>
					<td id="">6,999,000</td>
					<td id="">2019-10-22</td>
					<td>골드</td>
					<td><select>
							<option value="bronze">브론즈</option>
							<option value="bronze">실버</option>
							<option value="bronze">골드</option>
							<option value="bronze">VIP</option>
					</select></td>
					<td><select>
							<option value="bronze">박경동</option>
							<option value="bronze">최유한</option>
							<option value="bronze">배세은</option>
							<option value="bronze">정유빈</option>
							<option value="bronze">남희권</option>
					</select></td>
					<td><button type="button" class="label label-warning"
							onclick="levelcfm()">확인</button></td>
				</tr>
				<tr class="text-center">
					<td id="num">2</td>
					<td>yuhanJJaEung</td>
					<td onclick="location='#'" style="cursor: pointer;">박경동</td>
					<td>카드</td>
					<td id="">6,999,000</td>
					<td id="">2019-10-22</td>
					<td>실버</td>
					<td><select>
							<option value="bronze">브론즈</option>
							<option value="bronze">실버</option>
							<option value="bronze">골드</option>
							<option value="bronze">VIP</option>
					</select></td>
					<td><select>
							<option value="bronze">박경동</option>
							<option value="bronze">최유한</option>
							<option value="bronze">배세은</option>
							<option value="bronze">정유빈</option>
							<option value="bronze">남희권</option>
					</select></td>
					
					<td><button type="button" class="label label-warning"
							onclick="levelcfm()">확인</button></td>
				</tr>
				<tr class="text-center">
					<td id="num">1</td>
					<td>yuhanJJaEung</td>
					<td onclick="location='#'" style="cursor: pointer;">박경동</td>
					<td>카드</td>
					<td id="">6,999,000</td>
					<td id="">2019-10-22</td>
					<td>일반</td>
					<td><select>
							<option value="bronze">브론즈</option>
							<option value="bronze">실버</option>
							<option value="bronze">골드</option>
							<option value="bronze">VIP</option>
					</select></td>
					<td><select>
							<option value="bronze">박경동</option>
							<option value="bronze">최유한</option>
							<option value="bronze">배세은</option>
							<option value="bronze">정유빈</option>
							<option value="bronze">남희권</option>
					</select></td>
					<td><button type="button" class="label label-warning"
							onclick="levelcfm()">확인</button></td>
				</tr>

			</table>
			<ul class="pagination pagination-sm">
				<li class="disabled"><a href="#">&laquo;</a></li>
				<li class="active"><span>1 <span class="sr-only">(current)</span></span></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#">&raquo;</a></li>
			</ul>


		</div>
	</div>


	<!-- Javascript -->
	<script src="../assets/js/jquery.min.js"></script>
	<script src="../assets/js/bootstrap.min.js"></script>

</body>
</html>