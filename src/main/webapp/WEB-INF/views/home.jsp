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


<title>연-결</title>




<!-- 모바일 웹 페이지 설정 -->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/assets/img/footerMain.PNG" />
<link rel="apple-touch-icon-precomposed"
	href="${pageContext.request.contextPath}/assets/img/footerMain.PNG" />

<!-- bootstrap -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />


<!-- Main CSS 링크 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/Index1.css">


<!-- 나눔고딕 웹 폰트 적용 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/nanumfont.css" />

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

<!-- 구글 폰트 링크 -->
<link
	href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Oswald&display=swap"
	rel="stylesheet">

<!-- 플러그인 CSS 링크 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/plugins/aos/aos.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/plugins/animate/animate.css" />


<meta charset="utf-8" />
<title>연-결</title>
</head>
<body>
	<div class="container">
		<!-- col-md-12 영역 -->

		<div class="row">
			<div class="col-md-4"></div>

			<!-- 4 / 4 / 4 로 나눔 -->
			<div class="col-md-4">

				<!-- 메인 로고 -->
				<h1 class="logo">
					<a href="${pageContext.request.contextPath}"><img
						src="${pageContext.request.contextPath}/assets/img/Mainlogo11.PNG"
						alt="연-결"></a>
				</h1>
				<!-- 메인로고 끝 -->
			</div>

			<!-- 로그인 -->
			<div class="col-md-4">
				<ul id="user">
					<li><a
						href="${pageContext.request.contextPath}/_login/login_HG.jsp">LOGIN</a></li>
					<li><a
						href="${pageContext.request.contextPath}/_join/join1_HG.jsp">SIGN
							UP</a></li>
				</ul>
			</div>
			<!-- 로그인 끝 -->
		</div>
		<!-- 상단 영역 끝 -->


		<!-- 카테고리 -->
		<div id="top_menu">
			<div id="top_menu_m">
				<ul>
					<li class="lnb_num1"><a href="#">연-결 소개</a></li>
					<li class="lnb_num1"><a href="#">서비스 안내</a></li>
					<li class="lnb_num1"><a href="#">연-결 코치</a></li>
					<li class="lnb_num1"><a href="#">연-결 테스트</a></li>
					<li class="lnb_num1"><a href="#">My 연-결</a></li>
				</ul>
			</div>
		</div>

		<div id="top_menu_m2">
			<div class="wp_snbonly">
				<ul class="lnb2_ul">
					<li><a href="_info/IntroWebsite_YB.jsp">사이트 소개</a></li>
					<li><a href="_info/Greetings_YB.jsp">연-결 인사말</a></li>
					<li><a href="_info/manager_HG.jsp">커플 매니저</a></li>
					<li><a href="_info/story_SE.jsp">연결 성혼 Story</a></li>
					<li><a href="_info/notice_SE.jsp">공지사항</a></li>
					<li><a href="_info/partner_HG.jsp">연-결 파트너</a></li>
					<li><a href="_info/map_GD.jsp">오시는 길</a></li>
				</ul>

				<ul class="lnb2_ul">
					<li><a
						href="${pageContext.request.contextPath}_service/ServiceProcedures_YB.do">서비스
							이용절차</a></li>
					<li><a href="_service/MembershipRegisGuide_YB.jsp">회원가입 안내</a></li>
					<li><a
						href="${pageContext.request.contextPath}/_service/MemberLevel.do">회원등급
							안내</a></li>
					<li><a href="_service/specialservice_YH.jsp">스페셜 서비스</a></li>
					<li><a href="_service/MemberStatus_YB.jsp">회원현황</a></li>
				</ul>

				<ul class="lnb2_ul">
					<li><a href="_coach/meetingTip_GD.jsp">미팅성공전략 TIP</a></li>
					<li><a href="_coach/loveColumn_GD.jsp">LOVE 컬럼</a></li>
					<li><a href="_coach/DatingCourse_YB.jsp">데이트 코스</a></li>
					<li><a href="_coach/review_SE.jsp">연-결 만남 후기</a></li>
					<li><a href="_coach/QnA_SE.jsp">연결 Q &amp; A</a></li>
				</ul>
				<ul class="lnb2_ul">
					<li><a href="_test/propensity1_HG.jsp">연애성향 테스트</a></li>
					<li><a href="_test/idealtype_HG.jsp">이상형 찾기</a></li>
					<li><a href="_test/lovescore1_HG.jsp">나의 연애 매력</a></li>
				</ul>
				<ul class="lnb2_ul">
					<li><a href="_mypage/myInfo_GD.jsp">My 현황</a></li>
					<li><a href="_mypage/search_SE.jsp">인연 찾기</a></li>
					<li><a href="_mypage/1_1questionEmpty_YH.jsp">1:1문의</a></li>
					<li><a href="_mypage/Ex-MatchingRecord_YB.jsp">매칭 기록 보기</a></li>
					<li><a href="_mypage/personal_information1_HG.jsp">개인정보 수정</a></li>
					<li><a href="_mypage/withdrawal1_HG.jsp">회원탈퇴</a></li>
				</ul>
			</div>
		</div>
		<!-- 카테고리 끝 -->

		<!-- 사이드바 메뉴 -->
		<div class="sidebar">
			<ul id="sidebar_menu">

				<li><a
					href="${pageContext.request.contextPath}/assets/_payment/mustInput_SE.jsp"><img
						src="${pageContext.request.contextPath}/assets/img/결제하기1.png"
						width="95px" height=""></a></li>
				<li><a href="_coach/QnA_SE.jsp"><img
						src="${pageContext.request.contextPath}/assets/img/문의하기1.png"
						width="95px" height=""></a></li>
				<li><a href="_mypage/1_1questionEmpty_YH.jsp"><img
						src="${pageContext.request.contextPath}/assets/img/1_1문의1.png"
						width="95px" height=""></a></li>
				<li><a href="_info/map_GD.jsp"><img
						src="${pageContext.request.contextPath}/assets/img/오시는길1.png"
						width="95px" height=""></a></li>
				<li><a href="#"><img
						src="${pageContext.request.contextPath}/assets/img/전화번호.png"
						width="95px" height=""></a></li>
			</ul>
		</div>
		<!-- 사이드바 메뉴 끝 -->



		<!-- 캐러셀 내용 영역 -->
		<div class="caousel_evnet">
			<div id="carousel-example-generic" class="carousel slide"
				data-ride="carousel">

				<!-- 현재 위치 표시 -->
				<ol class="carousel-indicators">
					<li data-target="#carousel-example-generic" data-slide-to="0"
						class="active"></li>
					<li data-target="#carousel-example-generic" data-slide-to="1"></li>
					<li data-target="#carousel-example-generic" data-slide-to="2"></li>
				</ol>

				<!-- 캐러셀 내용 영역 -->
				<div class="carousel-inner">
					<!-- 항목 (1) -->
					<div class="item active">
						<img
							src="${pageContext.request.contextPath}/assets/img/mainImage.jpg"
							alt="슬라이더(1)">
						<div class="carousel-caption" data-aos="fade-up"
							data-aos-offset="100" data-aos-easing="ease-in-sine"
							data-aos-duration="600">
							<h1>특별한 만남</h1>
							<p>연-결 과 함께 하세요.</p>
							<a href="_service/MemberStatus_YB.jsp"><img
								src="${pageContext.request.contextPath}/assets/img/image경로.png"
								style="width: 90px; height: 60px;"></a>

						</div>
					</div>

					<!-- 항목 (2) -->
					<div class="item">
						<img src="${pageContext.request.contextPath}/assets/img/54456.JPG"
							alt="슬라이더(2)">
						<div class="carousel-caption">

							<a href="_info/story_SE.jsp"><img
								src="${pageContext.request.contextPath}/assets/img/image경로.png"
								style="width: 90px; height: 60px;"></a>

						</div>
					</div>

					<!-- 항목 (3) -->
					<div class="item">
						<img src="${pageContext.request.contextPath}/assets/img/111.JPG"
							alt="슬라이더(3)">
						<div class="carousel-caption">
							<h1>당신을 위한 품격있는 만남 연-결</h1>

							<a href="_coach/review_SE.jsp"><img
								src="${pageContext.request.contextPath}/assets/img/image경로.png"
								style="width: 90px; height: 60px;"></a>
						</div>
					</div>
				</div>
				<!-- // 내용영역 구성 -->

				<!-- 이동 버튼 -->
				<a class="left carousel-control" href="#carousel-example-generic"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left"></span>
				</a> <a class="right carousel-control" href="#carousel-example-generic"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right"></span>
				</a>

			</div>
		</div>
		<!-- 메인 이미지 캐러셀 끝 -->


		<!-- information -->
		<div class="col-md-12 ">
			<h1 id="line_text">INFORMATION</h1>
		</div>
		<!-- information 끝 -->
		<hr class="line">
		<!-- 소개 / 가입안내 / 공지사항 /스페셜서비스 박스 -->
		<div class="row">
			<div class="col-md-3 text-center" id="information_box1">
				<ul>
					<li><a
						href="${pageContext.request.contextPath}/assets/_info/IntroWebsite_YB.jsp"><img
							src="${pageContext.request.contextPath}/assets/img/
					Introduce2
					.jpg"
							width="265px" height="265px"></a></li>
				</ul>
			</div>
			<div class="col-md-3 text-center" id="information_box2">
				<ul>
					<li><a
						href="${pageContext.request.contextPath}/assets/_service/MembershipRegisGuide_YB.jsp"><img
							src="${pageContext.request.contextPath}/assets/img/join2.jpg"
							width="265px" height="265px"></a></li>
				</ul>
			</div>
			<div class="col-md-3 text-center" id="information_box3">
				<ul>
					<li><a
						href="${pageContext.request.contextPath}/assets/_service/specialservice_YH.jsp"><img
							src="${pageContext.request.contextPath}/assets/img/specialservice.jpg"
							width="265px" height="265"></a></li>
				</ul>
			</div>
			<div class="col-md-3 text-center" id="information_box4">
				<ul>
					<li><a
						href="${pageContext.request.contextPath}/assets/_service/ServiceProcedures_YB.jsp"><img
							src="${pageContext.request.contextPath}/assets/img/연결서비스안내1.jpg"
							width="265" height="265px"></a></li>
				</ul>
			</div>
		</div>

		<!-- 소개 / 가입안내 / 이상형 찾기 / 스페셜서비스 박스 끝 -->
		<!-- event 글씨 -->
		<div class="col-md-12">
			<h1 id="line_text">EVENT</h1>
		</div>
		<!-- event 글씨끝 -->
		<hr class="line">
		<!-- 공지사항 / 이벤트 / 고객센터 박스 -->
		<div class="row">
			<div class="abc" data-aos="fade-up" data-aos-offset="100"
				data-aos-easing="ease-in-sine" data-aos-duration="600">
				<div class="col-md-4 text-center event2_box_1">
					<ul>
						<li><a
							href="${pageContext.request.contextPath}/assets/_info/noticeRead1_SE.jsp"><img
								src="${pageContext.request.contextPath}/assets/img/이벤트3.jpg"
								width="300px" height="300px"></a></li>
					</ul>
				</div>

			</div>
			<div class="abc" data-aos="fade-up" data-aos-offset="100"
				data-aos-easing="ease-in-sine" data-aos-duration="800">
				<div class="col-md-4 text-center event2_box_1">
					<ul>
						<li><a
							href="${pageContext.request.contextPath}/assets/_info/noticeRead2_SE.jsp"><img
								src="${pageContext.request.contextPath}/assets/img/이벤트4.jpg"
								width="300px" height="300px"></a></li>
					</ul>
				</div>
			</div>
			<div class="abc" data-aos="fade-up" data-aos-offset="100"
				data-aos-easing="ease-in-sine" data-aos-duration="1000">
				<div class="col-md-4 text-center event2_box_1">
					<ul>
						<li><a
							href="${pageContext.request.contextPath}/assets/_test/idealtype_HG.jsp"><img
								src="${pageContext.request.contextPath}/assets/img/이상형찾기1.jpg"
								width="300px" height="300px"></a></li>
					</ul>
				</div>
			</div>
		</div>

		<!-- 이상형 찾기 / 이벤트 / 고객센터 박스 끝 -->

		<div class="col-md-12">
			<h1 id="line_text">MANAGER</h1>
		</div>
		<hr class="line">

		<div class="managet_introduce">
			<div class="abc" data-aos="fade-up" data-aos-offset="100"
				data-aos-easing="ease-in-sine" data-aos-duration="1400">
				<div class="col-md-2 manager_box">
					<ul>
						<li><img
							src="${pageContext.request.contextPath}/assets/img/gd.gif"
							width="200px" height="200px">
							<p class="manager_box_font">
								연-결 매니저 : 박경동<br> 010-1234-5678
							</p> <a href="${pageContext.request.contextPath}/_index/counsel.do"
							onClick="window.open(this.href, '_blank', 'width=600, height=720,scrollbars=yes'); return false;"
							style="color: white;"><button type="button" class="label">
									상담신청하기</button></a></li>
					</ul>
				</div>
			</div>
			<div class="abc" data-aos="fade-up" data-aos-offset="100"
				data-aos-easing="ease-in-sine" data-aos-duration="1200">
				<div class="col-md-2 manager_box">
					<ul>
						<li><img
							src="${pageContext.request.contextPath}/assets/img/hg.gif"
							width="200px" height="200px">
							<p class="manager_box_font">
								연-결 매니저 : 남희권<br> 010-4220-4220
							</p> <a href="${pageContext.request.contextPath}/_index/counsel.do"
							onClick="window.open(this.href, '_blank', 'width=600, height=720,scrollbars=yes'); return false;"
							style="color: white;"><button type="button" class="label">
									상담신청하기</button></a></li>
					</ul>
				</div>
			</div>
			<div class="abc" data-aos="fade-up" data-aos-offset="100"
				data-aos-easing="ease-in-sine" data-aos-duration="1000">
				<div class="col-md-2 manager_box">
					<ul>
						<li><img
							src="${pageContext.request.contextPath}/assets/img/se.gif"
							width="200px" height="200px">
							<p class="manager_box_font">
								연-결 매니저 : 배세은<br> 010-3210-3210
							</p> <a href="${pageContext.request.contextPath}/_index/counsel.do"
							onClick="window.open(this.href, '_blank', 'width=600, height=720,scrollbars=yes'); return false;"
							style="color: white;"><button type="button" class="label">
									상담신청하기</button></a></li>
					</ul>
				</div>
			</div>
			<div class="abc" data-aos="fade-up" data-aos-offset="100"
				data-aos-easing="ease-in-sine" data-aos-duration="800">
				<div class="col-md-2 manager_box">
					<ul>
						<li><img
							src="${pageContext.request.contextPath}/assets/img/yb.gif"
							width="200px" height="200px">
							<p class="manager_box_font">
								연-결 매니저 : 정유빈<br> 010-5678-5678
							</p> <a href="${pageContext.request.contextPath}/_index/counsel.do"
							onClick="window.open(this.href, '_blank', 'width=600, height=720,scrollbars=yes'); return false;"
							style="color: white;"><button type="button" class="label">
									상담신청하기</button></a></li>
					</ul>
				</div>
			</div>
			<div class="abc" data-aos="fade-up" data-aos-offset="100"
				data-aos-easing="ease-in-sine" data-aos-duration="600">
				<div class="col-md-2 manager_box">
					<ul>
						<li><img
							src="${pageContext.request.contextPath}/assets/img/yh.gif"
							width="200px" height="200px">
							<p class="manager_box_font">
								연-결 매니저 : 최유한<br> 010-1234-7890
							</p> <a href="${pageContext.request.contextPath}/_index/counsel.do"
							onClick="window.open(this.href, '_blank', 'width=600, height=720,scrollbars=yes'); return false;"
							style="color: white;"><button type="button" class="label">
									상담신청하기</button></a></li>
					</ul>
				</div>
			</div>


		</div>

		<div class="col-md-12">
			<h1 id="line_text">HOT &amp; ISSUE</h1>
		</div>
		<hr class="line">





		<div class="col-md-12">
			<div class="col-md-6 hot_issue_image" data-aos="fade-right"
				data-aos-offset="100" data-aos-easing="ease-in-sine"
				data-aos-duration="600">
				<img
					src="${pageContext.request.contextPath}/assets/img/hot_issue.jpg"
					width="500px" height="300px" style="float: left;">
			</div>
			<div class="table-responsive" data-aos="fade-left"
				data-aos-offset="100" data-aos-easing="ease-in-sine"
				data-aos-duration="600">
				<h3 class="col-md-4 ">연-결 NEWS</h3>
				<button
					style="float: right; width: 65px; margin-right: 15px; margin-top: 30px;"
					type="button"
					onclick="location='${pageContext.request.contextPath}/assets/_info/notice_SE.jsp'"
					class="btn btn-default btn-xs col-md-2" id="plus_icon">
					<span class="glyphicon glyphicon-plus"></span> 더 보기
				</button>
				<div class="col-md-6 table-responsive">
					<table class="table table-striped table-bordered table-hover">
						<thead>
							<tr>

								<th>제목</th>
								<th id="date">등록일</th>
							</tr>
						</thead>
						<tbody>
							<tr>

								<td
									onclick="location='${pageContext.request.contextPath}/assets/_info/noticeRead1_SE.jsp'"
									style="cursor: pointer;">'창립 10주년 기념' 적극적인 서비스로 높은 성혼율 달성</td>
								<td id="date">2019.10.22</td>
							</tr>
							<tr>

								<td
									onclick="location='${pageContext.request.contextPath}/assets/_info/noticeRead2_SE.jsp'"
									style="cursor: pointer;">신원인증 강화와 적극적인 서비스 제공으로 고객만족 실현</td>
								<td id="date">2019.10.15</td>
							</tr>
							<tr>

								<td>설립 10주년 기념 '고객감사 빅 이벤트' 진행</td>
								<td id="date">2019.09.30</td>
							</tr>
							<tr>

								<td>'COCKTAIL PARTY' 미팅파티 진행</td>
								<td id="date">2019.09.17</td>
							</tr>
							<tr>

								<td>'SUNSET CRUISE' 진행</td>
								<td id="date">2019.08.11</td>
							</tr>

						</tbody>
					</table>
				</div>
			</div>
		</div>


		<div class="hot_issue col-md-12">
			<div class="col-md-offset-6 hot_issue_image" data-aos="fade-left"
				data-aos-offset="100" data-aos-easing="ease-in-sine"
				data-aos-duration="600">

				<img
					src="${pageContext.request.contextPath}/assets/img/hot1_issue.jpg"
					width="500px" height="300px" style="float: right;">
			</div>
			<div class="table-responsive" data-aos="fade-right"
				data-aos-offset="100" data-aos-easing="ease-in-sine"
				data-aos-duration="600">
				<h3 class="col-md-5">연-결 성혼 Story</h3>
				<button type="button"
					onclick="location='${pageContext.request.contextPath}/assets/_info/story_SE.jsp'"
					class="btn btn-default btn-xs col-md-1"
					style="width: 65px; margin-left: 12px; margin-top: 30px;">
					<span class="glyphicon glyphicon-plus"></span> 더 보기
				</button>
				<div class="col-md-6 table-responsive">
					<table class="table table-striped table-bordered table-hover">
						<thead>
							<tr>

								<th>제목</th>
								<th id="date">등록일</th>
							</tr>
						</thead>
						<tbody>
							<tr>

								<td
									onclick="location='${pageContext.request.contextPath}/assets/_info/storyRead1_SE.jsp'"
									style="cursor: pointer;">오랜 기다림 끝에, 드디어 찾았어요!</td>
								<td id="date">2019.10.23</td>
							</tr>
							<tr>

								<td
									onclick="location='${pageContext.request.contextPath}/assets/_info/storyRead2_SE.jsp'"
									style="cursor: pointer;">조금 더 이해하면, 이렇게 사랑을 꽃 피울 수 있어요.</td>
								<td id="date">2019.10.17</td>
							</tr>
							<tr>

								<td>사랑한다면 상대방의 말에 먼저 귀 기울여주세요.</td>
								<td id="date">2019.10.13</td>
							</tr>
							<tr>

								<td>인연은 눈으로 찾는게 아니라 마음으로 알아가는 거랍니다.</td>
								<td id="date">2019.10.12</td>
							</tr>
							<tr>

								<td>송구커플, 11월 결혼 하다!</td>
								<td id="date">2019.10.09</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>


		<div class="col-md-12 footer">
			<ul>
				<li><a
					href="${pageContext.request.contextPath}/assets/_info/IntroWebsite_YB.jsp">회사소개</a>
					<div class="vi"></div></li>
				<li><a
					href="${pageContext.request.contextPath}/assets/_service/MembershipRegisGuide_YB.jsp">가입안내</a>
					<div class="vi"></div></li>
				<li><a
					href="${pageContext.request.contextPath}/assets/_service/ServiceProcedures_YB.jsp">서비스이용절차</a>
					<div class="vi"></div></li>
				<li><a
					href="${pageContext.request.contextPath}/assets/_info/map_GD.jsp">오시는길</a>
					<div class="vi"></div></li>
				<li><a
					href="${pageContext.request.contextPath}/assets/_info/partner_HG.jsp">연-결
						제휴 파트너</a>
					<div class="vi"></div></li>
				<li><a
					href="${pageContext.request.contextPath}/assets/_service/MemberStatus_YB.jsp">회원현황</a></li>
			</ul>
		</div>

		<div class="col-md-12 footer_information">
			<div class="col-md-offset-2 footer_information_image">
				<img
					src="${pageContext.request.contextPath}/assets/img/footerMain.PNG"
					width="150" height="150">
			</div>
			<br>서울특별시 서초구 서초대로77길 54 서초더블유타워 13층 <br>무료상담전화: 1588-1588
			<span class="vii"></span> FAX : 02-1234-1234 <span class="vii"></span>
			Email : ezen@ezen.co.kr <br> <br> 상호명: (주)연-결 연애정보 <span
				class="vii"></span> 대표 : 박경동 <br> 연-결 매니저 : 정유빈 <span
				class="vii"></span> 배세은 <span class="vii"></span> 최유한 <span
				class="vii"></span> 남희권 <br> <br>
			COPYRIGHT&copy;CONNECT_5.co.kr
		</div>


	</div>
	<!-- Javascript -->

	<!-- 플러그인 참조 스크립트 -->
	<script
		src="${pageContext.request.contextPath}/assets/assets/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/assets/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/plugins/animate/jquery.animatecss.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/plugins/aos/aos.js"></script>
	<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/Index1.js"></script>

	<!-- EVENT / HOT ISSUE 스크립트 -->
	<script type="text/javascript">
		$(function() {
			AOS.init();
		});
	</script>

	<!-- 사이드바 스크립트 -->
	<script type="text/javascript">
		$(function() {

			$(window).scroll(function() { // 브라우저에 스크롤이 발생하는 순간부터
				var curpos = $(window).scrollTop(); // 스크롤바의 상단 위치값+20 보관
				$("#sidebar_menu").stop().animate({
					"top" : curpos
				}); // 스카이메뉴의 상단위치값 애니
			});
		});
	</script>

	<!-- 카테고리 스크립트 -->
	<script type="text/javascript">
		$(document).ready(
				function() {
					$('#top_menu_m').mouseover(function() {
						$('#top_menu_m2').stop().animate({
							height : "350px"
						}, 300);
					});

					$('#top_menu_m2').mouseover(function() {
						$('#top_menu_m2').stop().animate({
							height : "350px"
						}, 300);
					});

					$('#top_menu_m').mouseout(function() {
						$('#top_menu_m2').stop().animate({
							height : "0px"
						}, 200);
					});

					$('#top_menu_m2').mouseout(function() {
						$('#top_menu_m2').stop().animate({
							height : "0px"
						}, 200);
					});

					function hide_menu() {
						$("#top_menu_m > ul > li").find("a")
								.removeClass("onon");
					}

					function show_menu() {
						$("#top_menu_m > ul > li").find("a")
								.removeClass("onon");
						$(this).find("a").addClass("onon");

					}

					function hide_menu2() {
						$("#top_menu_m > ul > li").find("a")
								.removeClass("onon");
					}

					function show_menu2() {
						var idx = $(".wp_snbonly > ul").index(this);
						$(".wp_snbonly > ul").find("a").removeClass("onon");

						$("#top_menu_m > ul > li").find("a")
								.removeClass("onon");
						$("#top_menu_m > ul > li").eq(idx).find("a").addClass(
								"onon");
					}

					$("#top_menu_m > ul > li").mouseover(show_menu).mouseout(
							hide_menu);
					$(".wp_snbonly > ul").mouseover(show_menu2).mouseout(
							hide_menu2);

					hide_menu();
					hide_menu2();
				});
	</script>


	<!-- INFORMATION 플러그인 스크립트 -->
	<script
		src="${pageContext.request.contextPath}/assets/plugins/animate/jquery.animatecss.min.js"></script>
	<script type="text/javascript">
		$(function() {
			// 페이지 실행 즉시 2초 동안 재생
			$("#information_box1").animateCSS('fadeIn', {
				duration : 2000
			});
			// 페이지 실행 0.7초 이후 2초동안 재생
			$("#information_box2").animateCSS('fadeIn', {
				duration : 2000,
				delay : 400
			});
			// 페이지 실행 1.4초 이후 2초동안 재생
			$("#information_box3").animateCSS('fadeIn', {
				duration : 2000,
				delay : 800
			});
			$("#information_box4").animateCSS('fadeIn', {
				duration : 2000,
				delay : 1200
			});
		});
	</script>
</body>
</html>