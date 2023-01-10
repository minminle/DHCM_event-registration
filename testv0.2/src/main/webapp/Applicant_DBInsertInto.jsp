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
	String applicantName  = new String(request.getParameter("applicantName").getBytes("8859_1"), "utf-8");
	String applicanteMail = new String(request.getParameter("eMail").getBytes("8859_1"), "utf-8");	
	String applicantPhone  = new String(request.getParameter("phone").getBytes("8859_1"), "utf-8");
	String applicantIdentity = new String(request.getParameter("identity").getBytes("8859_1"), "utf-8");
	smt.execute("INSERT INTO applicant (applicantName, eMail, phone, identity) VALUES(N'"+applicantName+"',N'"+applicanteMail+"',N'"+applicantPhone+"','"+applicantIdentity+"')");
	con.close();
	response.sendRedirect("Index.jsp");
%>

</body>
</html>