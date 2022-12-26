<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<html>

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>活動報名平台-註冊帳號</title>
	<link rel="stylesheet" href="fontawesome/css/all.min.css"> <!-- https://fontawesome.com/ -->
	<link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet"> <!-- https://fonts.google.com/ -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/templatemo-xtra-blog.css" rel="stylesheet">
</head>
<body>

	<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\s0979\\OneDrive\\文件\\GitHub\\DHCM_take-a-leave\\testv0.3\\src\\main\\webapp\\dhcm.accdb;");
	Statement smt= con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	String eMail =request.getParameter("eMail");
	String creatorPwd =request.getParameter("creatorPwd");
	String creattorName =request.getParameter("creattorName");
	//String sql;s
	//sql="INSERT INTO member VALUES('"+eMail+"','"+creatorPwd+"')";
	smt.execute("INSERT INTO creator (eMail, creatorPwd, creatorName ) VALUES('"+eMail+"','"+creatorPwd+"','"+creatorName+"')");
	con.close();
	response.sendRedirect("https://www.youtube.com/");
	%>
	
</body>
</html>