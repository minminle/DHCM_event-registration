<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
	<title>活動報名平台-活動清單與審核</title>
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
                    <li class="tm-nav-item"><a href="UnitInformation.jsp" class="tm-nav-link">
                        <img src="img/Introduction_2.png" alt="Home" width="28" height="28">&nbsp;&nbsp;<b>修改資料</b></a></li>	<!-- 原網頁Single Post -->
                        
                    <li class="tm-nav-item active"><a href="EventList.jsp" class="tm-nav-link">
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
                ~
            </p>
        </div>
    </header>
    
    <div class="container-fluid">
        <main class="tm-main">
            <div class="row tm-row tm-mb-45">
                <div class="col-12" style="text-align:right">
                    
                    您好～歡迎登入！
                    <hr class="tm-hr-primary tm-mb-55">
                    
                </div>
            </div>
            
            <table style="width:100%" >
			  <tr>
			    <th>活動編號</th>
			    <th>活動名稱</th> 
			    <th>活動日期</th>
			    <th>活動地點</th>
			    <th>名額限制</th>
			    <th>已入取名額</th>
			    <th>活動狀態</th>
			    <th>簽核</th>
			  </tr>
			  
			  <%
			  	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
				Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
				Statement smt= con.createStatement();
				String sql = "SELECT * FROM eventInformation";
				ResultSet rs = smt.executeQuery(sql);
				int num=1;
				
				while(rs.next()){
					out.println("<tr><td>" + num + "</td><td>" + rs.getString("Name") + "</td><td>" + rs.getString("國文") + "</td></tr>");
					num++;
				}
			
			  %>
			  
			</table>
            
            
    <!--尾巴灰線條-->
			<footer class="row tm-row">
                <hr class="col-12">
	                <div class="col-md-6 col-12 tm-color-gray">Design by：李嘉珉、孫合佳、楊宜蓁</div>
                
	                <div class="col-md-6 col-12 tm-color-gray tm-copyright">2022</div>
    		</footer>
            
        </main>
	</div>
</body>

</html>