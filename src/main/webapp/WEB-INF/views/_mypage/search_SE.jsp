<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<jsp:include page="../assets/inc/css.jsp" />

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

	<div class="col-md-9 content">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th id="sun">일</th>
					<th>월</th>
					<th>화</th>
					<th>수</th>
					<th>목</th>
					<th>금</th>
					<th>토</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td></td>
					<td></td>
					<td>1</td>
					<td>2</td>
					<td>3</td>
					<td>4</td>
					<td>5
						<div id="count">
							<a href="#" data-toggle="modal" data-target="#manModal">남:3</a><br />
							<a href="#" data-toggle="modal" data-target="#womanModal">여:2</a>
						</div>
					</td>
				</tr>
				<tr>
					<td id="sun">6</td>
					<td>7
						<div id="count">
							<a href="#" data-toggle="modal" data-target="#manModal">남:3</a><br />
							<a href="#" data-toggle="modal" data-target="#womanModal">여:2</a>
						</div>
					</td>
					<td>8</td>
					<td>9</td>
					<td>10
						<div id="count">
							<a href="#" data-toggle="modal" data-target="#manModal">남:3</a><br />
							<a href="#" data-toggle="modal" data-target="#womanModal">여:2</a>
						</div>
					</td>
					<td>11</td>
					<td>12</td>
				</tr>
				<tr>
					<td id="sun">13
						<div id="count">
							<a href="#" data-toggle="modal" data-target="#manModal">남:3</a><br />
							<a href="#" data-toggle="modal" data-target="#womanModal">여:2</a>
						</div>
					</td>
					<td>14</td>
					<td>15
						<div id="count">
							<a href="#" data-toggle="modal" data-target="#manModal">남:3</a><br />
							<a href="#" data-toggle="modal" data-target="#womanModal">여:2</a>
						</div>
					</td>
					<td>16</td>
					<td>17</td>
					<td>18
						<div id="count">
							<a href="#" data-toggle="modal" data-target="#manModal">남:3</a><br />
							<a href="#" data-toggle="modal" data-target="#womanModal">여:2</a>
						</div>
					</td>
					<td>19</td>
				</tr>
				<tr>
					<td id="sun">20</td>
					<td>21</td>
					<td>22</td>
					<td>23
						<div id="count">
							<a href="#" data-toggle="modal" data-target="#manModal">남:3</a><br />
							<a href="#" data-toggle="modal" data-target="#womanModal">여:2</a>
						</div>
					</td>
					<td>24</td>
					<td>25</td>
					<td>26
						<div id="count">
							<a href="#" data-toggle="modal" data-target="#manModal">남:3</a><br />
							<a href="#" data-toggle="modal" data-target="#womanModal">여:2</a>
						</div>
					</td>
				</tr>
				<tr>
					<td id="sun">27</td>
					<td>28</td>
					<td>29
						<div id="count">
							<a href="#" data-toggle="modal" data-target="#manModal">남:3</a><br />
							<a href="#" data-toggle="modal" data-target="#womanModal">여:2</a>
						</div>
					</td>
					<td>30</td>
					<td>31</td>
					<td></td>
					<td></td>
				</tr>
			</tbody>
		</table>
		
		<div class="pull-right">
		<p>* 잔여 데이트 횟수 ___회 <br/><input type="checkbox"> 스페셜 서비스 사용</p>
		<a href="${pageContext.request.contextPath}/_mypage/searchDateOpen_SE.do" onclick="window.open(this.href,'mywin','width=500, height=300, scrollbars=yes'); return false;">
			<button type="button" class="btn btn-default pull-right">등록하기</button></a>
		</div>
	</div>

		<div class="modal fade" id="manModal">
			<div class="modal-dialog modal-sm">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title">현황</h4>
					</div>
					<div class="modal-body">
						<table class="table-bordered" id="modaltable1">
							<thead>
								<tr>
									<th>번호</th>
									<th>이름</th>
									<th>성별</th>
									<th>나이</th>
									<th>직업</th>
									<th>데이트선호장소</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td><a href="${pageContext.request.contextPath}/_mypage/searchRequestConfirm_SE.do">홍길동</a></td>
									<td>남</td>
									<td>30</td>
									<td>변호사</td>
									<td>서울</td>
								</tr>
								<tr>
									<td>2</td>
									<td><a href="${pageContext.request.contextPath}/_mypage/searchRequestConfirm_SE.do">홍길동</a></td>
									<td>남</td>
									<td>33</td>
									<td>검사</td>
									<td>경기도</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>

		<div class="modal fade" id="womanModal">
			<div class="modal-dialog modal-sm">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title">현황</h4>
					</div>
					<div class="modal-body">
						<table class="table-bordered" id="modaltable1">
							<thead>
								<tr>
									<th>번호</th>
									<th>이름</th>
									<th>성별</th>
									<th>나이</th>
									<th>직업</th>
									<th>데이트선호장소</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td><a href="${pageContext.request.contextPath}/_mypage/searchRequestConfirm_SE.do">홍길동</a></td>
									<td>여</td>
									<td>30</td>
									<td>의사</td>
									<td>강원도</td>
								</tr>
								<tr>
									<td>2</td>
									<td><a href="${pageContext.request.contextPath}/_mypage/searchRequestConfirm_SE.do">홍길동</a></td>
									<td>여</td>
									<td>28</td>
									<td>교사</td>
									<td>경상도</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
    
	<jsp:include page="../assets/inc/footer.jsp" />
</body>
</html>