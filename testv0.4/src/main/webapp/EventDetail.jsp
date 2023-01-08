<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file = "menu.jsp" %>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='application' class='hitstd.group.tool.database.DBConfig' />
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>活動詳細資訊</title>
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
		//out.println("Con= "+con);
		Statement smt= con.createStatement();
		String sql = "SELECT * FROM eventInformation";
		ResultSet rs = smt.executeQuery(sql);
		rs.next();
	%>
	
	<div class="container-fluid">
        <main class="tm-main">
            <div class="row tm-row tm-mb-45">
                <div class="col-12">
                    <hr class="tm-hr-primary tm-mb-55">
                </div>
            </div>
            	<div class="col-12">
            	<img src="<%=rs.getString("eventPic") %>" alt="">
            	</div>
            	
				<div class="col-sm-9"><h4>
		    		<label for="creatorName" class="col-sm-3 col-form-label tm-color-primary">活動名稱</label>
		    		<%=rs.getString("eventTitle") %></h4>
		    	</div>
		    	
		    	<div class="col-sm-9"><h4>
		    		<label for="creatorName" class="col-sm-3 col-form-label tm-color-primary">主辦單位</label>
		    		<%=rs.getString("host") %></h4>
		    	</div>
		    	
		    	<div class="col-sm-9"><h4>
		    		<label for="creatorName" class="col-sm-3 col-form-label tm-color-primary">活動簡介</label>
		    		<%=rs.getString("eventIntro") %></h4>
		    	</div>
		    	
		    	<div class="col-sm-9"><h4>
		    		<label for="creatorName" class="col-sm-3 col-form-label tm-color-primary">活動日期</label>
		    		<%=rs.getString("eventDate") %></h4>
		    	</div>
		    	
		    	<div class="col-sm-9"><h4>
		    		<label for="creatorName" class="col-sm-3 col-form-label tm-color-primary">活動地點</label>
		    		<%=rs.getString("eventPlace") %></h4>
		    	</div>
		    	
		    	<div class="col-sm-9"><h4>
		    		<label for="creatorName" class="col-sm-3 col-form-label tm-color-primary">活動時間</label>
		    		<%=rs.getString("eventStart") %>～<%=rs.getString("eventEnd") %></h4>
		    	</div>
				
				<div class="col-sm-9"><h4>
		    		<label for="creatorName" class="col-sm-3 col-form-label tm-color-primary">報名截止日期</label>
		    		<%=rs.getString("endRegistration") %></h4>
		    	</div>
		    	
		    	<div class="col-sm-9"><h4>
		    		<label for="creatorName" class="col-sm-3 col-form-label tm-color-primary">名額限制</label>
		    		<%=rs.getString("quota") %></h4>
		    	</div>
	
	
	
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