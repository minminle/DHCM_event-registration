<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file = "menu.jsp" %>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>活動報名平台首頁</title>
		<link rel="stylesheet" href="fontawesome/css/all.min.css"> <!-- https://fontawesome.com/ -->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap"> <!-- https://fonts.google.com/ -->
	    <link rel="stylesheet" href="css/bootstrap.min.css">
	    <link rel="stylesheet" href="css/templatemo-xtra-blog.css">
	</head>
	
	<body>
	<%request.setCharacterEncoding("UTF-8"); %>
	<%! int num=0; //宣告全域變數num %>
	<%	
		Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
		Statement smt= con.createStatement();
		String sql = "SELECT * FROM eventInformation";
		ResultSet rs = smt.executeQuery(sql);
		
	%>
	    
	    <div class="container-fluid">
	        <main class="tm-main">
	            
	            <!-- 搜尋條 -->
	            <div class="row tm-row">
	                <div class="col-12">
	                    <form method="GET" class="form-inline tm-mb-80 tm-search-form">                
	                        <input class="form-control tm-search-input" name="query" type="text" placeholder="Search..." aria-label="Search">
	                        
	                        <button class="tm-search-button" type="submit">
	                            <i class="fas fa-search tm-search-icon" aria-hidden="true"></i>
	                        </button>                                
	                    </form>
	                </div>                
	            </div>
	                       
	            <div class="row tm-row">
	            	<!-- 資訊欄 --> 
	            	<!--  <article class="col-12 col-md-6 tm-post" > -->
	                	<form action="EventDetail.jsp" >
	                		<% int num=1;
					          while(rs.next()){
					        %>
		                    <hr class="tm-hr-primary">
		                    
		                    <a href="EventDetail.jsp?eventNum=<%=rs.getString("eventNum")%>" class="effect-lily tm-post-link tm-pt-60">
		                        <div class="tm-post-link-inner">
		                            <img src="<%=rs.getString("eventPic")%>" alt=""  class="img-fluid" width="50%">                            
		                        </div>
		                        <span class="position-absolute tm-new-badge">New</span>
		                        <h2 class="tm-pt-30 tm-color-primary tm-post-title"><%=rs.getString("eventTitle")%></h2>
		                    </a> 
		                                       
		                    <p class="tm-pt-30">
		                        <%=rs.getString("eventIntro")%>
		                    </p>
		                    
		                    <div class="d-flex justify-content-between tm-pt-45">
		                        <span class="tm-color-primary"><%=rs.getString("eventDate")%></span>
		                        <span class="tm-color-primary"><%=rs.getString("eventPlace")%></span>
		                    </div>
		                    
		                    <hr>
		                    <div class="d-flex justify-content-between">
		                        <span><%=rs.getString("eventType")%></span>
		                        <span><%=rs.getString("host")%></span>
		                    </div>
		                		<% num++;
	        						}%>
        				</form>
	                
	                </div>
	                
	            <!-- 頁面跳轉 
	            <div class="row tm-row tm-mt-100 tm-mb-75">
	                <div class="tm-prev-next-wrapper">
	                    <a href="#" class="mb-2 tm-btn tm-btn-primary tm-prev-next disabled tm-mr-20">Prev</a>
	                    <a href="#" class="mb-2 tm-btn tm-btn-primary tm-prev-next">Next</a>
	                </div>
	                <div class="tm-paging-wrapper">
	                    <span class="d-inline-block mr-3">Page</span>
	                    <nav class="tm-paging-nav d-inline-block">
	                        <ul>
	                            <li class="tm-paging-item active">
	                                <a href="#" class="mb-2 tm-btn tm-paging-link">1</a>
	                            </li>
	                            <li class="tm-paging-item">
	                                <a href="#" class="mb-2 tm-btn tm-paging-link">2</a>
	                            </li>
	                            <li class="tm-paging-item">
	                                <a href="#" class="mb-2 tm-btn tm-paging-link">3</a>
	                            </li>
	                            <li class="tm-paging-item">
	                                <a href="#" class="mb-2 tm-btn tm-paging-link">4</a>
	                            </li>
	                        </ul>
	                    </nav>
	                </div>                
	            </div> -->
	            
	                        
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
	    <script src="js/jquery.min.js"></script>
	    <script src="js/templatemo-script.js"></script>
	</body>
</html>