<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
	<title>活動報名平台-新增活動</title>
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
                    <li class="tm-nav-item"><a href="UnitInformation.jsp" class="tm-nav-link">
                        <img src="img/Introduction_2.png" alt="Home" width="28" height="28">&nbsp;&nbsp;<b>單位簡介</b></a></li>	<!-- 原網頁Single Post -->
                        
                         <li class="tm-nav-item"><a href="EventList.jsp" class="tm-nav-link">
                        <img src="img/Details.png" alt="Home" width="28" height="28">&nbsp;&nbsp;<b>活動清單</b></a></li>
                        
                         <li class="tm-nav-item active"><a href="NewEvent.jsp" class="tm-nav-link">
                        <img src="img/Add.png" alt="Home" width="28" height="28">&nbsp;&nbsp;<b>新增活動</b></a></li>
                        
                         <li class="tm-nav-item"><a href="EventReview.jsp" class="tm-nav-link">
                        <img src="img/Review_1.png" alt="Home" width="28" height="28">&nbsp;&nbsp;<b>報名審核</b></a></li>
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
                <div class="col-12">
                    <hr class="tm-hr-primary tm-mb-55">
                </div>
            </div>
             <!-- 新增活動 -->
            <form method="POST" style="text-align:center" action="NewEvent.jsp">
				
				<div><h3>活動名稱:&nbsp;
					 <input type="text" placeholder="請輸入活動名稱..." name="" /></h3></div>
				
				<br/>
				<div><h3>活動簡介:&nbsp;
					 <input type="text" placeholder="請輸入簡介..." name="" ></h3></div>
				
				<br/>
				<div><h3>活動日期:&nbsp;
					 <input type="date" placeholder="選擇日期..." name="" ></h3>
					
             <script>
             
				<meta http-equiv='Content-Type' content='text/html; charset=gb2312'> 
				   function YYYYMMDDstart()   
				   {   
				           MonHead = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];   
				    
				           //先給年下拉框賦內容   
				           var y  = new Date().getFullYear();   
				           for (var i = (y-30); i < (y+30); i++) //以今年為準，前30年，後30年   
				                   document.reg_testdate.YYYY.options.add(new Option(" "+ i +" 年", i));   
				    
				           //賦月份的下拉框   
				           for (var i = 1; i < 13; i++)   
				                   document.reg_testdate.MM.options.add(new Option(" " + i + " 月", i));   
				    
				           document.reg_testdate.YYYY.value = y;   
				           document.reg_testdate.MM.value = new Date().getMonth() + 1;   
				           var n = MonHead[new Date().getMonth()];   
				           if (new Date().getMonth() ==1 && IsPinYear(YYYYvalue)) n++;   
				                writeDay(n); //賦日期下拉框Author:meizz   
				           document.reg_testdate.DD.value = new Date().getDate();   
				   }   
				   if(document.attachEvent)   
				       window.attachEvent("onload", YYYYMMDDstart);   
				   else   
				       window.addEventListener('load', YYYYMMDDstart, false);   
				   function YYYYDD(str) //年發生變化時日期發生變化(主要是判斷閏平年)   
				   {   
				           var MMvalue = document.reg_testdate.MM.options[document.reg_testdate.MM.selectedIndex].value;   
				           if (MMvalue == ""){ var e = document.reg_testdate.DD; optionsClear(e); return;}   
				           var n = MonHead[MMvalue - 1];   
				           if (MMvalue ==2 && IsPinYear(str)) n++;   
				                writeDay(n)   
				   }   
				   function MMDD(str)   //月發生變化時日期聯動   
				   {   
				        var YYYYvalue = document.reg_testdate.YYYY.options[document.reg_testdate.YYYY.selectedIndex].value;   
				        if (YYYYvalue == ""){ var e = document.reg_testdate.DD; optionsClear(e); return;}   
				        var n = MonHead[str - 1];   
				        if (str ==2 && IsPinYear(YYYYvalue)) n++;   
				       writeDay(n)   
				   }   
				   function writeDay(n)   //據條件寫日期的下拉框   
				   {   
				           var e = document.reg_testdate.DD; optionsClear(e);   
				           for (var i=1; i<(n+1); i++)   
				                e.options.add(new Option(" "+ i + " 日", i));   
				   }   
				   function IsPinYear(year)//判斷是否閏平年   
				   {     return(0 == year%4 && (year%100 !=0 || year%400 == 0));}   
				   function optionsClear(e)   
				   {   
				        e.options.length = 1;   
				   }   
				   //--></script></div>
				   
				   <br/>
				<div><h3>活動時間:&nbsp;
					 <input type="date" placeholder="請輸入簡介..." name="" ></h3></div>
				
				<br/>

				
				<br/>
				<div>
				    <h3><input type="reset" id="send" value="清除" />&nbsp;&nbsp;
				    	<input type="submit" id="send" value="送出" />			
				    </h3>
				</div> 
			</form>
            
            
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