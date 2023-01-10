<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='application' class='hitstd.group.tool.database.DBConfig' />
<html>
<body>

	<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement();
	String creatorAcc  = new String(request.getParameter("creatorEmail").getBytes("8859_1"), "utf-8");
	String creatorPwd = new String(request.getParameter("creatorPwd").getBytes("8859_1"), "utf-8");	
	String creatorName  = new String(request.getParameter("creatorName").getBytes("8859_1"), "utf-8");
	String contactPerson  = new String(request.getParameter("contactPerson").getBytes("8859_1"), "utf-8");
	String contactPhone  = new String(request.getParameter("contactPhone").getBytes("8859_1"), "utf-8");
	smt.execute("INSERT INTO creator (creatorEmail, creatorPwd, creatorName, contactPerson, contactPhone) VALUES(N'"+creatorAcc+"',N'"+creatorPwd+"',N'"+creatorName+"',N'"+contactPerson+"',N'"+contactPhone+"')");
	con.close();
	response.sendRedirect("CreatorLogin.jsp");
	%>
	
</body>
</html>