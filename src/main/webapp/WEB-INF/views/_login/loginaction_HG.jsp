<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%
request.setCharacterEncoding("utf-8");

String id = request.getParameter("user_id");
String pwd = request.getParameter("user_pw");

if(id.equals("admin") && pwd.equals("admin")){
   session.setAttribute("id", id);
   response.sendRedirect("/CONNECT5/_admin/admin_main_SE.do");
} else if(id.equals("") || pwd.equals("")){
   
} else {
	response.sendRedirect("/CONNECT5");
}

%>
<script>
alert("아이디/비밀번호를 입력해 주세요.");
location.href="${pageContext.request.contextPath}/_login/login_HG.do";
</script>


<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>