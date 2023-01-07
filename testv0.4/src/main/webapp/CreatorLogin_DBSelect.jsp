<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />
<%
if(request.getParameter("creatorEmail") !=null &&
	request.getParameter("creatorPwd") !=null){
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement();
	String getMemberData = "SELECT * FROM creator WHERE creatorEmail='"+
			request.getParameter("creatorEmail")+"' AND creatorPwd='" +
			request.getParameter("creatorPwd")+"'";
	ResultSet members = smt.executeQuery(getMemberData);
	if(members.next()){
		session.setAttribute("accessId",request.getParameter("creatorEmail"));
		//session.setMaxInactiveInterval(20); 自動登出
		response.sendRedirect("UnitInfo.jsp");
	}else
		out.println("CreatorLogin.jsp?status=loginerror");
}
%>