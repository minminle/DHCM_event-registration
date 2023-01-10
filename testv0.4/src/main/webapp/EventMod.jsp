<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file ="menuCreator.jsp" %>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>新增活動</title>
		<link rel="stylesheet" href="fontawesome/css/all.min.css"> <!-- https://fontawesome.com/ -->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap"> <!-- https://fonts.google.com/ -->
	    <link rel="stylesheet" href="css/bootstrap.min.css">
	    <link rel="stylesheet" href="css/templatemo-xtra-blog.css">
	</head>
<body>
<%request.setCharacterEncoding("UTF-8"); %>
	<div class="container-fluid">
        <main class="tm-main">
            <div class="col-12" style="text-align:right">
                	<b><%out.println(session.getAttribute("accessName"));%></b>&nbsp;&nbsp;您好!歡迎登入～ 
                </div>
            	<hr class="tm-hr-primary tm-mb-55">
            
            <!-- 新增活動輸入區 -->
            <form method="POST" style="text-align:left" action="EventMod_DBInsertInto.jsp">
				<div><h1><b>新增活動</b></h1></div>
				<br/>
				<div><h3>活動封面：&nbsp;
					 <input type="file" placeholder="請上傳活動封面..." name="eventPic" ></h3></div>
				
				<br/>
				<div><h3>活動名稱：&nbsp;
					 <input type="text" placeholder="請輸入活動名稱..." name="eventTitle" ></h3></div>
				
				<br/>
				<div><h3>活動類型：&nbsp;
					 <input type="radio" name="eventType" value="講座">講座
					 <input type="radio" name="eventType" value="學習">學習
					 <input type="radio" name="eventType" value="系會">系會</h3></div>
					 
				<br/>
				<div><h3>活動簡介：&nbsp;
					 <input type="text" placeholder="請輸入活動簡介..." name="eventIntro" ></h3></div>
				
				<br/>
				<div><h3>活動日期：&nbsp;
					 <input type="date" placeholder="請輸入活動日期..." name="eventDate" ></h3></div>
				
				<br/>
				<div><h3>活動地點：&nbsp;
					 <input type="text" placeholder="請輸入活動地點..." name="eventPlace" /></h3></div>
				
				<br/>
				<div><h3>活動開始時間：&nbsp;
					 <input type="time" placeholder="請輸入活動開始時間..." name="eventStart" /></h3></div>
				
				<br/>
				<div><h3>活動結束時間：&nbsp;
					 <input type="time" placeholder="請輸入活動結束時間..." name="eventEnd" /></h3></div>
					 
				<br/>
				<div><h3>報名截止日期：&nbsp;
					 <input type="date" placeholder="請輸入報名截止日期..." name="endRegistration" /></h3></div>
					 
				<br/>
				<div><h3>名額限制：&nbsp;
					 <input type="number" placeholder="人數..." name="quota" /></h3></div>
				
				<br/>
				<div>
				    <h3><input type="reset" id="send" value="清除" />&nbsp;&nbsp;
				    	<input type="submit" id="send" value="送出" />			
				    </h3>
				</div> 
			</form>
			
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