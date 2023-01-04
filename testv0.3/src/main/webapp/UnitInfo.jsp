<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
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
				<div><h3>單位名稱:&nbsp;
					 <input type="text" placeholder="請輸入單位名稱..." name="creatorName" /></h3></div>
				
				<br/>
				<div><h3>電子郵件:&nbsp;
					 <input type="text" placeholder="請輸入帳號..." name="eMail" ></h3></div>
				
				<br/>
				<div><h3>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;碼:&nbsp;
					 <input type="password" placeholder="請輸入密碼..." name="creatorPwd" ></h3></div>
				
				<br/>
				<div>
				    <h4>
				   		<input type="reset" id="send" value="修改" />&nbsp;&nbsp;
				    	<input type="submit" id="send" value="儲存" />			
				    </h4>
				</div> 
			</form>
=======
                </div>
            </div>
>>>>>>> e10edd584c8419ebe25f5382339d662f188b3a6d:testv0.3/src/main/webapp/UnitInformation.jsp
            
            <!--  SELECT * FROM creator WHERE eMail='"+session.getAttribute("creatorName")+"'";-->
            <%
			 Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
			 Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
			 Statement smt= con.createStatement();
             
             
             
			 
            %>
            <form method="POST">
            <label for="" style="color:#00999;text-align:right;">主辦單位</label><br>
            
            <label for="eventTitle" style="color:#00999;text-align:right;">活動名稱</label><br>
            
            <label for="eventType" style="color:#00999;text-align:right;">類別</label><br>
	            <input type="radio" name="view" value="volunteer" checked>志工服務&nbsp;&nbsp;
	            <input type="radio" name="view" value="lecture" checked>講座&nbsp;&nbsp;
	            <input type="radio" name="view" value="rabbit" checked>志工服務<br>
            
            <label for="eventIntro" style="color:#00999;text-align:right;">活動簡介</label><br>
            
            <label for="eventDate" style="color:#00999;text-align:right;">活動簡介</label><br>
            
            <label for="eventPlace" style="color:#00999;text-align:right;">活動簡介</label><br>
            
            <label for="eventStart" style="color:#00999;text-align:right;">活動簡介</label><br>
            <label for="eventEnd" style="color:#00999;text-align:right;">活動簡介</label><br>
            </form>
            
            
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