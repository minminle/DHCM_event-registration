<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file ="menu.jsp" %>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />
<%--	<%
	if(request.getParameter("creatorEmail") !=null &&
		request.getParameter("creatorPwd") !=null){
		Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
		Statement smt= con.createStatement();
		String getpaperdata = "SELECT * FROM creator WHERE creatorEmail='"+
				request.getParameter("creatorEmail")+"' AND creatorPwd='" +
				request.getParameter("creatorPwd")+"'";
		ResultSet paperrs = smt.executeQuery(getpaperdata);
		if(paperrs.next()){
			session.setAttribute("accessID",request.getParameter("creatorEmail"));
			//session.setMaxInactiveInterval(20); 自動登出
			response.sendRedirect("UnitInfo.jsp");
		}else
			out.println("帳號密碼不符！請重新登入");
}
%>	--%>

<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>單位登入</title>
		<link rel="stylesheet" href="fontawesome/css/all.min.css"> <!-- https://fontawesome.com/ -->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap"> <!-- https://fonts.google.com/ -->
	    <link rel="stylesheet" href="css/bootstrap.min.css">
	    <link rel="stylesheet" href="css/templatemo-xtra-blog.css">
	</head>
	
	<body>
	<%request.setCharacterEncoding("UTF-8"); %>
	
	<div class="container-fluid">
        <main class="tm-main">
            <div class="row tm-row tm-mb-45">
                <div class="col-12">
                    <hr class="tm-hr-primary tm-mb-55">
                </div>
            </div>
            
            <!-- 登入帳號輸入區 -->
            <form method="POST" style="text-align:center" action="CreatorLogin_DBSelect.jsp">
				<div><h1><b>單位登入</b></h1></div>
				<br/>
				
				<div class="container">
					<label for="creatorEmail"><b><h3>帳&nbsp;&nbsp;號:&nbsp;</h3></b></label>
				    <input type="text" placeholder="輸入您的Gmail帳號..." name="creatorEmail" required>
						<br/>
						<br/>
				    <label for="creatorPwd"><b><h3>密&nbsp;&nbsp;碼:&nbsp;</h3></b></label>
				    <input type="password" placeholder="輸入您的密碼..." name="creatorPwd" required>
				        <br/>
				        <br/>
				    <h3>
					    <button type="submit" name="loginBtn" >登入</button>
					    <br/><br/>
					    <a href="SignUp.jsp" class="signbtn">註冊</a>			
				    </h3>
				</div>
		   </form>
                        
			<!-- 尾巴灰條 -->
	            <footer class="row tm-row">
	                <hr class="col-12">
	                <div class="col-md-6 col-12 tm-color-gray">
	                    Design by: 李嘉珉、孫合佳、楊宜蓁
	                </div>
	                
	                <div class="col-md-6 col-12 tm-color-gray tm-copyright">
	                    2023
	                </div>
	            </footer>
            
        </main>
	</div>	
	
	</body>
</html>