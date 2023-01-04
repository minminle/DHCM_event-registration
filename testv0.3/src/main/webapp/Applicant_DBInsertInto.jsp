<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<jsp:useBean id='objDBConfig' scope='application' class='histd.group.tool.database.DBConfig' />
<html>
<head>
</head>
<body>
	<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement();
	String applicantID  = new String(request.getParameter("applicantID"));
	String applicantphone = new String(request.getParameter("phone"));	
	String applicantName  = new String(request.getParameter("applicantName"));
	String applicanteMail = new String(request.getParameter("eMail"));
	smt.execute("INSERT INTO applicant (applicantID, applicantName, phone, eMail) VALUES('"+applicantID+"','"+applicantName+"','"+applicantphone+"','"+applicanteMail+"')");
	con.close();
	response.sendRedirect("Index.jsp");
	%>



</body>
</html>