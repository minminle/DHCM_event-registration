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
	//String eventPic = new String(request.getParameter("eventPic").getBytes("8859_1"), "utf-8");
	String eventTitle = new String(request.getParameter("eventTitle").getBytes("8859_1"), "utf-8");
	String eventType = new String(request.getParameter("eventType").getBytes("8859_1"), "utf-8");
	String eventIntro = new String(request.getParameter("eventIntro").getBytes("8859_1"), "utf-8");
	String eventDate = new String(request.getParameter("eventDate").getBytes("8859_1"), "utf-8");
	String eventPlace = new String(request.getParameter("eventPlace").getBytes("8859_1"), "utf-8");
	String eventStart = new String(request.getParameter("eventStart").getBytes("8859_1"), "utf-8");
	String eventEnd = new String(request.getParameter("eventEnd").getBytes("8859_1"), "utf-8");
	String endRegistration = new String(request.getParameter("endRegistration").getBytes("8859_1"), "utf-8");
	String quota = new String(request.getParameter("quota").getBytes("8859_1"), "utf-8");
	smt.execute("INSERT INTO eventInformation (eventTitle, eventType, eventIntro, eventDate, eventPlace, eventStart, eventEnd, endRegistration, quota) VALUES(N'"+eventTitle+"',N'"+eventType+"',N'"+eventIntro+"',N'"+eventDate+"',N'"+eventPlace+"',N'"+eventStart+"',N'"+eventEnd+"',N'"+endRegistration+"',N'"+quota+"')");
	con.close();
	response.sendRedirect("CheckList.jsp");
	%>
		
</body>
</html>