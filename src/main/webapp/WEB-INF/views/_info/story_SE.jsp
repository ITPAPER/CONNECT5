<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html>
<head>
<jsp:include page="../assets/inc/css.jsp" />

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/SE/Info/notice.css">

<meta charset="utf-8" />
<title>연-결</title>
</head>
<body>
	<jsp:include page="../assets/inc/top.jsp" />

	<!-- 상단 이미지 ( 다른 이미지 저장 시 src 변경 이름 ) -->
	<div class="boximg">
		<img src="${pageContext.request.contextPath}/assets/img/story1.jpg" alt="연-결"
			class="img-responsive" />
	</div>
	<!-- 상단 이미지 끝 -->

	<div class="col-md-2">
		<!-- 패널 타이틀1 -->
		<div class="left sidebar1">
			<h3 class="title">연-결 소개</h3>
			<!-- 사이드바 메뉴목록1 -->
			<div class="list-group">
				<a href="${pageContext.request.contextPath}/_info/IntroWebsite_YB.do" class="list-group-item">사이트 소개</a>
	            <a href="${pageContext.request.contextPath}/_info/Greetings_YB.do" class="list-group-item">연-결 인사말</a>
	            <a href="${pageContext.request.contextPath}/_info/manager_HG.do" class="list-group-item">커플 매니저</a>
	            <a href="${pageContext.request.contextPath}/_info/story_SE.do" class="list-group-item btncolor">연-결 성혼스토리</a>
	            <a href="${pageContext.request.contextPath}/_info/notice_SE.do" class="list-group-item">공지사항</a>
	            <a href="${pageContext.request.contextPath}/_info/partner_HG.do" class="list-group-item">연-결 파트너</a>
	            <a href="${pageContext.request.contextPath}/_info/map_GD.do" class="list-group-item">오시는 길</a>
			</div>
		</div>
	</div>


	<h3 class="col-md-10">연-결 성혼스토리</h3>
	<div class="col-md-10 text1">
		<h5>실제 성혼스토리</h5>
	</div>

	<form method="get" action="${pageContext.request.contextPath}/_info/story_SE.do">
	<div class="search">
		<select name="keyField" style="margin-top:7px; height:22px;">
			<option value="0">---선택---</option>
			<option value="title">제목</option>
			<option value="content">내용</option>
		</select> 
		<input type="text" name="KeyWord" /> 
		<input type="button" id="btn" value="검색" />
	</div>
	</form>

	<div class="col-md-10 content">

		<div class="table-responsive">
			<table class="table table-striped table-bordered table-hover">
				<thead>
					<tr>
						<th id="num">번호</th>
						<th>제목</th>
						<th id="date">작성자</th>
						<th id="date">등록일</th>
					</tr>
				</thead>
				<tbody>	
					<c:choose>
                <%-- 조회결과가 없는 경우 --%>
                <c:when test="${output == null || fn:length(output) == 0}">
                    <tr>
                        <td colspan="4" align="center">조회결과가 없습니다.</td>
                    </tr>
                </c:when>
                <%-- 조회결과가 있는  경우 --%>
                <c:otherwise>
                    <%-- 조회 결과에 따른 반복 처리 --%>
                    <c:set var="num" value="${pageData.totalCount - ((pageData.nowPage - 1) * pageData.listCount) - 3}"/>
                    <c:forEach var="item" items="${output}" varStatus="status">         
                        <c:set var="title" value="${item.title}" />
                        <c:set var="userId" value="${item.userId}" />
                        <c:set var="creationDate" value="${item.creationDate}" />                  
                       
                        
                        <%-- 검색어가 있다면? --%>
                        <c:if test="${keyword != ''}">
                            <%-- 검색어에 <mark> 태그를 적용하여 형광팬 효과 준비 --%>
                            <c:set var="mark" value="<mark>${keyword}</mark>" />
                            <%-- 출력을 위해 준비한 학과이름과 위치에서 검색어와 일치하는 단어를 형광팬 효과로 변경 --%>
                            <c:set var="title" value="${fn:replace(title, keyword, mark)}" />
                           
                        </c:if>
                        
                        <%-- 상세페이지로 이동하기 위한 URL --%>
                        <c:url value="/_info/storyRead_SE.do" var="viewUrl">
                            <c:param name="boardId" value="${item.boardId}" />
                        </c:url>
                        
                        <tr>
                        	<td>${num}</td>
                            <td><a href="${viewUrl}">${title}</a></td>
                            <td>${item.userId}</td>
                            <td>${item.creationDate}</td>
                        </tr>
                        <c:set var="num" value="${num-1}" ></c:set>
                    </c:forEach>
                </c:otherwise>
            </c:choose>
				</tbody>
			</table>
		</div>
		<!-- 페이지 번호 구현 -->
    <%-- 이전 그룹에 대한 링크 --%>
    <c:choose>
        <%-- 이전 그룹으로 이동 가능하다면? --%>
        <c:when test="${pageData.prevPage > 0}">
            <%-- 이동할 URL 생성 --%>
            <c:url value="/_info/story_SE.do" var="prevPageUrl">
                <c:param name="page" value="${pageData.prevPage}" />
                <c:param name="keyword" value="${keyword}" />
            </c:url>
            <a href="${prevPageUrl}">[이전]</a>
        </c:when>
        <c:otherwise>
            [이전]
        </c:otherwise>
    </c:choose>
    
    <%-- 페이지 번호 (시작 페이지 부터 끝 페이지까지 반복) --%>
    <c:forEach var="i" begin="${pageData.startPage}" end="${pageData.endPage}" varStatus="status">
        <%-- 이동할 URL 생성 --%>
        <c:url value="/_info/story_SE.do" var="pageUrl">
            <c:param name="page" value="${i}" />
            <c:param name="keyword" value="${keyword}" />
        </c:url>
        
        <%-- 페이지 번호 출력 --%>
        <c:choose>
            <%-- 현재 머물고 있는 페이지 번호를 출력할 경우 링크 적용 안함 --%>
            <c:when test="${pageData.nowPage == i}">
                <strong>[${i}]</strong>
            </c:when>
            <%-- 나머지 페이지의 경우 링크 적용함 --%>
            <c:otherwise>
                <a href="${pageUrl}">[${i}]</a>
            </c:otherwise>
        </c:choose>
    </c:forEach>
    
    <%-- 다음 그룹에 대한 링크 --%>
    <c:choose>
        <%-- 다음 그룹으로 이동 가능하다면? --%>
        <c:when test="${pageData.nextPage > 0}">
            <%-- 이동할 URL 생성 --%>
            <c:url value="/_info/story_SE.do" var="nextPageUrl">
                <c:param name="page" value="${pageData.nextPage}" />
                <c:param name="keyword" value="${keyword}" />
            </c:url>
            <a href="${nextPageUrl}">[다음]</a>
        </c:when>
        <c:otherwise>
            [다음]
        </c:otherwise>
    </c:choose>
	</div>
<jsp:include page="../assets/inc/footer.jsp" />
</body>
</html>