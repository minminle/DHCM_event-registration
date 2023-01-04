<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
	<title>活動報名平台-活動資訊細節頁</title>
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
                    <li class="tm-nav-item"><a href="Index.jsp" class="tm-nav-link">
                        <img src="img/Home.png" alt="Home" width="28" height="28">&nbsp;&nbsp;<b>首頁</b></a></li>		<!-- 原網頁Blog Home -->
                        												    <!-- 「&nbsp;」代表空白 -->
                    <li class="tm-nav-item"><a href="EventPublished.jsp" class="tm-nav-link">
                        <img src="img/Published_2.png" alt="Home" width="28" height="28">&nbsp;&nbsp;<b>活動刊登</b></a></li>	<!-- 原網頁Single Post -->
                        
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
                <div class="col-12">
                    <hr class="tm-hr-primary tm-mb-55">
                </div>
            </div>
            <div class="col-lg-7 tm-contact-left" style="float:left;">                  
                 <div class="form-group row mb-4"> 
                     <label for="creator" class="col-sm-3 col-form-label text-right tm-color-primary">主辦單位</label>
                         <div class="col-sm-9">
                             <%
							Object creator=session.getAttribute("creator");
                            if(creator!=null){
                        		out.println(creator.toString()+"<br>");
                            	}
                             %>
                         </div>
                 </div>
                 <div class="form-group row mb-4"> 
                     <label for="name" class="col-sm-3 col-form-label text-right tm-color-primary">活動名稱</label>
                          <div class="col-sm-9"><b>
                             <%
                             Object event=session.getAttribute("event");
                             if(creator!=null){
                        		out.println(event.toString()+"<br>");
                             }
                             %></b>                        
                          </div>
                 </div>         
                 <div class="form-group row mb-4"> 
                     <label for="intro" class="col-sm-3 col-form-label text-right tm-color-primary">活動簡介</label>
                          <div class="col-sm-9">
                             <%
                             Object intro=session.getAttribute("intro");
                    		 if(creator!=null){
                 				out.println(intro.toString()+"<br>");
                             }
                             %>                            
                          </div>
                 </div>
                 <div class="form-group row mb-4"> 
                     <label for="date" class="col-sm-3 col-form-label text-right tm-color-primary">活動日期</label>
                         <div class="col-sm-9">
                             <%
							Object date=session.getAttribute("date");
                            if(creator!=null){
                        		out.println(date.toString()+"<br>");
                            	}
                             %>
                         </div>
                 </div> 
                 <div class="form-group row mb-4"> 
                     <label for="place" class="col-sm-3 col-form-label text-right tm-color-primary">活動地點</label>
                         <div class="col-sm-9">
                             <%
							Object place=session.getAttribute("place");
                            if(creator!=null){
                        		out.println(place.toString()+"<br>");
                            	}
                             %>
                         </div>
                 </div>
           	</div>
           	 
           	<div class="col-lg-5 tm-contact-right" style="float:left;">          	
           		<div class="form-group row"> 
                     <label for="start" style="color:#009999;text-align:right;">開始時間</label>
                            <div style="text-align:left;">
                            &nbsp;&nbsp;
                            <%
							Object eventstart=session.getAttribute("eventstart");
                            if(creator!=null){
                        		out.println(eventstart.toString()+"<br>");
                            	}
                             %>
                            </div>
                      <label for="end" style="color:#009999;text-align:right;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;結束時間</label>
                     		<div style="text-align:right;">
                             &nbsp;&nbsp;
                             <%
							Object eventend=session.getAttribute("eventend");
                            if(creator!=null){
                        		out.println(eventend.toString()+"<br>");
                            	}
                             %>
                         	</div>
                      <label for="sr" style="color:#009999;text-align:right;">開始報名</label>
                         	<div style="text-align:right;">
                             &nbsp;&nbsp;
                             <%
							Object starttime=session.getAttribute("starttime");
                            if(creator!=null){
                        		out.println(starttime.toString()+"<br>");
                            	}
                             %>
                         	</div>
                      <label for="sr" style="color:#009999;text-align:right;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;結束報名</label>
                         	<div style="text-align:right;">
                             &nbsp;
                             <%
							Object endtime=session.getAttribute("endtime");
                            if(creator!=null){
                        		out.println(endtime.toString()+"<br>");
                            	}
                             %>
                         	</div>   	
					  <label for="al" style="color:#009999;text-align:right;">人數限制</label>
                         	<div style="text-align:right;">
                             &nbsp;&nbsp;
                             <%
							Object applicantlimited=session.getAttribute("applicantlimited");
                            if(creator!=null){
                        		out.println(applicantlimited.toString()+"<br>");
                            	}
                             %>
                         	</div>
                       <label for="el" style="color:#009999;text-align:right;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;錄取人數</label>
                         	<div style="text-align:right;">
                             &nbsp;&nbsp;
                             <%
							Object eventapplicant=session.getAttribute("eventapplicant");
                            if(creator!=null){
                        		out.println(eventapplicant.toString()+"<br>");
                            	}
                             %>
                             &nbsp;
                         	</div>
                       <form method="POST" action="Applicant_DBInsertInto.jsp">
                       <label for="applicantName" style="color:#00999;text-align:right;">姓名</label>
                       		<div class="col-sm-9">
                       		<input class="form-control mr-0 ml-auto" name="applicantName" id="name" type="text" required>  	                 
                 			</div>
                 	   <label for="applicantID" style="color:#00999;text-align:right;">身分證字號</label>
                       		<div class="col-sm-9">
                       		<input class="form-control mr-0 ml-auto" name="applicantID" id="applicantID" type="text" required>  	                 
                 			</div>		
                 	   <label for="phone" style="color:#00999;text-align:right;">連絡電話</label>
                       		<div class="col-sm-9">
                       		<input class="form-control mr-0 ml-auto" name="phone" id="phone" type="text" required>  	                 
                 			</div>
                 	   <label for="eMail" style="color:#00999;text-align:right;">e-mail</label>
                       		<div class="col-sm-9">
                       		<input class="form-control mr-0 ml-auto" name="eMail" id="eMail" type="text" required>  	                 
                 			</div>
                 			<div>
				            &nbsp;
				            &nbsp;
				            &nbsp;
				            &nbsp;
				            <h3><input type="submit" id="send" value="我要報名" /></h3>
				            </div> 
			          </form>
                 </div>
           	</div>
    		<div style="clear:both;">
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