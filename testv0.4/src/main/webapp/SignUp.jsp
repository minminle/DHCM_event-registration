<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file ="menu.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>單位註冊</title>
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
            
			<!-- 註冊帳號輸入區 -->
            <form method="POST" style="text-align:center" action="SignUp_DBInsertInto.jsp">
				<div><h1><b>註冊帳號</b></h1></div>
				<br/>
				<div><h3>單位名稱:&nbsp;
					 <input type="text" placeholder="請輸入單位名稱..." name="creatorName" /></h3></div>
				
				<br/>
				<div><h3>帳&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;號:&nbsp;
					 <input type="text" placeholder="請輸入電子郵件..." name="creatorEmail" ></h3></div>
				
				<br/>
				<div><h3>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;碼:&nbsp;
					 <input type="password" placeholder="請輸入密碼..." name="creatorPwd" ></h3></div>
				
				<br/>
				<div><h3>聯&nbsp;&nbsp;&nbsp;絡&nbsp;&nbsp;人:&nbsp;
					 <input type="text" placeholder="請輸入聯絡人姓名..." name="contactPerson" /></h3></div>
				
				<br/>
				<div><h3>聯絡電話:&nbsp;
					 <input type="text" placeholder="請輸入聯絡電話..." name="contactPhone" /></h3></div>
				
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