<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html>
<head>
<jsp:include page="../assets/inc/css.jsp" />

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/GD/Mypage/mypage.css">



<script src="https://code.jquery.com/jquery-1.12.4.js"></script>



<meta charset="utf-8" />
<title>연-결</title>
</head>
<body>
	<jsp:include page="../assets/inc/top.jsp" />



	<!-- 변경사항  -->


	<!-- 상단 이미지 ( 다른 이미지 저장 시 src 변경 이름 ) -->
	<div class="boximg">
		<img src="${pageContext.request.contextPath}/assets/img/question1.png"
			alt="연-결" class="img-responsive" />
	</div>
	<!-- 상단 이미지 끝 -->

	<div class="col-md-2">
		<!-- 패널 타이틀1 -->
		<div class="left sidebar1">
			<h3 class="title">My 연-결</h3>
			<!-- 사이드바 메뉴목록1 -->
			<div class="list-group">
				<a href="${pageContext.request.contextPath}/_mypage/myInfo_GD.do"
					class="list-group-item btncolor">My현황</a> <a
					href="${pageContext.request.contextPath}/_mypage/search_SE.do"
					class="list-group-item">인연 찾기</a> <a
					href="${pageContext.request.contextPath}/_mypage/1_1questionEmpty_YH.do"
					class="list-group-item">1:1 문의</a> <a
					href="${pageContext.request.contextPath}/_mypage/Ex-MatchingRecord_YB.do"
					class="list-group-item">매칭 기록 보기 </a><a
					href="${pageContext.request.contextPath}/_mypagepersonal_information1_HG.do"
					class="list-group-item ">개인정보수정</a> <a
					href="${pageContext.request.contextPath}/_mypage/withdrawal1_HG.do"
					class="list-group-item">회원탈퇴</a>
			</div>
		</div>
	</div>

	<h3 class="col-md-10">My 현황</h3>
	<div class="col-md-10 text1">
		<h5>연 - 결 마이페이지</h5>
		<hr />
	</div>

	<hr />

	<div class="col-md-9 content">

		<p id="level">
			나의 연-결 등급
			<c:if test="${memberlv == 0}">
				<img src="${pageContext.request.contextPath}/assets/img/normal.png"
					id="level_icon">
			</c:if>
			<c:if test="${memberlv == 1}">
				<img src="${pageContext.request.contextPath}/assets/img/bronze.PNG"
					id="level_icon">
			</c:if>
			<c:if test="${memberlv == 2 }">
				<img src="${pageContext.request.contextPath}/assets/img/silver.PNG"
					id="level_icon">
			</c:if>
			<c:if test="${memberlv == 3 }">
				<img src="${pageContext.request.contextPath}/assets/img/gold.PNG"
					id="level_icon">
			</c:if>
			<c:if test="${memberlv == 4 }">
				<img src="${pageContext.request.contextPath}/assets/img/vip.PNG"
					id="level_icon">
			</c:if>
			<span style="font-weight: bold; color: #F73478; font-size: 35px;"
				id="level_text"> <c:if test="${memberlv == 0}">
				　Normal
				</c:if> <c:if test="${memberlv == 1}">
				　Bronze
				</c:if> <c:if test="${memberlv == 2}">
				　Silver
				</c:if> <c:if test="${memberlv == 3}">
				　Gold
				</c:if> <c:if test="${memberlv == 4}">
				　V.I.P
				</c:if></span> <span
				style="font-weight: bold; font-size: 1.3em; margin-left: 40px;"
				id="name">${username} </span> <span> 님의 잔여 매칭 횟수 </span> <span
				style="font-weight: bold; font-size: 1.3em;" id="count"> <c:if
					test="${date_rest == 1}">3
				</c:if> <c:if test="${date_rest == 2}">5
				</c:if> <c:if test="${date_rest == 3}">7
				</c:if> <c:if test="${date_rest == 4}">Free
				</c:if>
			</span> <span> 회 </span>

		</p>

		<div style="clear: both;"></div>

		<hr />

		<!-- 준회원 -->
		
		
		<c:choose>
			<c:when test="${memberlv == 0 }">
				<h4>현재 매칭 상대</h4>
				<div class="state_matching">
					정회원 등록 시 이용 가능합니다.
					<p class="look_match">
						<a href="${pageContext.request.contextPath}/_payment/mustInput_SE.do"
							id="lf_partner"> 결제페이지 이동 </a>
					</p>
				</div>
				<h4>데이트 신청</h4>
				<div class="request_date">정회원 등록 시 이용 가능합니다.</div>
			</c:when>
	
			<c:when test="${requser.start != null}">
				<h4>현재 매칭 상대</h4>
				<div class="state_matching" align="center">
					<span> [ ${requser.getStart()} ] 날짜에 데이트 요청을 하셨습니다. </span>
					<p class="look_match" align="center">
						<a href="${pageContext.request.contextPath}/_mypage/search_SE.do"
							id="lf_partner"> 연-결 파트너 찾기 </a>
					</p>
				</div>
				<h4>데이트 신청</h4>
			</c:when>
			
			<c:otherwise>
				<h4>현재 매칭 상대</h4>
				<div class="state_matching" align="center">
					현재 진행중인 매칭이 없습니다.
					<p class="look_match" align="center">
						<a href="${pageContext.request.contextPath}/_mypage/search_SE.do"
							id="lf_partner">내 연-결 찾기</a>
					</p>
				</div>	
				<h4>데이트 신청</h4>
			</c:otherwise>
		</c:choose>
		
				<c:choose>
					<c:when test="${sucuser == null || fn:length(sucuser) == 0}">
							<div class="request_date" align="center">현재 들어온 데이트 신청이 없습니다.</div>
					</c:when>
					
					<c:otherwise>
					
						<c:forEach var="item" items="${sucuser}" varStatus="status">
							<%--출력을 위해 준비한 학과이름과 위치 --%>
						<c:set var="name" value="${item.getUserName()}" />
						<c:set var="sucmatch" value="${item.getSucMatchId() }" />
							
								<table class="table table-bordered table-hover">
									<tr>
										<td id="date" align="center">[ <span id="n"> ${name }</span> ] 님에게 [
										<span id="c">${requser.getStart()}</span> ] 일에 데이트 신청이 들어왔습니다. </td>
										<td align="center">
											<a href="${pageContext.request.contextPath}/_mypage/DateConfirm.do?SucMatchId=${sucmatch}">수락</a></button>
											<a href="${pageContext.request.contextPath}/_mypage/DateConfirm1.do?SucMatchId=${sucmatch}">거절</a>
										</td>
									</tr>
								</table>
						</c:forEach>
					</c:otherwise>
				</c:choose>




		<c:if test="${memberlv == 0 }">
			<h4>나의 매니저</h4>
			<table class="table table-bordered table-hover">
				<tr>
					<td width="50px"><img
						src="${pageContext.request.contextPath}/assets/img/normalUser_Manager.PNG"
						width="100px;"height:auto;></td>
					<td><span class="mg_name">미정<span class="job"> -
						</span></span>
						<p></p>
						<p>
							핸드폰 : <a href="#"> - </a>
						</p> 이메일 : <span> - </span></td>
				</tr>

			</table>
		</c:if>
		<c:if test="${managerid == 1 }">
			<h4>나의 매니저</h4>
			<table class="table table-bordered table-hover">
				<tr>
					<td width="50px"><img
						src="${pageContext.request.contextPath}/assets/img/manager2.PNG"
						width="100px;"></td>
					<td><span class="mg_name">강호동&nbsp;<span class="job">상담
								수석 실장</span></span>
						<p></p>
						<p>
							핸드폰 : <a href="#">010-9991-1811</a>
						</p> 이메일 : <span>SSiReumJJang@gmail.com</span></td>
				</tr>
			</table>
		</c:if>
		<c:if test="${managerid == 2 }">
			<h4>나의 매니저</h4>
			<table class="table table-bordered table-hover">
				<tr>
					<td width="50px"><img
						src="${pageContext.request.contextPath}/assets/img/manager4.PNG"
						width="100px;"></td>
					<td><span class="mg_name">신동엽&nbsp;<span class="job">상담
								수석 실장</span></span>
						<p></p>
						<p>
							핸드폰 : <a href="#">010-4425-7773</a>
						</p> 이메일 : <span>azoomma@gmail.com</span></td>
				</tr>
			</table>
		</c:if>
		<c:if test="${managerid == 3 }">
			<h4>나의 매니저</h4>
			<table class="table table-bordered table-hover">
				<tr>
					<td width="50px"><img
						src="${pageContext.request.contextPath}/assets/img/manager3.PNG"
						width="100px;"></td>
					<td><span class="mg_name">유재석&nbsp;<span class="job">상담
								수석 실장</span></span>
						<p></p>
						<p>
							핸드폰 : <a href="#">010-9991-1811</a>
						</p> 이메일 : <span>MeDDuk2@gmail.com</span></td>
				</tr>
			</table>
		</c:if>
		<c:if test="${managerid == 4 }">
			<h4>나의 매니저</h4>
			<table class="table table-bordered table-hover">
				<tr>
					<td width="50px"><img
						src="${pageContext.request.contextPath}/assets/img/manager1.jpg"
						width="100px;"></td>
					<td><span class="mg_name">아줌마&nbsp;<span class="job">상담
								수석 실장</span></span>
						<p></p>
						<p>
							핸드폰 : <a href="#">010-4425-7773</a>
						</p> 이메일 : <span>azoomma@gmail.com</span></td>
				</tr>
			</table>
		</c:if>
	</div>


	<!-- 변경 사항 -->

	<jsp:include page="../assets/inc/footer.jsp" />


</body>
</html>