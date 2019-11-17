<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html lang="ko">
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>연-결</title>
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

<link
	href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap"
	rel="stylesheet">

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

<link rel="stylesheet" type="text/css" href="main1.css">
<!-- 시각적 확인을 위한 CSS 적용 -->
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

/* 모든 링크의 밑줄 제거
      ------------------------------------*/
a {
	text-decoration: none;
	color: #222;
}

a:hover {
	text-decoration: none;
}

/* 모든 목록정의 초기화. -여백은 6,7라인에서 제거했으므로 생략
      ------------------------------------*/
ul, ol {
	list-style: none;
}

#user_name_box {
	width: 150px;
	background-color: #f73478;
	color:white;
	text-align:center;
}

.user_gender_select {
	width: 70px;
	background-color: #f73478;
	color:white;
	text-align:center;
}

#user_gender_box {
	width: 70px;
	background-color: #f73478;
	color:white;
	text-align:center;
}

#user_age_box {
	width: 70px;
	background-color: #f73478;
	color:white;
	text-align:center;
}

#user_address_box {
	width: 70px;
	background-color: #f73478;
	color:white;
	text-align:center;
}

#user_email_box {
	width: 70px;
	background-color: #f73478;
	color:white;
	text-align:center;
}

#email_select_box {
	width: 80px;
	background-color: #f73478;
	color:white;
	text-align:center;
}

#user_text_box {
	width: 464px;
	height: 300px;
}

#user_text_box1 {
	background-color: #f73478;
	color:white;
	text-align:center;
}

table {
	margin-top: 20px;
}

.container {
	text-align: center;
}
</style>
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	function add() {
		if (confirm("1:1문의 글을 등록하시겠습니까?") == true) {
			alert("1:1문의 등록이 완료되었습니다.");
		} else {
			return;
		}
		self.close();
	}

	function cancel() {
		if (confirm("정말 취소하시겠습니까?") == true) {
			alert("취소되었습니다.");
		} else {
			return;
		}
		self.close();
	}
	function cancel1() {
		self.close();
	}
</script>
</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0"
	marginheight="0" onLoad="parent.resizeTo(650,720)">

	<div class="col-md-6 container">
		<!-- col-md-12 영역 -->
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true" onclick="cancel1()">&times;</button>
			<h4 class="modal-title" id="myModalLabel">무료상담신청</h4>
		</div>

		<!-- 내용 -->
		<div class="modal-body">
			<table>
				<tr>
					<td class="col-md-3" style="width: 70px;" id="user_name_box">이름</td>
					<td class="col-md-3"><input type="text"></td>
					<td class="col-md-3 user_gender_select">성별</td>
					<td class="col-md-3"><input type="radio" name="user_gender"
						value="1"> <label type='submit'>남</label> <input
						type="radio" name="user_gender" value="2"> <label
						type='submit'>여</label></td>
				</tr>
			</table>
			<table>
				<tr>
					<td class="col-md-3" id="user_age_box">나이</td>
					<td class="col-md-3 dropdown clearfix"><select name='u_year'
						style="width: 150px; height: 25px;">
							<option value=''>선택하세요</option>
							<option value='96'>24세 [96년생]</option>
							<option value='95'>25세 [95년생]</option>
							<option value='94'>26세 [94년생]</option>
							<option value='93'>27세 [93년생]</option>
							<option value='92'>28세 [92년생]</option>
							<option value='91'>29세 [91년생]</option>
							<option value='90'>30세 [90년생]</option>
							<option value='89'>31세 [89년생]</option>
							<option value='88'>32세 [88년생]</option>
							<option value='87'>33세 [87년생]</option>
							<option value='86'>34세 [86년생]</option>
							<option value='85'>35세 [85년생]</option>
							<option value='84'>36세 [84년생]</option>
							<option value='83'>37세 [83년생]</option>
							<option value='82'>38세 [82년생]</option>
							<option value='81'>39세 [81년생]</option>
							<option value='80'>40세 [80년생]</option>
							<option value='79'>41세 [79년생]</option>
							<option value='78'>42세 [78년생]</option>
							<option value='77'>43세 [77년생]</option>
							<option value='76'>44세 [76년생]</option>
							<option value='75'>45세 [75년생]</option>
							<option value='74'>46세 [74년생]</option>
							<option value='73'>47세 [73년생]</option>
							<option value='72'>48세 [72년생]</option>
							<option value='71'>49세 [71년생]</option>
							<option value='70'>50세 [70년생]</option>
							<option value='69'>51세 [69년생]</option>
							<option value='68'>52세 [68년생]</option>
							<option value='67'>53세 [67년생]</option>
							<option value='66'>54세 [66년생]</option>
							<option value='65'>55세 [65년생]</option>
							<option value='64'>56세 [64년생]</option>
							<option value='63'>57세 [63년생]</option>
							<option value='62'>58세 [62년생]</option>
							<option value='61'>59세 [61년생]</option>
							<option value='60'>60세 [60년생]</option>
							<option value='59'>61세 [59년생]</option>
							<option value='58'>62세 [58년생]</option>
							<option value='57'>63세 [57년생]</option>
							<option value='56'>64세 [56년생]</option>
							<option value='55'>65세 [55년생]</option>
					</select></td>
					<td class="col-md-3" id="user_address_box">거주지</td>
					<td class="col-md-3"><select
						style="width: 150px; height: 25px;"><option value=''>선택하세요</option>
							<option value='01'>서울</option>
							<option value='08'>경기</option>
							<option value='18'>수원</option>
							<option value='05'>인천</option>
							<option value='09'>강원</option>
							<option value='02'>부산</option>
							<option value='03'>대구</option>
							<option value='04'>광주</option>
							<option value='06'>대전</option>
							<option value='07'>울산</option>
							<option value='10'>충북</option>
							<option value='11'>충남</option>
							<option value='12'>경북</option>
							<option value='13'>경남</option>
							<option value='14'>전북</option>
							<option value='15'>전남</option>
							<option value='16'>제주</option>
							<option value='17'>해외</option></select></td>
				</tr>
			</table>
			<table>
				<tr>
					<td class="col-md-3 " id="user_email_box">이메일</td>
					<td class="col-md-6"><input type="text">@<input
						type="text"></td>

					<td class="col-md-3 dropdown clearfix"><select style="width: 110px; height: 25px;">
							<option>선택하세요</option>
							<option type="dropdown" value="naver" name="user_email_select">naver.com</option>
							<option type="dropdown" value="daum" name="user_email_select">daum.net</option>
							<option type="dropdown" value="nate" name="user_email_select">nate.com</option>
							<option type="dropdown" value="hanmali" name="user_email_select">hanmail.net</option>
							<option type="dropdown" value="yahoo" name="user_email_select">yahoo.co.kr</option>
							<option type="dropdown" value="user_wirte">직접입력</option>
					</select></td>
				</tr>
			</table>
			<table>
				<tr>
					<td class="col-md-3" style="width: 70px;" id="user_text_box1">내용</td>
					<td class="col-md-9"><input type="text" id="user_text_box"></td>
				</tr>
			</table>
		</div>
		<button type="button" class="label" onclick="add()"
			style="background-color: #fa73a1">신청하기</button>
		<button type="button" class="label" onclick="cancel()"
			style="background-color: #fa73a1">취소</button>
	</div>
	<!-- Javascript -->
	<script src="../assets/js/jquery.min.js"></script>
	<script src="../assets/js/bootstrap.min.js"></script>


</body>
</html>