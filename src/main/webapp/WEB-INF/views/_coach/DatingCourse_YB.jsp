<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<jsp:include page="../assets/inc/css.jsp" />


<title>연-결 코치_데이트 코스(Coach_DatingCourse1)</title>

<!-- 시각적 확인을 위한 CSS 적용 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/YB/Coach/DatingCourse.css">

	<!-- 스크립트 추가 작성란 --> 
	<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script type="text/javascript">
	
</script>


</head>
<body>
	<jsp:include page="../assets/inc/top.jsp" />

	<!-- 상단 이미지 ( 다른 이미지 저장 시 src 변경 이름 ) -->
	<div class="boximg">
		<img src="${pageContext.request.contextPath}/assets/img/데이트코스1_상단.png" alt="연-결"
			class="img-responsive" />
	</div>
	<!-- 상단 이미지 끝 -->

	 <!-- 가운데 영역 -->
     <div class="col-md-2">
     	
     	<!-- 패널 타이틀1 -->
      	<div class="left_sidebar">
      		<h3 class="title">연-결 코치</h3>
      		
      		<!-- 사이드바 메뉴목록1 -->
      		<div class="list-group">
	            <a href="${pageContext.request.contextPath}/./_coach/meetingTip_GD.do" class="list-group-item">미팅성공전략TIP</a>
	            <a href="${pageContext.request.contextPath}/./_coach/loveColumn_GD.do" class="list-group-item">LOVE 컬럼</a>
	            <a href="${pageContext.request.contextPath}/./_coach/DatingCourse_YB.do" class="list-group-item btncolor">데이트 코스</a>
	            <a href="${pageContext.request.contextPath}/./_coach/review_SE.do" class="list-group-item">연-결 만남 후기</a>
	            <a href="${pageContext.request.contextPath}/./_coach/QnA_SE.do" class="list-group-item">연-결 Q & A</a>
            </div> 
        </div>
      </div>

		<!-- 내용 작성  -->
		
		
		
        <h3 class="col-md-10">데이트 코스</h3><br />
        	<div class="col-md-10 text1">
				<h5>연-결 회원님들을 위해 연-결이 엄선한 환상적인 데이트 코스</h5>
			</div>
			
			
			<div class="col-md-10 content">
			<!-- 데스크탑: 한 줄에 4개, 태블릿: 한 줄에 2개 씩 배치되도록 그리드 구성 -->
			<div class="row">
				<!-- 게시물 하나 시작 -->
				<div class="col-md-4 col-sm-2 col-xs-6"">
					<div class="thumbnail">
						<a href="${pageContext.request.contextPath}/_coach/DatingCourse2_YB.do"><img alt="북촌 한옥마을" src="${pageContext.request.contextPath}/assets/img/북촌01.jpg">
						
						</a>
						<div class="caption"> 
							<span class="thumb-text">
							<span style="color:#210B61">
							<h4 class="thumb-title">[서울] 북촌 한옥마을</h4></span>
							<span style="color:#6A5ACD">
							<p><h6 class="thumb-content"><img alt="전화" src="${pageContext.request.contextPath}/assets/img/Tel-icon-purple.png" width="20px">&nbsp;&nbsp;02-2133-1372</h6></p>
							<p><h6 class="thumb-content"><img alt="장소" src="${pageContext.request.contextPath}/assets/img/location-icon-purple.png" width="20px">&nbsp;&nbsp;서울 종로구 계동길 37</h6></p>
							</span>
							<hr />
							<p class="thumb-content">
								<a href="#" class="btn btn-primary"><i class="glyphicon glyphicon-heart"></i>&nbsp;&nbsp;좋아요</a>
							</p>
						</div>
					</div>
				</div>
				<!-- 게시물 하나 끝 -->
				
				<!-- 게시물 하나 시작 -->
				<div class="col-md-4 col-sm-2 col-xs-6">
					<div class="thumbnail">
						<a href="#"><img alt="남산N타워" src="${pageContext.request.contextPath}/assets/img/남산타워01.png"></a>
						<div class="caption">
							<span style="color:#210B61">
							<h4 class="thumb-title">[서울] 남산 N 타워</h4></span>
							<span style="color:#6A5ACD">
							<p><h6 class="thumb-content"><img alt="전화" src="${pageContext.request.contextPath}/assets/img/Tel-icon-purple.png" width="20px">&nbsp;&nbsp;02-2133-1372</h6></p>
							<p><h6 class="thumb-content"><img alt="전화" src="${pageContext.request.contextPath}/assets/img/location-icon-purple.png" width="20px">&nbsp;&nbsp;서울 종로구 계동길 37</h6></p>
							</span>
							<hr />
							<p class="thumb-content">
								<a href="#" class="btn btn-primary"><i class="glyphicon glyphicon-heart"></i>&nbsp;&nbsp;좋아요</a>
							</p>
						</div>
					</div>
				</div>
				<!-- 게시물 하나 끝 -->
				
				<!-- 게시물 하나 시작 -->
				<div class="col-md-4 col-sm-2 col-xs-6">
					<div class="thumbnail">
						<a href="#"><img alt="방배카페골목" src="${pageContext.request.contextPath}/assets/img/방배카페골목01.jpg"></a>
						<div class="caption">
							<span style="color:#210B61">
							<h4 class="thumb-title">[서울] 방배 카페골목</h4></span>
							<span style="color:#6A5ACD">
							<p><h6 class="thumb-content"><img alt="전화" src="${pageContext.request.contextPath}/assets/img/Tel-icon-purple.png" width="20px">&nbsp;&nbsp;02-2133-1372</h6></p>
							<p><h6 class="thumb-content"><img alt="전화" src="${pageContext.request.contextPath}/assets/img/location-icon-purple.png" width="20px">&nbsp;&nbsp;서울 종로구 계동길 37</h6></p>
							</span>
							<hr />
							<p class="thumb-content">
								<a href="#" class="btn btn-primary"><i class="glyphicon glyphicon-heart"></i>&nbsp;&nbsp;좋아요</a>
							</p>
						</div>
					</div>
				</div>
				<!-- 게시물 하나 끝 -->
				
				<!-- 게시물 하나 시작 -->
				<div class="col-md-4 col-sm-2 col-xs-6">
					<div class="thumbnail">
						<a href="#"><img alt="제주카멜리아힐" src="${pageContext.request.contextPath}/assets/img/제주카멜리아힐01.png"></a>
						<div class="caption">
							<span style="color:#210B61">
							<h4 class="thumb-title">[제주] 카밀리아힐</h4></span>
							<span style="color:#6A5ACD">
							<p><h6 class="thumb-content"><img alt="전화" src="${pageContext.request.contextPath}/assets/img/Tel-icon-purple.png" width="20px">&nbsp;&nbsp;02-2133-1372</h6></p>
							<p><h6 class="thumb-content"><img alt="전화" src="${pageContext.request.contextPath}/assets/img/location-icon-purple.png" width="20px">&nbsp;&nbsp;서울 종로구 계동길 37</h6></p>
							</span>
							<hr />
							<p class="thumb-content">
								<a href="#" class="btn btn-primary"><i class="glyphicon glyphicon-heart"></i>&nbsp;&nbsp;좋아요</a>
							</p>
						</div>
					</div>
				</div>
				<!-- 게시물 하나 끝 -->
				
				<!-- 게시물 하나 시작 -->
				<div class="col-md-4 col-sm-2 col-xs-6">
					<div class="thumbnail">
						<a href="#"><img alt="제주허브동산" src="${pageContext.request.contextPath}/assets/img/제주허브동산_별빛놀이01.jpg"></a>
						<div class="caption">
							<span style="color:#210B61">
							<h4 class="thumb-title">[제주] 허브동산</h4></span>
							<span style="color:#6A5ACD">
							<p><h6 class="thumb-content"><img alt="전화" src="${pageContext.request.contextPath}/assets/img/Tel-icon-purple.png" width="20px">&nbsp;&nbsp;02-2133-1372</h6></p>
							<p><h6 class="thumb-content"><img alt="전화" src="${pageContext.request.contextPath}/assets/img/location-icon-purple.png" width="20px">&nbsp;&nbsp;서울 종로구 계동길 37</h6></p>
							</span>
							<hr />
							<p class="thumb-content">
								<a href="#" class="btn btn-primary"><i class="glyphicon glyphicon-heart"></i>&nbsp;&nbsp;좋아요</a>
							</p>
						</div>
					</div>
				</div>
				<!-- 게시물 하나 끝 -->
				
				<!-- 게시물 하나 시작 -->
				<div class="col-md-4 col-sm-2 col-xs-6">
					<div class="thumbnail">
						<a href="#"><img alt="제주녹차미로공원" src="${pageContext.request.contextPath}/assets/img/제주녹차미로공원01.jpg"></a>
						<div class="caption">
							<span style="color:#210B61">
							<h4 class="thumb-title">[제주] 녹차 미로공원</h4></span>
							<span style="color:#6A5ACD">
							<p><h6 class="thumb-content"><img alt="전화" src="${pageContext.request.contextPath}/assets/img/Tel-icon-purple.png" width="20px">&nbsp;&nbsp;02-2133-1372</h6></p>
							<p><h6 class="thumb-content"><img alt="전화" src="${pageContext.request.contextPath}/assets/img/location-icon-purple.png" width="20px">&nbsp;&nbsp;서울 종로구 계동길 37</h6></p>
							</span>
							<hr />
							<p class="thumb-content">
								<a href="#" class="btn btn-primary"><i class="glyphicon glyphicon-heart"></i>&nbsp;&nbsp;좋아요</a>
							</p>
						</div>
					</div>
				</div>
				<!-- 게시물 하나 끝 -->
				
				<!-- 게시물 하나 시작 -->
				<div class="col-md-4 col-sm-2 col-xs-6">
					<div class="thumbnail">
						<a href="#"><img alt="전주한옥마을" src="${pageContext.request.contextPath}/assets/img/전주한옥마을01.jpg"></a>
						<div class="caption">
							<span style="color:#210B61">
							<h4 class="thumb-title">[전주] 한옥마을</h4></span>
							<span style="color:#6A5ACD">
							<p><h6 class="thumb-content"><img alt="전화" src="${pageContext.request.contextPath}/assets/img/Tel-icon-purple.png" width="20px">&nbsp;&nbsp;02-2133-1372</h6></p>
							<p><h6 class="thumb-content"><img alt="전화" src="${pageContext.request.contextPath}/assets/img/location-icon-purple.png" width="20px">&nbsp;&nbsp;서울 종로구 계동길 37</h6></p>
							</span>
							<hr />
							<p class="thumb-content">
								<a href="#" class="btn btn-primary"><i class="glyphicon glyphicon-heart"></i>&nbsp;&nbsp;좋아요</a>
							</p>
						</div>
					</div>
				</div>
				<!-- 게시물 하나 끝 -->
				
				<!-- 게시물 하나 시작 -->
				<div class="col-md-4 col-sm-2 col-xs-6">
					<div class="thumbnail">
						<a href="#"><img alt="미즈컨테이너1" src="${pageContext.request.contextPath}/assets/img/미즈컨테이너01.jfif"></a>
						<div class="caption">
							<span>
							<h4 class="thumb-title">[서울 강남 맛집] 미즈컨테이너1</h4></span>
							<span style="color:#6A5ACD">
							<p><h6 class="thumb-content"><img alt="전화" src="${pageContext.request.contextPath}/assets/img/Tel-icon-purple.png" width="20px">&nbsp;&nbsp;02-2133-1372</h6></p>
							<p><h6 class="thumb-content"><img alt="전화" src="${pageContext.request.contextPath}/assets/img/location-icon-purple.png" width="20px">&nbsp;&nbsp;서울 종로구 계동길 37</h6></p>
							</span>
							<hr />
							<p class="thumb-content">
								<a href="#" class="btn btn-primary"><i class="glyphicon glyphicon-heart"></i>&nbsp;&nbsp;좋아요</a>
							</p>
						</div>
					</div>
				</div>
				<!-- 게시물 하나 끝 -->
				
				<!-- 게시물 하나 시작 -->
				<div class="col-md-4 col-sm-2 col-xs-6">
					<div class="thumbnail">
						<a href="#"><img alt="미즈컨테이너2" src="${pageContext.request.contextPath}/assets/img/미즈컨테이너02.jpg"></a>
						<div class="caption">
							<span style="color:#210B61">
							<h4 class="thumb-title">[서울 강남 맛집] 미즈컨테이너2</h4></span>
							<span style="color:#6A5ACD">
							<p><h6 class="thumb-content"><img alt="전화" src="${pageContext.request.contextPath}/assets/img/Tel-icon-purple.png" width="20px">&nbsp;&nbsp;02-2133-1372</h6></p>
							<p><h6 class="thumb-content"><img alt="전화" src="${pageContext.request.contextPath}/assets/img/location-icon-purple.png" width="20px">&nbsp;&nbsp;서울 종로구 계동길 37</h6></p>
							</span>
							<hr />
							<p class="thumb-content">
								<a href="#" class="btn btn-primary"><i class="glyphicon glyphicon-heart"></i>&nbsp;&nbsp;좋아요</a>
							</p>
						</div>
					</div>
				</div>
				<!-- 게시물 하나 끝 -->
			</div>
		</div>
		
			
			
			
            <!-- 가운데(내용) 영역 끝 -->

	<!-- 변경 사항 -->

	<jsp:include page="../assets/inc/footer.jsp" />
	
	<!-- Javascript -->
	<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
	
</body>
</html>