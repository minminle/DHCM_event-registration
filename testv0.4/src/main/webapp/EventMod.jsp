<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@include file = "menuCreator.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>新增與修改</title>
		<link rel="stylesheet" href="fontawesome/css/all.min.css"> <!-- https://fontawesome.com/ -->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap"> <!-- https://fonts.google.com/ -->
	    <link rel="stylesheet" href="css/bootstrap.min.css">
	    <link rel="stylesheet" href="css/templatemo-xtra-blog.css">
	</head>
	
	<body>
	<%request.setCharacterEncoding("UTF-8"); %>
	<div class="container-fluid">
        <main class="tm-main">
            <div class="row tm-row tm-mb-45">
                <div class="col-12">
                    <hr class="tm-hr-primary tm-mb-55">
                </div>
            </div>
            
			<!-- 新增活動輸入區 -->
            <form method="POST"  action="EventMod_DBInsertInto.jsp">
            
				<div><h1><b>新增活動</b></h1></div>
				<br/>
				<div><h3>活動名稱:&nbsp;
					 <input type="text" placeholder="請輸入活動名稱..." name="eventTitle" /></h3></div>
				
				<br/>
			<!--  	<div><h3>類&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;別:&nbsp;
					<div class="form-check form-check-inline">
	 				  <input class="form-check-input" type="radio" name="type" id="" value="講座" checked>
	  				  <label class="form-check-label" for="">講座</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="type" id="" value="學習">
					  <label class="form-check-label" for="">學習</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="type" id="" value="系會">
					  <label class="form-check-label" for="">系會</label>
					</div> -->
				
				<br/>
				<div><h3>活動簡介:&nbsp;
					 <input type="text" placeholder="請輸入簡介..." name="eventIntro" ></h3></div>
				
				<br/>
				<div><h3>活動日期:&nbsp;
					 <input type="date"  name="eventDate" /></h3></div>
				
				<br/>
				<div><h3>活動地點:&nbsp;
					 <input type="text" placeholder="請輸入地址..." name="eventPlace" /></h3></div>
				
				<br/>
				<div><h3>活動開始時間
					 <input type="time"  name="eventStart" /></h3></div>
				
				<br/>
				<div><h3>活動結束時間
					 <input type="time"  name="eventEnd" /></h3></div>
				
				<br/>
				<div><h3>報名截止日期
					 <input type="date"  name="endRegistration" /></h3></div>
				
				<br/>
				<div><h3>名額限制:&nbsp;
					 <input type="number"  name="quota" /></h3></div>
				
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