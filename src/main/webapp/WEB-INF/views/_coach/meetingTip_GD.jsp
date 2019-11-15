<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<jsp:include page="../assets/inc/css.jsp" />

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/GD/Board/meetingTip.css">




<meta charset="utf-8" />
<title>연-결</title>
</head>
<body>
	<jsp:include page="../assets/inc/top.jsp" />



	<!-- 변경사항  -->


	<!-- 상단 이미지 ( 다른 이미지 저장 시 src 변경 이름 ) -->
	<div class="boximg">
		<img src="${pageContext.request.contextPath}/assets/img/question1.png" alt="연-결"
			class="img-responsive" />
	</div>
	<!-- 상단 이미지 끝 -->

	<div class="col-md-2">
		<!-- 패널 타이틀1 -->
		<div class="left sidebar1">
				<h3 class="title">연-결 코치</h3>
			<!-- 사이드바 메뉴목록1 -->
			<div class="list-group">
				<a href="meetingTip_GD.jsp" class="list-group-item btncolor">미팅성공전략TIP</a> <a href="loveColumn_GD.jsp"
					class="list-group-item">LOVE 컬럼</a> <a href="DatingCourse_YB.jsp"
					class="list-group-item">데이트 코스</a> <a href="review_SE.jsp"
					class="list-group-item">연-결 만남 후기</a> <a href="QnA_SE.jsp"
					class="list-group-item">연-결 Q &amp; A</a>
			</div>
		</div>
	</div>


	<h3 class="col-md-10">미팅성공전략TIP</h3>
	<div class="col-md-10 text1">
		<h5>연-결에서 제안하는 미팅자리 훈남 훈녀 되기 노하우</h5>
	</div>

	<div class="col-md-9 content">







		<!-- 내용 작성  -->

<hr />
<div class="table-responsive">
		<table width="850" align="center" class="bottom">
				<tr>
					<td><div class="table">
							<a href="${pageContext.request.contextPath}/_coach/readTip_GD.do"> <img src="${pageContext.request.contextPath}/assets/img/tip_thumb_1.jpg" width="250"
								height="150"></a></td>
					<td width="500" height="200"><a href="readTip_GD.jsp"><h4>소개팅 옷에
								따라 성공률이 달라진다!</h4></a>
						<p class="sub_text">소개팅 옷 어떻게 입으면 좋을까요?놓칠 수 있는 사소한 팁 알고
							가세요첫번째는 자신에게 맞는 옷을 입으세요괜히 너무 꾸밀 생각에 과한옷이나 튀는 옷을 입는다면..입은 나도 어색하지만
							보는 사람도 어색해질 수 있다는 사실~! 두번째는…</p></td>
				</tr>
				<tr>
					<td><div class="table">
							<a href="#"> <img src="${pageContext.request.contextPath}/assets/img/tip_thumb_2.jpg" width="250"
								height="150"></a></td>
					<td width="500" height="200"><a href="#"><h4>여자들이
								싫어하는것만 입지 않아도 성공!</h4></a>
						<p class="sub_text">이번 시간의 주제는 여자들이 싫어하는 스타일입니다화려하기 보다는 간단하게
							여자들이 싫어하는 스타일을 안하는게 중요합니다알아두면 유용한 팁! 지금부터 알려드릴게요 1.과하게 차려입은 남자는
							최악너무 멋내는걸 티내고 오는 사람은 또 별로 라고 합…</p></td>
				</tr>
				<tr>
					<td><div class="table">
							<a href="#"> <img src="${pageContext.request.contextPath}/assets/img/tip_thumb_3.jpg" width="250"
								height="150"></a></td>
					<td width="500" height="200"><a href="#"><h4>키작남도 자신감
								생기는 소개팅 코디!</h4></a>
						<p class="sub_text">남성분들께서는 특히나 자신의 옷차림에 신경을 안쓰시는 분들이 너무나 많이
							있다고 합니다.이런분들에게 도움을 드리고자 몇 가지 코디 추천해드립니다어쩌면 옷은 그사람을 표현하는 상징적인것이
							아닐까 싶습니다그래서 제대로 살펴봐야 하는게 당연한데요</p></td>
				</tr>
				<tr>
					<td><div class="table">
							<a href="#"> <img src="${pageContext.request.contextPath}/assets/img/tip_thumb_4.jpg" width="250"
								height="150"></a></td>
					<td width="500" height="200"><a href="#"><h4>다가오는
								소개팅!성공하는 코디법</h4></a>
						<p class="sub_text">요즘 날씨가 데이트하기 너무 좋은데결혼식도 많아지고 날씨 탓인지 새로 연애를
							시작하는시즌이 찾아왔는데요 그래서 오늘은 여자 소개팅 패션을 알려드리려구요아직은 밤낮으로 일교차가 크기 때문에
							자켓으로 코디해주시면 좋을것 같아요벗었을때는 면티나 …</p></td>
				</tr>






			</table>





		</div>
		
			<ul class="pagination pagination-sm" >
			<li class="disabled"><a href="#">&laquo;</a></li>
			<li class="active"><span>1 <span class="sr-only">(current)</span></span></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
			<li><a href="#">&raquo;</a></li>
		</ul>
			


			
				
	</div>
	<script type="text/javascript">

	
			
	
		
    </script>









	<!-- 변경 사항 -->

	<jsp:include page="../assets/inc/footer.jsp" />
</body>
</html>