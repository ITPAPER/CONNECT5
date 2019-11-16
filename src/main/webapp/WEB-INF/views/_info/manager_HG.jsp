<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../assets/inc/css.jsp" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/HG/Info/manager.css">
<meta charset="utf-8" />
<title>연-결</title>
</head>
<body>
	<jsp:include page="../assets/inc/top.jsp" />



	<!-- 변경사항  -->


	<!-- 상단 이미지 ( 다른 이미지 저장 시 src 변경 이름 ) -->
	<div class="boximg">
		<img
			src="${pageContext.request.contextPath}/assets/img/managerimg1.PNG"
			alt="연-결" class="img-responsive" />
	</div>
	<!-- 상단 이미지 끝 -->

	<!-- 가운데 영역 -->
	<div class="center">
		<div class="col-md-2">
			<!-- 패널 타이틀1 -->
			<div class="left_sidebar">
				<h3 class="title">연-결 소개</h3>
				<!-- 사이드바 메뉴목록1 -->
				<div class="list-group">
					<a href="${pageContext.request.contextPath}/_info/IntroWebsite_YB.do"
						class="list-group-item">사이트 소개</a> <a
						href="${pageContext.request.contextPath}/_info/Greetings_YB.do"
						class="list-group-item">연-결 인사말</a> <a href="${pageContext.request.contextPath}/_info/manager_HG.do"
						class="list-group-item btncolor">커플 매니저</a> <a href="${pageContext.request.contextPath}/_info/story_SE.do"
						class="list-group-item">연-결 성혼스토리</a> <a href="${pageContext.request.contextPath}/_info/notice_SE.do"
						class="list-group-item">공지사항</a> <a href="${pageContext.request.contextPath}/_info/partner_HG.do"
						class="list-group-item">연-결 파트너</a> <a href="${pageContext.request.contextPath}/_info/map_GD.do"
						class="list-group-item">오시는 길</a>
				</div>
			</div>
		</div>


		<h3 class="col-md-10">커플 매니저</h3>
		<div class="col-md-10 text1">
			<h5>연-결의 커플 매니저를 소개합니다.</h5>
			<br />
		</div>
		<br />
		<div class="col-md-9 content">
			<div class="media">
				<div class="box2">
					<div class="box1">
						<img src="${pageContext.request.contextPath}/assets/img/se.gif">
					</div>
				</div>
				<br />
				<div class="text2">
					<p class="text5">
						<strong>배 세 은</strong>
					</p>
					<br />
					<p>
						<img src="${pageContext.request.contextPath}/assets/img/call.PNG"
							style="border-radius: 20px 20px 20px 20px;">&nbsp;&nbsp;
						010-1234-5678
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
							src="${pageContext.request.contextPath}/assets/img/email.PNG"
							style="width: 25px; height: 25px;">
						&nbsp;&nbsp;skarnjs40970@gmail.com
					</p>

					<br />
					<p class="text6">
						결혼은 이제 필수가 아닌 선택입니다. 가족중 유일하게 선택하실 수 있는 것이 배우자이기도합니다.<br />어떤
						배우자를 선택 하느냐에 따라 인생의 행복지수가 달라집니다.<br /> 최선의 선택을 도와 드리는 매니저가 되겠습니다.<br />
					</p>
				</div>
			</div>
			<br /> <br />
		</div>
		<div class="col-md-2"></div>
		<div class="col-md-9 content">
			<div class="media">
				<div class="box2">
					<div class="box1">
						<img src="${pageContext.request.contextPath}/assets/img/yh.gif">
					</div>
				</div>
				<br />
				<div class="text2">
					<p class="text5">
						<strong>최 유 한</strong>
					</p>
					<br />
					<p>
						<img src="${pageContext.request.contextPath}/assets/img/call.PNG"
							style="border-radius: 20px 20px 20px 20px;">&nbsp;&nbsp;
						010-1234-5678
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
							src="${pageContext.request.contextPath}/assets/img/email.PNG"
							style="width: 25px; height: 25px;">
						&nbsp;&nbsp;skarnjs40970@gmail.com
					</p>

					<br />
					<p class="text6">
						오랜 경력의 노하우로 VIP, 전문직, 명문가집안 결혼을 최고의 성혼 율로 믿고 맡길 수 있습니다.<br /> 따뜻한
						햇살보다 눈부시고 아름다운 동행을 저와 함께 시작해요~<br />
					</p>
				</div>
			</div>
			<br /> <br />
		</div>


		<div class="col-md-2"></div>

		<div class="col-md-9 content">
			<div class="media">
				<div class="box2">
					<div class="box1">
						<img src="${pageContext.request.contextPath}/assets/img/yb.gif">
					</div>
				</div>
				<br />
				<div class="text2">
					<p class="text5">
						<strong>정 유 빈</strong>
					</p>
					<br />
					<p>
						<img src="${pageContext.request.contextPath}/assets/img/call.PNG"
							style="border-radius: 20px 20px 20px 20px;">&nbsp;&nbsp;
						010-1234-5678
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
							src="${pageContext.request.contextPath}/assets/img/email.PNG"
							style="width: 25px; height: 25px;">
						&nbsp;&nbsp;skarnjs40970@gmail.com
					</p>

					<br />
					<p class="text6">
						건강한 사랑, 행복한 결혼생활을 꿈꾸시나요? 행복은 노력하는 자에게 주어지는 선물입니다!<br /> 하루 빨리 내
						인생의 보물찾기를 시작하세요~ <br />진실된 마음과 항상 응원하는 마음으로, 든든한 동반자가 되어 드립니다<br />
					</p>
				</div>
			</div>
			<br /> <br />
		</div>

		<div class="col-md-2"></div>
		<div class="col-md-9 content">
			<div class="media">
				<div class="box2">
					<div class="box1">
						<img src="${pageContext.request.contextPath}/assets/img/gd.gif">
					</div>
				</div>
				<br />
				<div class="text2">
					<p class="text5">
						<strong>박 경 동</strong>
					</p>
					<br />
					<p>
						<img src="${pageContext.request.contextPath}/assets/img/call.PNG"
							style="border-radius: 20px 20px 20px 20px;">&nbsp;&nbsp;
						010-1234-5678
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
							src="${pageContext.request.contextPath}/assets/img/email.PNG"
							style="width: 25px; height: 25px;">
						&nbsp;&nbsp;skarnjs40970@gmail.com
					</p>

					<br />
					<p class="text6">
						인연이 있겠지...하고 계신가요? 찾아온 인연은 우연일 뿐입니다.<br /> 필연의 만남이 인연이 되고, 그 인연이
						운명이 됩니다. 계속 기다리기만 하실건가요?<br /> 직접 움직여 보세요. 저와 함께 하시면 인연 찾기가 더 쉬워
						집니다.<br />
					</p>
				</div>
			</div>
			<br /> <br />
		</div>

		<div class="col-md-2"></div>
		<div class="col-md-9 content">
			<div class="media">
				<div class="box2">
					<div class="box1">
						<img src="${pageContext.request.contextPath}/assets/img/hg.gif">
					</div>
				</div>
				<br />
				<div class="text2">
					<p class="text5">
						<strong>남 희 권</strong>
					</p>
					<br />
					<p>
						<img src="${pageContext.request.contextPath}/assets/img/call.PNG"
							style="border-radius: 20px 20px 20px 20px;">&nbsp;&nbsp;
						010-1234-5678
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
							src="${pageContext.request.contextPath}/assets/img/email.PNG"
							style="width: 25px; height: 25px;">
						&nbsp;&nbsp;skarnjs40970@gmail.com
					</p>

					<br />
					<p class="text6">
						냉철한 통찰력과 따뜻한 가슴으로 성혼 및 교제 성공률 80%이상을 선보입니다.<br /> 또한, 15년이상의 경력을
						갖춘 베테랑 커플매니저입니다.<br /> 성혼의 달란트를 가진 저와 함께 새로운 인연을 찾아 나서보는 건 어떨까요?<br />
					</p>
				</div>
			</div>
		</div>

	</div>






	<!-- 가운데 영역 끝 -->

	<!-- 변경 사항 -->

	<jsp:include page="../assets/inc/footer.jsp" />
</body>
</html>