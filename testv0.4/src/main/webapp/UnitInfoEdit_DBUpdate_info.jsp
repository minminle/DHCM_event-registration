<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file ="menuCreator.jsp" %>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='application' class='hitstd.group.tool.database.DBConfig' />

<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>單位基本資料內容修改</title>
		<link rel="stylesheet" href="fontawesome/css/all.min.css"> <!-- https://fontawesome.com/ -->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap"> <!-- https://fonts.google.com/ -->
	    <link rel="stylesheet" href="css/bootstrap.min.css">
	    <link rel="stylesheet" href="css/templatemo-xtra-blog.css">
	</head>
	
	<body>
		<%request.setCharacterEncoding("UTF-8"); %>
		<%
			Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
			Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
			Statement smt= con.createStatement();
			String creatorName = new String(request.getParameter("creatorName"));
			String creatorEmail = new String(request.getParameter("creatorEmail"));
			String creatorPwd = new String(request.getParameter("creatorPwd"));
			String contactPerson = new String(request.getParameter("contactPerson"));
			String contactPhone = new String(request.getParameter("contactPhone"));
			smt.executeUpdate("UPDATE creator SET creatorName ='" + creatorName+"', creatorEmail ='" + creatorEmail+"', creatorPwd ='" + creatorPwd +"', contactPerson ='" + contactPerson +"', contactPhone ='" + contactPhone+"' WHERE creatorEmail ='" + session.getAttribute("accessID")+"'");
			response.sendRedirect("UnitInfo.jsp?creatorEmail="+session.getAttribute("accessID")+"");
		%>
	
	</body>
</html>