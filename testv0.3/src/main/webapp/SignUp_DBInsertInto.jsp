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
	String creatorAcc  = new String(request.getParameter("creatorEmail"));
	String creatorPwd = new String(request.getParameter("creatorPwd"));	
	String creatorName  = new String(request.getParameter("creatorName"));
	smt.execute("INSERT INTO creator (creatorEmail, creatorPwd, creatorName) VALUES(N'"+creatorAcc+"',N'"+creatorPwd+"',N'"+creatorName+"')");
	con.close();
	response.sendRedirect("EventPublished.jsp");
	%>
	
</body>
</html>