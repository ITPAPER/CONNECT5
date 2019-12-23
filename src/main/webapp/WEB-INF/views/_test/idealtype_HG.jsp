<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../assets/inc/css.jsp" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/HG/Test/idealtype.css">

<meta charset="utf-8" />
<title>연-결</title>
</head>
<body>

	<jsp:include page="../assets/inc/top.jsp" />




	<!-- 변경사항  -->


	<!-- 상단 이미지 ( 다른 이미지 저장 시 src 변경 이름 ) -->
	<div class="boximg">
		<img
			src="${pageContext.request.contextPath}/assets/img/idealtypeimg.PNG"
			alt="연-결" class="img-responsive" />
	</div>
	<!-- 상단 이미지 끝 -->

	<div class="col-md-2">
		<!-- 패널 타이틀1 -->
		<div class="left sidebar1">
			<h3 class="title">연-결 테스트</h3>
			<!-- 사이드바 메뉴목록1 -->
			<div class="list-group">
				<a href="${pageContext.request.contextPath}/_test/propensity1_HG.do"
					class="list-group-item">연애성향 테스트</a> <a
					href="${pageContext.request.contextPath}/_test/idealtype_HG.do"
					class="list-group-item btncolor">이상형 찾기</a> <a
					href="${pageContext.request.contextPath}/_test/lovescore1_HG.do"
					class="list-group-item">나의 연애 매력</a>
			</div>
		</div>
	</div>


	<h3 class="col-md-10">이상형 찾기</h3>
	<div class="col-md-10 text1">
		<h5>연-결 회원님들 중에 이상형을 찾아보세요!!!</h5>
	</div>

	<div class="col-md-9 content">

		<div class="media">
			<div class="testimg">
				<img
					src="${pageContext.request.contextPath}/assets/img/testimg1.PNG">
			</div>
			<br /> <br />
			<form method="get"
				action="${pageContext.request.contextPath}/_test/idealtype_ok.do">
				<table class="tabl">
					<tr id="test11">
						<td id="title">성별</td>
						<td>&nbsp; &nbsp;<input type="radio" name="Gender" value="0"
							id="Gender" checked>남자&nbsp;&nbsp; <input type="radio"
							name="Gender" id="Gender" value="1">여자
						</td>
					</tr>

					<tr id="test10">
						<td id="title">나이</td>
						<td>&nbsp; &nbsp;<input type="radio" name="BirthDate"
							id="BirthDate" value="무관">무관 &nbsp; &nbsp;&nbsp;&nbsp; <input
							type="radio" name="BirthDate" value="950427" id="BirthDate"
							checked>20대 초중반 &nbsp; &nbsp;&nbsp;&nbsp; <input
							type="radio" name="BirthDate" value="20대 중후반" id="BirthDate">20대
							중후반&nbsp; &nbsp;&nbsp;&nbsp; <input type="radio" name="BirthDate"
							value="30대 초중반" id="BirthDate">30대 초중반 <br /> <br />&nbsp;&nbsp;
							<input type="radio" name="BirthDate" value="30대 중후반"
							id="BirthDate">30대 중후반 &nbsp; &nbsp;&nbsp;&nbsp; <input
							type="radio" name="BirthDate" value="40대 초중반" id="BirthDate">40대
							초중반 &nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="BirthDate"
							value="40대 중후반" id="BirthDate">40대 중후반
						</td>
					</tr>

					<tr id="test10">
						<td id="title">결혼 여부</td>
						<td>&nbsp; &nbsp;<input type="radio" name="IsMarried"
							id="IsMarried" value="2">무관&nbsp;&nbsp; <input
							type="radio" name="IsMarried" value="0" id="IsMarried" checked>초혼&nbsp;&nbsp;
							<input type="radio" name="IsMarried" value="1" id="IsMarried">재혼
						</td>
					</tr>

					<tr id="test10">
						<td id="title">데이트 선호 <br />지역
						</td>
						<td>&nbsp; &nbsp;<input type="radio" name="Date_Loc"
							value="무관" id="Date_Loc">무관 &nbsp;&nbsp;&nbsp;&nbsp; <input
							type="radio" name="Date_Loc" value="서울" id="Date_Loc" checked>서울
							&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="Date_Loc"
							value="경기도" id="Date_Loc">경기도 &nbsp;&nbsp;&nbsp;&nbsp; <input
							type="radio" name="Date_Loc" value="강원도" id="Date_Loc">강원도
							&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="Date_Loc"
							value="충청도" id="Date_Loc">충청도 &nbsp;&nbsp; <input
							type="radio" name="residence" value="전라도" id="Date_Loc">전라도
							&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="Date_Loc"
							value="경상도" id="Date_Loc">경상도 &nbsp;&nbsp;&nbsp;&nbsp; <input
							type="radio" name="Date_Loc" value="제주도" id="Date_Loc">제주도
						</td>
					</tr>

					<tr id="test10">
						<td id="title">키</td>
						<td>&nbsp; &nbsp;<input type="radio" name="Height" value="0"
							id="Height">무관&nbsp;&nbsp; <input type="radio"
							name="Height" value="140" id="Height">150cm이하&nbsp;&nbsp;
							<input type="radio" name="Height" value="150" id="Height" checked>151~160cm&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" name="Height" value="160" id="Height">161~170cm&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" name="Height" value="170" id="Height">171~180cm&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" name="Height" value="180" id="Height">181이상cm
						</td>
					</tr>

					<tr id="test10">
						<td id="title">학력</td>
						<td>&nbsp; &nbsp;<input type="radio" name="Edu_Lv "
							value="무관" id="Edu_Lv">무관&nbsp;&nbsp; <input type="radio"
							name="Edu_Lv " value="중졸" id="Edu_Lv">중졸&nbsp;&nbsp; <input
							type="radio" name="Edu_Lv " value="고졸" id="Edu_Lv">고졸&nbsp;&nbsp;
							<input type="radio" name="Edu_Lv " value="대졸" id="Edu_Lv" checked>대졸&nbsp;&nbsp;
							<input type="radio" name="Edu_Lv " value="석사이상" id="Edu_Lv">석사이상&nbsp;&nbsp;
						</td>
					</tr>

					<tr id="test10">
						<td id="title">스타일</td>
						<td>&nbsp; &nbsp;<input type="radio" name="Style" value="무관"
							id="Style">무관&nbsp;&nbsp; <input type="radio"
							name="Style" value="귀여움" id="Style">귀여움&nbsp;&nbsp; <input
							type="radio" name="Style" value="남성스러움" id="Style" checked>남성스러움&nbsp;&nbsp;
							<input type="radio" name="Style" value="여성스러움" id="Style">여성스러움&nbsp;&nbsp;
							<input type="radio" name="Style" value="마름" id="Style">마름&nbsp;&nbsp;
							<input type="radio" name="Style" value="통통" id="Style">통통
						</td>
					</tr>

					<tr id="test10">
						<td id="title">성격</td>
						<td>&nbsp; &nbsp;<input type="radio" name="Personality"
							value="무관" id="Personality">무관&nbsp;&nbsp; <input
							type="radio" name="Personality" value="외향적 " id="Personality"
							checked>외향적&nbsp;&nbsp; <input type="radio"
							name="Personality" value="내향적 " id="Personality">내향적&nbsp;&nbsp;
							<input type="radio" name="Personality" value="감성적 "
							id="Personality">감성적&nbsp;&nbsp; <input type="radio"
							name="Personality" value="직관적 " id="Personality">직관적&nbsp;&nbsp;
							<input type="radio" name="Personality" value="자상함"
							id="Personality">자상함
						</td>
					</tr>

					<tr id="test10">
						<td id="title">혈액형</td>
						<td>&nbsp; &nbsp;<input type="radio" name="BldType"
							value="무관" id="BldType">무관&nbsp;&nbsp; <input
							type="radio" name="BldType" value="A형" id="BldType" checked>A형&nbsp;&nbsp;
							<input type="radio" name="BldType" value="B형" id="BldType">B형&nbsp;&nbsp;
							<input type="radio" name="BldType" value="AB형" id="BldType">AB형&nbsp;&nbsp;
							<input type="radio" name="BldType" value="O형" id="BldType">O형
						</td>
					</tr>

					<tr id="test10">
						<td id="title">연봉</td>
						<td>&nbsp; &nbsp;<input type="radio" name="Sal_Annual"
							value="무관" id="Sal_Annual">무관&nbsp;&nbsp; <input
							type="radio" name="Sal_Annual" value="3000이하 " id="Sal_Annual"
							checked>3000이하&nbsp;&nbsp; <input type="radio"
							name="Sal_Annual" value="5000이하 " id="Sal_Annual">5000이하&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" name="Sal_Annual" value="7000이하 "
							id="Sal_Annual">7000이하&nbsp;&nbsp;&nbsp;&nbsp; <input
							type="radio" name="Sal_Annual" value="1억이상" id="Sal_Annual">1억이상
						</td>
					</tr>
				</table>
			</form>
			<br />
			<div class="b1">
				<button class="btn btn-default" style="height: 30px; width: 80px;"
					data-toggle="modal" data-target="#myModal" id="showmodal">검색하기</button>
			</div>
		</div>

	</div>

	<!-- ------------------ㅡmodal------------------------------------------------------------------------- -->

	<div class="modal fade" id="myModal">
		<div class="modal-dialog" style="max-width: 100%; width: 1200px;">
			<div class="modal-content">
				<div class="modal-header">
					<table class="table table-striped table-bordered table-hover">

						<thead>
							<tr class="text-center">

								<th id="num" style="text-align: center;">번호</th>
								<th id="name" style="text-align: center;" name="UserName">이름</th>
								<th id="gender" style="text-align: center;" name="Gender">성별</th>
								<th id="age" style="text-align: center;" name="BirthDate">나이</th>
								<th id="marry" style="text-align: center;" name="IsMarried">결혼여부</th>
								<th id="residence" style="text-align: center;" name="Date_Loc">데이트
									선호 지역</th>
								<th id="height" style="text-align: center;" name="Height">키</th>
								<th id="academic" style="text-align: center;" name="Edu_Lv">학력</th>
								<th id="style" style="text-align: center;" name="Style">스타일</th>
								<th id="personality" style="text-align: center;"
									name="Personality">성격</th>
								<th id="blood" style="text-align: center;" name="BldType">혈액형</th>
								<th id="income" style="text-align: center;" name="Sal_Annual">연봉</th>
							</tr>
						</thead>
						<tbody id="tbody">
							<tr>
							</tr>
						</tbody>

					</table>
					<ul class="pagination pagination-sm">
						<li class="disabled"><a href="#">&laquo;</a></li>
						<li class="active"><span>1 <span class="sr-only">(current)</span></span></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">&raquo;</a></li>
					</ul>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal"
						id="listmodal">확인</button>
				</div>
			</div>
		</div>
	</div>





	<!-- 변경 사항 -->

	<jsp:include page="../assets/inc/footer.jsp" />

	<script>
		$(function() {
			$('#showmodal')
					.click(
							function() {
								var UserName = $("[name=UserName]").val();
								var Gender = $("[name=Gender]:checked").val();
								var BirthDate = $("[name=BirthDate]:checked")
										.val();
								var IsMarried = $("[name=IsMarried]:checked")
										.val();
								var Date_Loc = $("[name=Date_Loc]:checked")
										.val();
								var Height = $("[name=Height]:checked").val();
								var Edu_Lv = $("[name=Edu_Lv]:checked").val();
								var Style = $("[name=Style]:checked").val();
								var Personality = $(
										"[name=Personality]:checked").val();
								var BldType = $("[name=BldType]:checked").val();
								var Sal_Annual = $("[name=Sal_Annual]:checked")
										.val();

								$
										.ajax({
											url : "${pageContext.request.contextPath}/_test/idealtype_ok.do",
											type : "GET",
											data : {
												Gender : Gender,
												BirthDate : BirthDate,
												IsMarried : IsMarried,
												Date_Loc : Date_Loc,
												Height : Height,
												Edu_Lv : Edu_Lv,
												Style : Style,
												Personality : Personality,
												BldType : BldType,
												Sal_Annual : Sal_Annual
											},
											dataType : 'json',
											success : function(Gender,
													BirthDate, IsMarried,
													Date_Loc, Height, Edu_Lv,
													Style, Personality,
													BldType, Sal_Annual) {

												console.log(Gender, BirthDate,
														IsMarried, Date_Loc,
														Height, Edu_Lv, Style,
														Personality, BldType,
														Sal_Annual);
												alert("확인");
												$("#tbody").html("");
												$
														.each(
																UserName,
																Gender,
																BirthDate,
																IsMarried,
																Date_Loc,
																Height,
																Edu_Lv,
																Style,
																Personality,
																BldType,
																Sal_Annual,
																function(index) {

																	$('#tbody')
																			.append(
																					"<tr><td>"
																							+ (index + 1)
																							+ "</td><td><a href='${pageContext.request.contextPath}/_test/idealtype_HG.do'>"
																							+ UserName[index].UserName
																							+ "</a></td><td>"
																							+ Gender[index].Gender
																							+ "</td><td>"
																							+ BirthDate[index].BirthDate
																							+ "</td><td>"
																							+ IsMarried[index].IsMarried
																							+ "</td><td>"
																							+ Date_Loc[index].Date_Loc
																							+ "</td></tr>"
																							+ Height[index].Height
																							+ "</td></tr>"
																							+ Edu_Lv[index].Edu_Lv
																							+ "</td></tr>"
																							+ Style[index].Style
																							+ "</td></tr>"
																							+ Personality[index].Personality
																							+ "</td></tr>"
																							+ BldType[index].BldType
																							+ "</td></tr>"
																							+ Sal_Annual[index].Sal_Annual
																							+ "</td></tr>");
																});
											},
											error : function() {
												alert("오류발생");
												console.log(data);
											}
										});
								$('#listModal').modal('show');

							});

		});
	</script>
</body>
</html>