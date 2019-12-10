<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<jsp:include page="../assets/inc/css.jsp" />
<link href='${pageContext.request.contextPath}/assets/js/fullcalendar.css' rel='stylesheet' />
<link href='${pageContext.request.contextPath}/assets/js/fullcalendar.print.css' rel='stylesheet' media='print' />
<script src='${pageContext.request.contextPath}/assets/js/moment.min.js'></script>
<script src='${pageContext.request.contextPath}/assets/js/jquery.min.js'></script>
<script src='${pageContext.request.contextPath}/assets/js/fullcalendar.min.js'></script>
<script src='${pageContext.request.contextPath}/assets/js/gcal.js'></script>
<script src='${pageContext.request.contextPath}/assets/js/ko.js'></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/SE/Mypage/search.css">

<script>
function add(){
    if(confirm("해당 날짜를 선택 하시겠습니까?") == true){
      alert("등록이 완료되었습니다.");
   }else {
      return;
   }
   location.href="${pageContext.request.contextPath}/_mypage/searchDateRequest_SE.jsp";
}

</script>
<script>

	$(document).ready(function() {
	
		$('#calendar').fullCalendar({

			// THIS KEY WON'T WORK IN PRODUCTION!!!
			// To make your own Google API key, follow the directions here:
			// http://fullcalendar.io/docs/google_calendar/
			googleCalendarApiKey: 'AIzaSyDcnW6WejpTOCffshGDDb4neIrXVUA1EAE',
		
			// US Holidays
			
			eventClick: function(event) {
				// opens events in a popup window
				window.open(event.url, 'gcalevent', 'width=700,height=600');
				return false;
			},
			
			loading: function(bool) {
				$('#loading').toggle(bool);
			}
			
		});
		
	});

</script>
<style>

	body {
		margin: 40px 10px;
		padding: 0;
		font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
		font-size: 14px;
	}
		
	#loading {
		display: none;
		position: absolute;
		top: 10px;
		right: 10px;
	}

	#calendar {
		max-width: 800px;
		margin: 0 auto;
	}

</style>
<meta charset="utf-8" />
<title>연-결</title>

</head>
<body>
	<jsp:include page="../assets/inc/top.jsp" />

	<!-- 상단 이미지 ( 다른 이미지 저장 시 src 변경 이름 ) -->
	<div class="boximg">
		<img src="${pageContext.request.contextPath}/assets/img/img1_SE.jpg" alt="연-결"
			class="img-responsive" />
	</div>
	<!-- 상단 이미지 끝 -->

	<div class="col-md-2">
		<!-- 패널 타이틀1 -->
		<div class="left sidebar1">
			<h3 class="title">My 연-결</h3>
			<!-- 사이드바 메뉴목록1 -->
			<div class="list-group">
				<a href="${pageContext.request.contextPath}/_mypage/myInfo_GD.do" class="list-group-item ">My현황</a> <a
					href="#" class="list-group-item btncolor">인연 찾기</a> <a
					href="${pageContext.request.contextPath}/_mypage/1_1questionEmpty_YH.do" class="list-group-item">1:1 문의</a> <a
					href="${pageContext.request.contextPath}/_mypage/Ex-MatchingRecord_YB.do" class="list-group-item">매칭 기록
					보기 </a><a href="${pageContext.request.contextPath}/_mypage/personal_information1_HG.do" class="list-group-item">개인정보수정</a>
				<a href="${pageContext.request.contextPath}/_mypage/withdrawal1_HG.do" class="list-group-item">회원탈퇴</a>
			</div>
		</div>
	</div>


	<h3 class="col-md-10">인연 찾기</h3>
	<div class="col-md-10 text1">
		<h5>나의 인연을 찾아봅시다.</h5>
	</div>

	<div class="col-md-10 content">
		<div id='loading'>loading...</div>

	<div id='calendar'></div>
		
	</div>
	<div class="pull-right">
		<p>* 잔여 데이트 횟수 ___회 <br/><input type="checkbox"> 스페셜 서비스 사용</p>
		<a href="${pageContext.request.contextPath}/_mypage/searchDateOpen_SE.do" onclick="window.open(this.href,'mywin','width=500, height=300, scrollbars=yes'); return false;">
			<button type="button" class="btn btn-default pull-right">등록하기</button></a>
		</div>

    
	<jsp:include page="../assets/inc/footer.jsp" />
</body>
</html>