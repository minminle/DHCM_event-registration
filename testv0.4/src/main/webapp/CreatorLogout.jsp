<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head><title>登出</title></head>
<body>
<%
if(session.getAttribute("accessName") !=null){
	session.removeAttribute("accessName");
	response.sendRedirect("Index.jsp");
}else{
	response.sendRedirect("CreatorLogin.jsp");
}
%>	
</body>
</html>