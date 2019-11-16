<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../assets/inc/css.jsp" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/HG/Join/join2.css">


<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
   <script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
      function cancel() {
         if (confirm("정말 취소하시겠습니까?") == true) {
            alert("취소되었습니다.");
         } else {
            return;
         }
         location.href="${pageContext.request.contextPath}";
      }

      function ok() {
         if (confirm("중복확인 하시겠습니까?") == true) {
            alert("사용가능한 아이디입니다.");
         } else {
            return;
         }

      }
      
      $(document).ready(function() {
		   $("#btn1").click(function(){
		      
		      if($("#id").val() == ""){
		         alert("아이디를 입력해주세요");
		      }else if($("#pw").val() == ""){
		         alert("비밀번호를 입력해주세요");
		      }else if($("#pw1").val() == ""){
			         alert("비밀번호를 한번 더 입력해주세요");
		      } else if($("#name").val() == ""){
		         alert("이름을 입력해주세요");
		      } else if($("#birthdate").val() == ""){
		           alert("년도를 선택해주세요");
		      } else if($("#birthdate1").val() == ""){
		           alert("월을 선택해주세요");
		      } else if($("#birthdate2").val() == ""){
		           alert("일을 선택해주세요");
		        } else if($("#gender").val() == ""){
		           alert("성별을 선택해주세요");
		        } else if($("#marry").val() == ""){
		           alert("결혼여부를 선택해주세요");
		        }   else if($("#phone").val() == ""){
			           alert("휴대폰번호를 입력해주세요");
		        } else if($("#email").val() == "") {
		        	alert("이메일을 입력해주세요");
		        } else if($("#sample6_address").val() == "") {
		        	alert("주소를 입력해주세요");
		        } else if($("#job").val() == "") {
		        	alert("직업을 입력해주세요");
		        } else if($("#academic").val() == "") {
		        	alert("최종학력을 입력해주세요");
		        } else if(confirm("완료하시겠습니까?") == true){
		        	location.href="${pageContext.request.contextPath}/_join/join3_HG.do";
		      } else {
		         return;
		      }
		      
		   });

		});
   </script>



<meta charset="utf-8" />
<title>연-결</title>
</head>
<body>
   <jsp:include page="../assets/inc/top.jsp" />



   <!-- 변경사항  -->


   <!-- 상단 이미지 ( 다른 이미지 저장 시 src 변경 이름 ) -->
   <div class="boximg">
      <img src="${pageContext.request.contextPath}/assets/img/joinimg1.PNG" alt="연-결" class="img-responsive" />
   </div>
   <!-- 상단 이미지 끝 -->

   <div class="col-md-2">
      <!-- 패널 타이틀1 -->
      <div class="left sidebar1">
         <h3 class="title">회원가입</h3>
         <!-- 사이드바 메뉴목록1 -->
         <div class="list-group">
					<a href="${pageContext.request.contextPath}/_join/join1_HG.do"
						class="list-group-item btncolor">회원가입</a> <a
						href="${pageContext.request.contextPath}/_login/login_HG.do"
						class="list-group-item">로그인</a> <a
						href="${pageContext.request.contextPath}/_findAccount/FindId_GD.do"
						class="list-group-item">ID/PW 찾기</a>
				</div>
      </div>
   </div>



   <h2 class="col-md-10">
      <strong>회원가입</strong>
   </h2>
   <h4 class="col-md-10">기본 가입정보 입력</h4>
   <div class="col-md-9 content">

      <div class="box10">

         <table>
            <tbody>

               <tr>
                        <td class="box11" >아이디</td>
                        <td class="box12" colspan="3" ><input class="text4"
                            type="text" id="id"/>&nbsp;&nbsp;&nbsp;
                            <button class="btn btn-default" onclick="ok()"
                                style="height: 30px; width: 80px;">중복확인</button></td>
                    </tr>

                    <tr>
                        <td class="box11" >비밀번호</td>
                        <td class="box12" colspan="3" ><input class="text4"
                            type="password" id="pw"/></td>
                    </tr>

                    <tr>
                        <td class="box11" >비밀번호 확인</td>
                        <td class="box12" colspan="3" ><input class="text4"
                            type="password" id="pw1"/></td>
                    </tr>

                    <tr>
                        <td class="box11" >이름</td>
                        <td class="box12"><input class="text4" type="text" id="name"></td>

                        <td class="box13" >생년월일</td>
                        <td class="box14"><select name="year"
                            style="width: 59px; height: 23px;" id="birthdate">
                                <option value="">년도</option>
                                <option value="1995">1995</option>
                                <option value="1994">1994</option>
                                <option value="1993">1993</option>
                                <option value="1992">1992</option>
                                <option value="1991">1991</option>
                                <option value="1990">1990</option>
                                <option value="1989">1989</option>
                                <option value="1988">1988</option>
                                <option value="1987">1987</option>
                                <option value="1986">1986</option>
                                <option value="1985">1985</option>
                                <option value="1984">1984</option>
                                <option value="1983">1983</option>
                                <option value="1982">1982</option>
                                <option value="1981">1981</option>
                                <option value="1980">1980</option>
                                <option value="1979">1979</option>
                                <option value="1978">1978</option>
                                <option value="1977">1977</option>
                                <option value="1976">1976</option>
                                <option value="1975">1975</option>
                        </select> <select name="birthmm" style="width: 59px; height: 23px;" id="birthdate1">
                                <option value="">월</option>
                                <option value="01">1</option>
                                <option value="02">2</option>
                                <option value="03">3</option>
                                <option value="04">4</option>
                                <option value="05">5</option>
                                <option value="06">6</option>
                                <option value="07">7</option>
                                <option value="08">8</option>
                                <option value="09">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                        </select> <select name="daymm" style="width: 59px; height: 23px;" id="birthdate2">
                                <option value="">일</option>
                                <option value="01">1</option>
                                <option value="02">2</option>
                                <option value="03">3</option>
                                <option value="04">4</option>
                                <option value="05">5</option>
                                <option value="06">6</option>
                                <option value="07">7</option>
                                <option value="08">8</option>
                                <option value="09">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                                <option value="13">13</option>
                                <option value="14">14</option>
                                <option value="15">15</option>
                                <option value="16">16</option>
                                <option value="17">17</option>
                                <option value="18">18</option>
                                <option value="19">19</option>
                                <option value="20">20</option>
                                <option value="21">21</option>
                                <option value="22">22</option>
                                <option value="23">23</option>
                                <option value="24">24</option>
                                <option value="25">25</option>
                                <option value="26">26</option>
                                <option value="27">27</option>
                                <option value="28">28</option>
                                <option value="29">29</option>
                                <option value="30">30</option>
                                <option value="31">31</option>
                        </select></td>
                    </tr>

                    <tr>
                        <td class="box11">성별</td>
                        <td class="box12"><input class="text4" type="radio"
                            name="gender" id="gender" checked  /> 남자 &nbsp;&nbsp;<input type="radio"
                            name="gender" /> 여자</td>

                        <td class="box13">결혼여부</td>
                        <td class="box14"><input class="text4" type="radio"
                            name="marry" id="marry" checked /> 초혼&nbsp;&nbsp; <input type="radio"
                            name="marry" /> 재혼</td>
                    </tr>

                    <tr>
                        <td class="box11">휴대폰번호</td>
                        <td class="box12"><input class="text4" type="text" id="phone" /></td>

                        <td class="box13">전화번호</td>
                        <td class="box14"><input class="text4" type="text" id="tel" /></td>
                    </tr>

                    <tr>
                        <td class="box11">이메일</td>
                        <td class="box12" colspan="3"><input class="text4"
                            type="text" /> @ <input class="text4" type="text" id="email"/></td>
                    </tr>

               <tr>
                  <td class="box11" rowspan="3">주소</td>
                  <td class="box12" colspan="3"><input type="text"
                     id="sample6_postcode" placeholder="우편번호"> <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br></td>
               </tr>
               <tr>
                  <td class="box12" colspan="2"><input type="text" id="sample6_address" placeholder="주소" size="50"></td>
                  <td class="box12"><input type="text" id="sample6_extraAddress" placeholder="동/읍/리"></td>
               </tr>
               <tr>
                  <td class="box12"><input type="text" id="sample6_detailAddress" placeholder="상세주소" size="50"></td>
         

               </tr>

                <tr>
                        <td class="box11">직업</td>
                        <td class="box12"><input class="text4" type="text" id="job"/></td>

                        <td class="box13">학력</td>
                        <td class="box14"><input class="text4" type="text" id="academic"/></td>
                    </tr>

                    <tr>
                        <td class="box11">가입경로</td>
                        <td class="box12" colspan="3" style="text-align: center;"><input
                            class="text4" type="checkbox" name="box" value="route" />지인소개
                            &nbsp; &nbsp; &nbsp;<input type="checkbox" name="box"
                            value="route1" />광고 &nbsp; &nbsp; &nbsp;<input type="checkbox"
                            name="box" value="route2" />매니저권유 &nbsp; &nbsp; &nbsp;<input
                            type="checkbox" name="box" value="route3" />인터넷검색</td>
                    </tr>
            </tbody>
         </table>
      </div>

      <div class="buttom">
         <br>
         <button class="btn btn-default" onclick="cancel()"
            style="height: 30px; width: 80px;">취소</button>
         &nbsp;&nbsp;&nbsp;
         <button class="btn btn-default" onclick="location.href ='${pageContext.request.contextPath}/_join/join2_HG.do'"
            style="height: 30px; width: 80px;">초기화</button>
         &nbsp;&nbsp;&nbsp;
         <button class="btn btn-default" id="btn1"
            style="height: 30px; width: 80px;">완료</button>
      </div>


   </div>



   <!-- 변경 사항 -->

   <jsp:include page="../assets/inc/footer.jsp" />
</body>

</html>