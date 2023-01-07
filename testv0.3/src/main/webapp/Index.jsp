<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='application' class='hitstd.group.tool.database.DBConfig' />
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
	<title>活動報名平台-首頁(活動資訊)</title>
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
                    <li class="tm-nav-item active"><a href="Index.jsp" class="tm-nav-link">
                        <img src="img/Home.png" alt="Home" width="28" height="28">&nbsp;&nbsp;<b>活動資訊</b></a></li>		<!-- 原網頁Blog Home -->
                        												    <!-- 「&nbsp;」代表空白 -->
                    <li class="tm-nav-item"><a href="EventPublished.jsp" class="tm-nav-link">
                        <img src="img/Published_2.png" alt="Home" width="28" height="28">&nbsp;&nbsp;<b>我要辦活動</b></a></li>	<!-- 原網頁Single Post -->
                        
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
	String evemtID=request.getParameter("ID");
    Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement();
	String sql = "SELECT *  FROM eventInformation WHERE eventInformation.ID='"+ID+"'";
	ResultSet rs = smt.executeQuery(sql);
	%>
    <div class="container-fluid">
        <main class="tm-main">
            <!-- 搜尋欄 -->
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
                <article class="col-12 col-md-6 tm-post">
                    <hr class="tm-hr-primary">
                    <a href="EventInformation.jsp" class="effect-lily tm-post-link tm-pt-60">
                        <div class="tm-post-link-inner">
                            <img src="img/img-01.jpg" alt="Image" class="img-fluid">                            
                        </div>
                        <span class="position-absolute tm-new-badge">New</span>
                        <%
						session.setAttribute("creator", "健康科技學院/協辦社團法人臺東縣都蘭診所陪你回家協會");
						session.setAttribute("event", "電影欣賞-陪你回家");
						session.setAttribute("intro", "一位年輕醫師因為父親倒下，臨危受命回鄉接下家族的診所，卻面臨大醫院和小鎮醫師在看病、診斷、治療等觀念的巨大差異...面對病人想回家的意念，年輕醫師開始初診訪視病患，漸漸理解在宅醫療，並學習與不同職類的醫療照護工作人員合作。支援病人完成最終的願望，也看見病人回到家後還能在最後一哩路，活出自己的樣貌。");
						session.setAttribute("date", "112/01/12(四)");
						session.setAttribute("place", "國北護學思樓F515觀頤講堂");
						session.setAttribute("eventstart", "10：00");
						session.setAttribute("eventend", "12：00");
						session.setAttribute("starttime", "即日起");
						session.setAttribute("endtime", "額滿為止");
						session.setAttribute("applicantlimited", "60人");
						session.setAttribute("eventapplicant", "額滿為止");
						%>
                        <h2 class="tm-pt-30 tm-color-primary tm-post-title">電影欣賞-陪你回家</h2>
                    </a>                    
                    <p class="tm-pt-30">
                        <br>【電影簡介】
                        <br><b>生命與希望的篇章——在宅醫療的年輕醫師與「夥伴」們實踐在宅醫療全力以赴</b>
                        <br>&nbsp;
                        <br>一位年輕醫師因為父親倒下，臨危受命回鄉接下家族的診所，卻面臨大醫院和小鎮醫師在看病、診斷、治療等觀念的巨大差異...                 
                        <br>&nbsp;
                        <br>【電影公播說明】
                        <br>時間：112/01/12(四)10：00-12:00
                        <br>地點：學思樓F515觀頤講堂
                        <br>片長100分鐘，普遍級
                        <br>&nbsp;
                        <br>※公播後<b>一周內</b>提供觀後心得500-1000字心得一篇者，可獲得精美小禮物一份！！！
                    </p>
                    <div class="d-flex justify-content-between tm-pt-45">
                        <span class="tm-color-primary">學習 . 電影</span>
                        <span class="tm-color-primary">JAN. 12, 2023</span>
                    </div>
                    <hr>
                    <div class="d-flex justify-content-between">
                        <span>36 comments</span> 
                        <span>by健康科技學院</span>
                    </div>
                </article>
                <%
                while(rs.next()){
                %>
                <article class="col-12 col-md-6 tm-post">
                    <hr class="tm-hr-primary">
                    <a href="EventInformation1.jsp?ID=<%=rs.getString("ID")%>" class="effect-lily tm-post-link tm-pt-60">
                        <div class=" tm-post-link-inner">
                          <img src="/img/img-02.jpg" alt="Image" class="img-fluid">                           
                        </div>
                        <span class="position-absolute tm-new-badge">New</span>
                        <h2 class="tm-pt-30 tm-color-primary tm-post-title">講座-我的品質管理旅程</h2>
                    </a>
                 <%}
                con.close();
                 %>                       
                    <p class="tm-pt-30">
                    	<br><b>【我的品質管理旅程：學思經驗談】</b>
                        <br>&nbsp;
                        <br>講師：國立台灣大學政策與管理研究所教授
                        <br>鍾國彪教授
                        <br>&nbsp;
                        <br>日期：112/01/09(一)18：25-20:20
                        <br>&nbsp;
                        <br>地點：學思樓F920教室
                        <br>&nbsp;
                        <br>※名額有限，歡迎踴躍報名！
                    </p>
                    <div class="d-flex justify-content-between tm-pt-45">
                        <span class="tm-color-primary">學習 . 講座</span>
                        <span class="tm-color-primary">JAN. 09, 2023</span>
                    </div>
                    <hr>
                    <div class="d-flex justify-content-between">
                        <span>16 comments</span>
                        <span>by 健康事業管理系</span>
                    </div>
                </article>
                
                <article class="col-12 col-md-6 tm-post">
                    <hr class="tm-hr-primary">
                    <a href="EventInformation2.jsp" class="effect-lily tm-post-link tm-pt-20">
                        <div class="tm-post-link-inner">
                            <img src="img/img-03.jpg" alt="Image" class="img-fluid">
                        </div>
                        <h2 class="tm-pt-30 tm-color-primary tm-post-title">線上-了解寵物情緒行為教養</h2>
                    </a>                    
                    <p class="tm-pt-30">
                    	<br><b>其實毛小孩也會說話，
                    	<br>從汪星人的角度了解情緒行為教養！</b>
                        <br>&nbsp;
                        用毛孩的角度了解他們的情緒、行為進而教養！
						讓你輕鬆學、快快樂樂與汪星人和平共處! 
						<br>&nbsp;
                        <br>※特別提醒：
                        <br>這堂課<b><u>不是</u>寵物溝通</b>課程；<b>不針對貓主子</b>
                        <br>&nbsp;
                        <br>主講人：寵之幸實業有限公司-總經理李素幸 (Grace Lee )
                        <br>&nbsp;
                        <br>時間：112/01/09(一)19：30-21:30
                        <br>&nbsp;
                        <br>地點：線上課程( <a rel="nofollow" href="https://us06web.zoom.us/j/8813669049?pwd=2bbekOYNyzAlBv1NQqhKETzywP0fbi.1">ZOOM會議室</a>)
                        <br>更多詳情<a rel="nofollow" href="https://www.facebook.com/five5plus" target="_blank">寵之幸 Five5.Plus</a>瀏覽！
                    </p>
                    <div class="d-flex justify-content-between tm-pt-45">
                        <span class="tm-color-primary">學習 . 線上 . 寵物</span>
                        <span class="tm-color-primary">JAN. 10, 2023</span>
                    </div>
                    <hr>
                    <div class="d-flex justify-content-between">
                        <span>24 comments</span>
                        <span>by 寵之幸 Five5.Plus</span>
                    </div>
                </article>
                
                <article class="col-12 col-md-6 tm-post">
                    <hr class="tm-hr-primary">
                    <a href="EventInformation.jsp" class="effect-lily tm-post-link tm-pt-20">
                        <div class="tm-post-link-inner">
                            <img src="img/img-04.jpg" alt="Image" class="img-fluid">
                        </div>
                        <h2 class="tm-pt-30 tm-color-primary tm-post-title">A little restriction to apply</h2>
                    </a>                    
                    <p class="tm-pt-30">
                        You are <u>not allowed</u> to re-distribute this template as a downloadable ZIP file on any template collection
                        website. This is strongly prohibited as we worked hard for this template. Please contact TemplateMo for more information.
                    </p>
                    <div class="d-flex justify-content-between tm-pt-45">
                        <span class="tm-color-primary">Artworks . Design</span>
                        <span class="tm-color-primary">June 4, 2020</span>
                    </div>
                    <hr>
                    <div class="d-flex justify-content-between">
                        <span>72 comments</span>
                        <span>by Admin Sam</span>
                    </div>
                </article>
            </div>
            
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
                            <!--<li class="tm-paging-item">
                                <a href="#" class="mb-2 tm-btn tm-paging-link">3</a>
                            </li>
                            <li class="tm-paging-item">
                                <a href="#" class="mb-2 tm-btn tm-paging-link">4</a>
                            </li> -->
                        </ul>
                    </nav>
                </div>                
            </div>

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