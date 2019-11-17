<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Grid</title>

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

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/SE/Admin/main.css">
	
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>


<script type="text/javascript">
function cancel() {
if (confirm("취소하시겠습니까?") == true) {
alert("취소 되었습니다.");
} else {
return;
}
location.href = "${pageContext.request.contextPath}/_admin/admin_main_SE.do";
}
</script>
</head>
<body>

	<div class="container">
		<div class="top">
			<div class="col-md-12 top_login">
				<p id="connect">
					admin 님 접속중
					<button type="submit" class="btn btn-xs" onclick="location.href = '${pageContext.request.contextPath}'">Logout</button>
				</p>
			</div>
		</div>


		<div class="col-md-2 sidebar1">
			<a href="${pageContext.request.contextPath}/_admin/admin_main_SE.do" class="list-group-item active">대시보드</a> <a href="${pageContext.request.contextPath}/_admin/admin_userManager1_HG.do"
				class="list-group-item">회원관리</a> <a href="${pageContext.request.contextPath}/_admin/admin_userManagement_YH.do"
				class="list-group-item">게시판 관리</a> <a href="${pageContext.request.contextPath}/_admin/admin_userApply_YH.do"
				class="list-group-item">신청현황</a> <a href="${pageContext.request.contextPath}/_admin/admin_Question_SE.do" class="list-group-item">문의현황</a>
			<a href="${pageContext.request.contextPath}/_admin/admin_Payment_GD.do" class="list-group-item">결제관리</a>

		</div>
		<div class="col-md-7 middle">
			<table class="table-bordered" id="status">
				<tr>
					<th>결제</th>
					<th><a href="${pageContext.request.contextPath}/_admin/admin_Payment_GD.do">3건</a></th>
					<th>문의</th>
					<th><a href="${pageContext.request.contextPath}/_admin/admin_Question_SE.do">7건</a></th>
					<th>신입회원</th>
					<th><a href="${pageContext.request.contextPath}/_admin/admin_userManager1_HG.do">12명</a></th>
				</tr>
			</table>
			<div class="col-md-12 text_box">
				<div class="table-responsive">
					<p>10월 회원 현황</p> 
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
										<a href="#" data-toggle="modal" data-target="#womanModal">여:2<br /></a><a
											href="#" data-toggle="modal" data-target="#myModal">매칭:3</a>
									</div>
								</td>
							</tr>
							<tr>
								<td id="sun">6</td>
								<td>7
									<div id="count">
										<a href="#" data-toggle="modal" data-target="#manModal">남:3</a><br />
										<a href="#" data-toggle="modal" data-target="#womanModal">여:2<br /></a><a
											href="#" data-toggle="modal" data-target="#myModal">매칭:3</a>
									</div>
								</td>
								<td>8</td>
								<td>9</td>
								<td>10
									<div id="count">
										<a href="#" data-toggle="modal" data-target="#manModal">남:3</a><br />
										<a href="#" data-toggle="modal" data-target="#womanModal">여:2<br /></a><a
											href="#" data-toggle="modal" data-target="#myModal">매칭:3</a>
									</div>
								</td>
								<td>11</td>
								<td>12</td>
							</tr>
							<tr>
								<td id="sun">13
									<div id="count">
										<a href="#" data-toggle="modal" data-target="#manModal">남:3</a><br />
										<a href="#" data-toggle="modal" data-target="#womanModal">여:2<br /></a><a
											href="#" data-toggle="modal" data-target="#myModal">매칭:3</a>
									</div>
								</td>
								<td>14</td>
								<td>15
									<div id="count">
										<a href="#" data-toggle="modal" data-target="#manModal">남:3</a><br />
										<a href="#" data-toggle="modal" data-target="#womanModal">여:2<br /></a><a
											href="#" data-toggle="modal" data-target="#myModal">매칭:3</a>
									</div>
								</td>
								<td>16</td>
								<td>17</td>
								<td>18
									<div id="count">
										<a href="#" data-toggle="modal" data-target="#manModal">남:3</a><br />
										<a href="#" data-toggle="modal" data-target="#womanModal">여:2<br /></a><a
											href="#" data-toggle="modal" data-target="#myModal">매칭:3</a>
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
										<a href="#" data-toggle="modal" data-target="#womanModal">여:2<br /></a><a
											href="#" data-toggle="modal" data-target="#myModal">매칭:3</a>
									</div>
								</td>
								<td>24</td>
								<td>25</td>
								<td>26
									<div id="count">
										<a href="#" data-toggle="modal" data-target="#manModal">남:3</a><br />
										<a href="#" data-toggle="modal" data-target="#womanModal">여:2<br /></a><a
											href="#" data-toggle="modal" data-target="#myModal">매칭:3</a>
									</div>
								</td>
							</tr>
							<tr>
								<td id="sun">27</td>
								<td>28</td>
								<td>29
									<div id="count">
										<a href="#" data-toggle="modal" data-target="#manModal">남:3</a><br />
										<a href="#" data-toggle="modal" data-target="#womanModal">여:2<br /></a><a
											href="#" data-toggle="modal" data-target="#myModal">매칭:3</a>
									</div>
								</td>
								<td>30</td>
								<td>31</td>
								<td></td>
								<td></td>
							</tr>
						</tbody>
					</table>
				</div>

				<p>연-결 등급별 현황</p>
				<table class="table table-bordered" id="foot">
					<thead>
						<tr>
							<th>성별</th>
							<th>준회원</th>
							<th>새싹</th>
							<th>일반</th>
							<th>우수</th>
							<th>최우수</th>
							<th>총 회원 수</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>남성</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
						</tr>
						<tr>
							<td>여성</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
						</tr>
					</tbody>
				</table>

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
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>홍길동</td>
										<td>남</td>
										<td>30</td>
										<td>변호사</td>
									</tr>
									<tr>
										<td>2</td>
										<td>홍길동</td>
										<td>남</td>
										<td>33</td>
										<td>검사</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary"
								data-dismiss="modal">Close</button>
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
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>홍길동</td>
										<td>여</td>
										<td>30</td>
										<td>의사</td>
									</tr>
									<tr>
										<td>2</td>
										<td>홍길동</td>
										<td>여</td>
										<td>28</td>
										<td>교사</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary"
								data-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div>

			<div class="modal fade" id="myModal">
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
							<table class="table-bordered" id="modaltable2">
								<thead>
									<tr>
										<th>번호</th>
										<th>이름</th>
										<th>나이</th>
										<th>성별</th>
										<th>취소</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>홍길동</td>
										<td>30</td>
										<td>남</td>
										<td><button type="submit" class="btn btn-xs"
												onclick="cancel();">취소</button></td>
									</tr>
									<tr>
										<td>1</td>
										<td>홍길동</td>
										<td>28</td>
										<td>여</td>
										<td><button type="submit" class="btn btn-xs"
												onclick="cancel();">취소</button></td>
									</tr>
									<tr>
										<td>2</td>
										<td>홍길동</td>
										<td>33</td>
										<td>남</td>
										<td><button type="submit" class="btn btn-xs"
												onclick="cancel();">취소</button></td>
									</tr>
									<tr>
										<td>2</td>
										<td>홍길동</td>
										<td>29</td>
										<td>여</td>
										<td><button type="submit" class="btn btn-xs"
												onclick="cancel();">취소</button></td>
									</tr>
									<tr>
										<td>3</td>
										<td>홍길동</td>
										<td>35</td>
										<td>남</td>
										<td><button type="submit" class="btn btn-xs"
												onclick="cancel();">취소</button></td>
									</tr>
									<tr>
										<td>3</td>
										<td>홍길동</td>
										<td>32</td>
										<td>여</td>
										<td><button type="submit" class="btn btn-xs"
												onclick="cancel();">취소</button></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary"
								data-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div>
			
		</div>
		<div class="col-md-2 sidebar2">
			<p>관리메모</p>
		</div>
		
	</div>


	<!-- Javascript -->
	<script src="../assets/js/jquery.min.js"></script>
	<script src="../assets/js/bootstrap.min.js"></script>

</body>
</html>