<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='application' class='hitstd.group.tool.database.DBConfig' />

<html>

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
	<title>活動報名平台-單位修改資料</title>
	<link rel="stylesheet" type="text/css" href="fontawesome/css/all.min.css?v=<?=time()?"> <!-- https://fontawesome.com/ -->
	<link rel="stylesheet" type="text/css" href="css/templatemo-xtra-blog.css?v=<?=time()?">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css?v=<?=time()?">
	<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap"> <!-- https://fonts.google.com/ -->
</head>
<body>

	<%request.setCharacterEncoding("UTF-8"); %>
	<header class="tm-header" id="tm-header">
        <div class="tm-header-wrapper">
            <button class="navbar-toggler" type="button" aria-label="Toggle navigation">
                <i class="fas fa-bars"></i>
            </button>
            
            <div class="tm-site-header">
                <div class="mb-3 mx-auto tm-site-logo"><i class="fas fa-times fa-2x"></i></div>            
                <h1 class="text-center">活動報名平台</h1>
            </div>
            
            <nav class="tm-nav" id="tm-nav">            
                <ul>
                    <li class="tm-nav-item active"><a href="UnitInformation.jsp" class="tm-nav-link">
                        <img src="img/Introduction_2.png" alt="Home" width="28" height="28">&nbsp;&nbsp;<b>基本資料</b></a></li>
                        
                    <li class="tm-nav-item"><a href="EventList.jsp" class="tm-nav-link">
                        <img src="img/Review_1.png" alt="Home" width="28" height="28">&nbsp;&nbsp;<b>活動清單與審核</b></a></li>
                        
                    <li class="tm-nav-item"><a href="ReviseEvent.jsp" class="tm-nav-link">
                        <img src="img/Revision.png" alt="Home" width="28" height="28">&nbsp;&nbsp;<b>新增與修改</b></a></li>
                                             
                </ul>
            </nav>
            
            <div class="tm-mb-65">
                <a rel="nofollow" href="https://fb.com/templatemo" class="tm-social-link">
                    <i class="fab fa-facebook tm-social-icon"></i>
                    <!--	<i class="fab fi fi-rs-school"></i>
                    		<i class="fab fa fa-address-book"></i>	-->
                </a>
                <a href="https://twitter.com" class="tm-social-link">
                    <i class="fab fa-twitter tm-social-icon"></i>
                </a>
                <a href="https://instagram.com" class="tm-social-link">
                    <i class="fab fa-instagram tm-social-icon"></i>
                </a>
                <a href="https://linkedin.com" class="tm-social-link">
                    <i class="fab fa-linkedin tm-social-icon"></i>
                </a>
            </div>
            <p class="tm-mb-80 pr-5 text-white">
                歡迎來到活動報名的平台~
            </p>
        </div>
    </header>
    <%
		Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
		//out.println("Con= "+con);
		Statement smt= con.createStatement();
		String sql = "SELECT * FROM creator left join eventInformation on creator.creatorNum=eventInformation.host WHERE creatorEmail ='" +request.getParameter("creatorEmail")+"'";
		ResultSet rs = smt.executeQuery(sql);
		rs.next();
	%>
	<div class="container-fluid">
        <main class="tm-main">
            <div class="row tm-row tm-mb-45">
                <div class="col-12" style="text-align:right">
                    <%
					 String strName;
					 strName = request.getParameter("eMail");
					 out.println(strName +"您好～歡迎登入！");
					%>
                    
                    <hr class="tm-hr-primary tm-mb-55">                    
<<<<<<< HEAD:testv0.3/src/main/webapp/UnitInfo.jsp
                 <form method="POST" style="text-align:center" action="SignUp_DBInsertInto.jsp">
				<div> 
				<input type="submit" value="插入圖片" style="image:" HEIGHT="200" WIDTH="200"/>
				<br/>
				<br/>
				<br/>
				<div class="container-fluid">
        <main class="tm-main">
            	<div class="col-12" style="text-align:right">
                	<b><%=rs.getString("contactPerson") %></b>&nbsp;&nbsp;您好!歡迎登入～ 
                </div>
            	<hr class="tm-hr-primary tm-mb-55">
            
			
		    
		    
				
			</form>
=======
                </div>
            </div>
>>>>>>> e10edd584c8419ebe25f5382339d662f188b3a6d:testv0.3/src/main/webapp/UnitInformation.jsp
            
            <!--  SELECT * FROM creator WHERE eMail='"+session.getAttribute("creatorName")+"'";-->
            
           
            
            <!--尾巴邊邊線條-->
			<footer class="row tm-row">
                <hr class="col-12">
	                <div class="col-md-6 col-12 tm-color-gray">Design by：李嘉珉、孫合佳、楊宜蓁</div>
                
	                <div class="col-md-6 col-12 tm-color-gray tm-copyright">2022</div>
    		</footer>
    	</main>
    </div>
</body>
</html>