<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<jsp:include page="../assets/inc/css.jsp" />

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/GD/Board/readColumn.css">






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
				<a href="${pageContext.request.contextPath}/_coach/meetingTip_GD.do" class="list-group-item">미팅성공전략TIP</a> <a href="loveColumn_GD.jsp"
					class="list-group-item btncolor">LOVE 컬럼</a> <a href="DatingCourse_YB.jsp"
					class="list-group-item">데이트 코스</a> <a href="review_SE.jsp"
					class="list-group-item">연-결 만남 후기</a> <a href="QnA_SE.jsp"
					class="list-group-item">연-결 Q &amp; A</a>
			</div>
		</div>
	</div>


	<h3 class="col-md-10">LOVE 칼럼</h3>
	<div class="col-md-10 text1">
		<h5>연애와 결혼에 관한 솔직 담백한 이야기를 들려 드립니다.</h5>
	</div>

	<div class="col-md-9 content">







		<!-- 내용 작성  -->

<hr />
<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th class="text-center" id="num">제목</th>
						<th class="title">소개팅 옷에 따라 성공률이 달라진다!</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td id="context" colspan="3" align="left">소개팅 옷 어떻게 입으면
							좋을까요?놓칠 수 있는 사소한 팁 알고 가세요. 첫번째는 자신에게 맞는 옷을 입으세요. 괜히 너무 꾸밀 생각에
							과한옷이나 튀는 옷을 입는다면..입은 나도 어색하지만 보는 사람도 어색해질 수 있다는 사실~! 알고 계셨나요? 난
							몰랐어요 ㅎㅎ 좋은하루 됩시다.</td>
					</tr>

				</tbody>
			</table>
		</div>

		<div class="pull-right">
			<button class="btn btn-default">
				<a href="loveColumn_GD.jsp">목록</a>
			</button>

		</div>
			


			
				
	</div>
	<script type="text/javascript">

	
			
	
		
    </script>









	<!-- 변경 사항 -->

<jsp:include page="../assets/inc/footer.jsp" />
</body>
</html>