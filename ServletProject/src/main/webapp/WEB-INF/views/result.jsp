<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 결과</title>
</head>
<body>
    <%--

        <% %> : 스크립틀릿 -> 자바코드 작성
        <%= %> : 표현식 -> 자바, 서버에서 받아온 값을 표현할 때 , 출력할 때

    --%>
    <h3 style="color: hotpink;"><%= request.getParameter("inputName") %>님의 가입을 환영합니다.</h3>
    
    <ul>
        <li>id : <%= request.getParameter("inputId")%></li>
        <li>pw : <%= request.getParameter("inputPw")%></li>
    </ul>

	<% if( request.getParameter("intro").equals("") ) {%>
	<h4>자기소개</h4>
	<p>
		<%= request.getParameter("intro") %>
	</p>
	<% } %>

    <h4>자기소개</h4>
    <p>안녕하세요?</p>


</body>
</html>