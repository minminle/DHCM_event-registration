<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='hitstd.group.tool.database.DBConfig' />
<!DOCTYPE html>
<html>
<head>
  <meta charset="BIG5">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>LeeLab Web</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="//fonts.googleapis.com/css2?family=Merriweather:wght@300;400;700;900&amp;display=swap" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900&amp;display=swap" rel="stylesheet">
  <!-- Template CSS -->
  <link rel="stylesheet" href="assets/css/style-starter.css">
  <meta name="keywords" content="leelab">
  <meta name="description" content="This is for example.">
</head>
<body>
	<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement();
	String sql = "SELECT * FROM leelab left join position on leelab.positionId=position.positionId WHERE memberId ='" +request.getParameter("memberId")+"'";
	String option="SELECT * FROM position";
	ResultSet rs = smt.executeQuery(sql);
	ResultSet rs2 = smt.executeQuery(option);
	rs.next();
	%>
 <form action="UnitEdit_DBUpdate_info.jsp?eMail=<%=request.getParameter("eMail")%>" method="post" name="form" >
  <section class="w3l-aboutblock py-5" id="about">
    <div class="midd-w3">
      <div class="container py-lg-5 py-md-3">
        <div class="row">
          <div class="col-lg-4 left-wthree-img text-righ">
            <div class="position-relative">
            <img src="<%=rs.getString("pic") %>" alt="">
            <h3>選擇要上傳的文件:</h3>
            <input type="file" name="theFirstFile" size="50" />
            <input type="button" onClick="javascript:pic();" name=submitButton value="上傳" />
			<script language="javascript">  
			//點選提交按鈕觸發下面的函式
			function pic(){  
				document.form.action="UnitEdit_DBUpdate_pic.jsp";
				document.form.enctype="multipart/form-data";
				document.form.submit();
			}  
			</script>
</body>
</html>