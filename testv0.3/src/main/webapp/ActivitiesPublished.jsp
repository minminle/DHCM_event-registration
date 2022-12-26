<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />
<%
session.setAttribute("access","n"); //access="n"
if(request.getParameter("eMail") !=null &&
	request.getParameter("creatorPwd") !=null){
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	//Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\s0979\\OneDrive\\文件\\GitHub\\DHCM_take-a-leave\\testv0.3\\src\\main\\webapp\\dhcm.accdb;");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	
	String getpaperdata = "SELECT * FROM creator WHERE eMail='"+
			request.getParameter("eMail")+"' AND creatorPwd='" +
			request.getParameter("creatorPwd")+"'";
	ResultSet paperrs = smt.executeQuery(getpaperdata);
	
	if(paperrs.next()){
		session.setAttribute("access","y"); //access="y"  
		session.setAttribute("accessid",request.getParameter("eMail"));
		session.setMaxInactiveInterval(5);
		response.sendRedirect("https://www.youtube.com/");
	}else
		out.println("帳號密碼不符！請重新登入");
	}
%>

<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>活動報名平台-活動刊登</title>
	<link rel="stylesheet" href="fontawesome/css/all.min.css"> <!-- https://fontawesome.com/ -->
	<link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet"> <!-- https://fonts.google.com/ -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/templatemo-xtra-blog.css" rel="stylesheet">
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
                <h2 class="text-center">活動報名平台</h2>
                <!--  
                <br>
                <h3 class="text-center">健管系實習請假平台</h3> -->
            </div>
            
            <nav class="tm-nav" id="tm-nav">            
                <ul>
                    <li class="tm-nav-item"><a href="Index.jsp" class="tm-nav-link">
                        <!--  <i class="fas fa-home"></i> -->   <!-- 原網頁是Home -->
                        　首頁<img src="img/Home.png" alt="Home" width="26" height="26"></a></li>          
                        
                    <li class="tm-nav-item active"><a href="Activities published.jsp" class="tm-nav-link">
                        <!--  <i class="fas fa-pen"></i>　 -->   <!-- 原網頁是Single Post -->
                        <img src="img/Published_1.png" alt="Home" width="26" height="26">　活動刊登</a></li> 
                              
                    <!--
                    <li class="tm-nav-item"><a href="Details.jsp" class="tm-nav-link">
                        <i class="far fa-comments"></i>假單狀況</a></li>  <!-- 原網頁是About Xtra -->
                    <!--     
                    <li class="tm-nav-item"><a href="Check.jsp" class="tm-nav-link">
                        <i class="fas fa-users"></i>簽核作業</a></li>     <!-- 原網頁是Contact Us -->
                	
                </ul>
            </nav>
            
            <div class="tm-mb-65">
                <a href="https://facebook.com" class="tm-social-link">
                    <i class="fab fa-facebook tm-social-icon"></i>
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
                Xtra Blog is a multi-purpose HTML template from TemplateMo website. Left side is a sticky menu bar. Right side content will scroll up and down.
            </p>
        </div>
    </header>
<!--============================================================================================================================================================-->    
    <div class="container-fluid">
        <main class="tm-main">
            <!-- 右上角內容(某某某、時間、日期、登入按鈕)可加在這，原搜尋欄的位置-->
            <div class="row tm-row tm-mb-45">
                <div class="col-12">
                    <hr class="tm-hr-primary tm-mb-55"></div>
            </div>
            
       <div class="warp">
        <h1> 登入</h1>
        <br>
		<form method="post">
			
			<div class="container">
				
				<label for="eMail"><b>帳號</b></label>
				
			    <input type="text" placeholder="請輸入Gmail..." name="eMail" required>
				<% 	//帳號輸入錯誤時，會出現您輸入的錯誤帳號
					if(request.getParameter("eMail")!= null){ %>
					value = '<%=request.getParameter("eMail") %>'
				<%}%>
				<br><br>
			    <label for="creatorpwd"><b>密碼</b></label>
			    
			    <input type="password" placeholder="請輸入密碼..." name="creatorPwd" required>
				<% 	//密碼輸入錯誤時，會出現您輸入的錯誤密碼
					if(request.getParameter("creatorPwd")!= null){ %>
					value = '<%=request.getParameter("creatorPwd") %>'
				<%}%>
				<br>
				<br>
			    <button type="submit" name="loginBtn">送出</button>
			</div>
				<br>
			<div class="container" style="background-color:#FFF">
				<a href="Signup.html" class="signbtn">註冊</a>
			</div>
		
		</form>
       </div>           
            <footer class="row tm-row">
                <hr class="col-12">
                <div class="col-md-6 col-12 tm-color-gray">
                    Design by：李嘉珉、孫合佳、楊宜蓁
                </div>
                
                <div class="col-md-6 col-12 tm-color-gray tm-copyright">
                    2022
                </div>
            </footer>
        </main>
    </div>
    <script src="js/jquery.min.js"></script>
    <script src="js/templatemo-script.js"></script>
</body>
</html>