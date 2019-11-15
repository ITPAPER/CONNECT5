<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8" />
</head>
<body>
	<div class="container">
		<!-- col-md-12 영역 -->

		<div class="row">
			<!-- 4 / 4 / 4 로 나눔 -->
			<div class="col-md-offset-4 col-md-4">

				<!-- 메인 로고 -->
				<h1 class="logo">
					<a href="../index.jsp"><img src="../img/Mainlogo11.PNG"
						alt="연-결"></a>
				</h1>
				<!-- 메인로고 끝 -->
			</div>

			<!-- 로그인 -->
			<div class="col-md-4">
				<ul id="user">
					<li><a href="../_login/login_HG.jsp">LOGIN</a></li>
					<li><a href="../_join/join1_HG.jsp">SIGN UP</a></li>
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
					<li><a href="../_info/IntroWebsite_YB.jsp">사이트 소개</a></li>
					<li><a href="../_info/Greetings_YB.jsp">연-결 인사말</a></li>
					<li><a href="../_info/manager_HG.jsp">커플 매니저</a></li>
					<li><a href="../_info/story_SE.jsp">연결 성혼 Story</a></li>
					<li><a href="../_info/notice_SE.jsp">공지사항</a></li>
					<li><a href="../_info/partner_HG.jsp">연-결 파트너</a></li>
					<li><a href="../_info/map_GD.jsp">오시는 길</a></li>
				</ul>

				<ul class="lnb2_ul">
					<li><a href="../_service/ServiceProcedures_YB.jsp">서비스
							이용절차</a></li>
					<li><a href="../_service/MembershipRegisGuide_YB.jsp">회원가입
							안내</a></li>
					<li><a href="../_service/MemberLevel_YH.jsp">회원등급 안내</a></li>
					<li><a href="../_service/specialservice_YH.jsp">스페셜 서비스</a></li>
					<li><a href="../_service/MemberStatus_YB.jsp">회원현황</a></li>
				</ul>

				<ul class="lnb2_ul">
					<li><a href="../_coach/meetingTip_GD.jsp">미팅성공전략 TIP</a></li>
					<li><a href="../_coach/loveColumn_GD.jsp">LOVE 컬럼</a></li>
					<li><a href="../_coach/DatingCourse_YB.jsp">데이트 코스</a></li>
					<li><a href="../_coach/review_SE.jsp">연-결 만남 후기</a></li>
					<li><a href="../_coach/QnA_SE.jsp">연결 Q &amp; A</a></li>
				</ul>
				<ul class="lnb2_ul">
					<li><a href="../_test/propensity1_HG.jsp">연애성향 테스트</a></li>
					<li><a href="../_test/idealtype_HG.jsp">이상형 찾기</a></li>
					<li><a href="../_test/lovescore1_HG.jsp">나의 연애 매력</a></li>
				</ul>
				<ul class="lnb2_ul">
					<li><a href="../_mypage/myInfo_normal_GD.jsp">My 현황</a></li>
					<li><a href="../_mypage/search_SE.jsp">인연 찾기</a></li>
					<li><a href="../_mypage/1_1questionEmpty_YH.jsp">1:1문의</a></li>
					<li><a href="../_mypage/Ex-MatchingRecord_YB.jsp">매칭 기록 보기</a></li>
					<li><a href="../_mypage/personal_information1_HG.jsp">개인정보
							수정</a></li>
					<li><a href="../_mypage/withdrawal1_HG.jsp">회원탈퇴</a></li>
				</ul>
			</div>
		</div>
		<!-- 카테고리 끝 -->


		<!-- 사이드바 메뉴 -->
		<div class="sidebar">
			<ul id="sidebar_menu">

				<li><a href="../_payment/mustInput_SE.jsp"><img
						src="../img/결제하기1.png" width="95px" height=""></a></li>
				<li><a href="../_coach/QnA_SE.jsp"><img src="../img/문의하기1.png"
						width="95px" height=""></a></li>
				<li><a href="../_mypage/1_1questionEmpty_YH.jsp"><img
						src="../img/1_1문의1.png" width="95px" height=""></a></li>
				<li><a href="../_info/map_GD.jsp"><img src="../img/오시는길1.png"
						width="95px" height=""></a></li>
				<li><a href="#"><img src="../img/전화번호.png" width="95px"
						height=""></a></li>
			</ul>
		</div>
		<!-- 사이드바 메뉴 끝 -->
</body>
</html>