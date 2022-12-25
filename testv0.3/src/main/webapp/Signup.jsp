<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
	String creatoracc =request.getParameter("eMail");
	String creatorpwd =request.getParameter("creatorPwd");
	//String sql;s
	//sql="INSERT INTO member VALUES('"+eMail+"','"+creatorPwd+"')";
	smt.execute("INSERT INTO member (eMail, creatorPwd) VALUES('"+eMail+"','"+creatorPwd+"')");
	con.close();
	response.sendRedirect("Activities published.jsp");
	%>
	
</body>
</html>