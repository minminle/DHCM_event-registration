<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file ="menuCreator.jsp" %>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='application' class='hitstd.group.tool.database.DBConfig' />

<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>單位基本資料修改</title>
		<link rel="stylesheet" href="fontawesome/css/all.min.css"> <!-- https://fontawesome.com/ -->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap"> <!-- https://fonts.google.com/ -->
	    <link rel="stylesheet" href="css/bootstrap.min.css">
	    <link rel="stylesheet" href="css/templatemo-xtra-blog.css">
		<style>
			.button {
			  border: none;
			  color: white;
			  padding: 5px 15px;
			  height: 50px;
  			  border-radius: 20px;
			  text-align: center;
			  text-decoration: none;
			  display: inline-block;
			  font-size: 20px;
			  margin: 4px 2px;
			  transition-duration: 0.4s;
			  cursor: pointer;
			}
			
			.button2 {
			  background-color: white; 
			  color: black; 
			  border: 2px solid #a2c2c9;
			}
			
			.button2:hover {
			  background-color: #c1e3dd;
			  color: block;
			}		
			
			.button3 {
			  background-color: white; 
			  color: black; 
			  border: 2px solid #a2c2c9;
			}
			
			.button3:hover {
			  background-color: #ffa0ac;
			  color: block;
			}	
			
			.button4 {
			  background-color: white; 
			  color: black; 
			  border: 2px solid #a2c2c9;
			}
			
			.button4:hover {
			  background-color: #ffeeac;
			  color: block;
			}
		</style>
	</head>
	
	<body>
		<%request.setCharacterEncoding("UTF-8"); %>
		<%
		Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
		Statement smt= con.createStatement();
		String sql = "SELECT * FROM creator left join eventInformation on creator.creatorName=eventInformation.host WHERE creatorEmail ='" +session.getAttribute("accessID")+"'";
		String option="SELECT * FROM eventInformation";
		ResultSet rs = smt.executeQuery(sql);
		rs.next();
		%>
		
		<div class="container-fluid">
	        <main class="tm-main">
	            <div class="col-12" style="text-align:right">
                	<b><%out.println(session.getAttribute("accessName"));%></b>&nbsp;&nbsp;您好!歡迎登入～
                	<br/><input type ="button" onclick="javascript:location.href='CreatorLogin.jsp'" class="button button3" value="登出"></input> 
                </div>
            	<hr class="tm-hr-primary tm-mb-55">
	            	
	            <form action="UnitInfoEdit_DBUpdate_info.jsp?creatorEmail=<%out.println(session.getAttribute("accessID"));%>" method="post" name="form" >
			        <div class="col-sm-9">
			        
			        <label for="creatorName" class="col-sm-3 col-form-label tm-color-primary"><h4>單位LOGO</h4></label>
			        <img src="<%=rs.getString("creatorPic") %>" alt="單位Logo" width="40%" ><br/><br/>
			        
			        <h4>選擇新圖片：
		            <input type="file" name="theFirstFile">
		            
		            <input type="button" onClick="javascript:pic();" name=uploadButton value="上傳"></h4>
						<script language="javascript">  
						//點選提交按鈕觸發下面的函式
						function pic(){  
							document.form.action="UnitInfoEdit_DBUpdate_pic.jsp";
							document.form.enctype="multipart/form-data";
							document.form.submit();
						}  
						</script>
			        </div>
			        
			        <div class="col-sm-9"><h4>
			    		<label for="creatorName" class="col-sm-3 col-form-label tm-color-primary">單位名稱</label>
			    		<%=rs.getString("creatorName") %></h4>
			    		<label for="creatorName1" class="col-sm-3 col-form-label tm-color-primary"></label>
		    			<input type="text" name="creatorName" value="<%=rs.getString("creatorName") %>" />
		    		</div>
		            
		            <div class="col-sm-9"><h4>
			    		<label for="creatorEmail" class="col-sm-3 col-form-label tm-color-primary">Email帳號</label>
			    		<%=rs.getString("creatorEmail") %></h4>
			    		
		    	  	</div>
		    	
			    	<div class="col-sm-9"><h4>
			    		<label for="creatorPwd" class="col-sm-3 col-form-label tm-color-primary">密碼</label>
			    		<%=rs.getString("creatorPwd") %></h4>
			    		<label for="creatorPwd1" class="col-sm-3 col-form-label tm-color-primary"></label>
		    			<input type="text" name="creatorPwd" value="<%=rs.getString("creatorPwd") %>" />
			    	</div>
			    	
			    	<div class="col-sm-9"><h4>
			    		<label for="contactPerson" class="col-sm-3 col-form-label tm-color-primary">聯絡人</label>
			    		<%=rs.getString("contactPerson") %></h4>
			    		
			    	</div>
			    	
			    	<div class="col-sm-9"><h4>
			    		<label for="contactPhone" class="col-sm-3 col-form-label tm-color-primary">聯絡電話</label>
			    		<%=rs.getString("contactPhone") %></h4>
			    		<label for="contactPhone1" class="col-sm-3 col-form-label tm-color-primary"></label>
		    			<input type="text" name="contactPhone" value="<%=rs.getString("contactPhone") %>" />
			    	</div>	
			    	
		            <div style="text-align:center">
		                <input type ="button" onclick="history.back()" class="button button4" value="回上一頁"></input>
		              	<button class="button button2" type="submit" name="edit">確認修改</button>
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