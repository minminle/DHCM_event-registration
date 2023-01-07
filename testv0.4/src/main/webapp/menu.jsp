<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="fontawesome/css/all.min.css"> <!-- https://fontawesome.com/ -->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap"> <!-- https://fonts.google.com/ -->
	    <link rel="stylesheet" href="css/bootstrap.min.css">
	    <link rel="stylesheet" href="css/templatemo-xtra-blog.css">
	</head>
	
	<body>
	<%request.setCharacterEncoding("UTF-8"); %>
	
		<!-- 左邊綠條框 -->
		<header class="tm-header" id="tm-header">
	        <div class="tm-header-wrapper">
	        	<!-- LOGO處，加了到首頁的連結 -->	            
	            <div class="tm-site-header">
	                <div style="text-align:center">
		                <a href="Index.jsp" class="tm-nav-link">
			                <div class="mb-3 mx-auto tm-site-logo">
			                	<img src="img/Activity.png" alt="Home" width="69" height="69">
			                </div>
		                </a>
		            </div>          
	                <h1 class="text-center">活動報名平台</h1>
	            </div>
	            
	            <!-- 活動資訊、我要辦活動網頁超連結 -->
	            <nav class="tm-nav" id="tm-nav">            
	                <ul>
	                    <li class="tm-nav-item active"><a href="Index.jsp" class="tm-nav-link">
                        <img src="img/Home.png" alt="Home" width="28" height="28">&nbsp;&nbsp;<b>活動資訊</b></a></li>
	                    
	                    <li class="tm-nav-item @@contact__active"><a href="CreatorLogin.jsp" class="tm-nav-link">
                        <img src="img/Published_2.png" alt="Home" width="28" height="28">&nbsp;&nbsp;<b>我要辦活動</b></a></li>
						
					</ul>
	            </nav>
	            
	            <!-- 超連結下文字敘述 -->
	            <p class="tm-mb-80 pr-5 text-white">
	                歡迎來到活動報名平台~
	            </p>
	        </div>
	    </header>

</body>
</html>