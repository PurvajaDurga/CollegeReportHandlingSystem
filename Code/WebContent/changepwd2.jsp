<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor='#990000' align="center">
<p align="center" style='color:white;font-size:20px;font-style:italic;font-weight:bold'>Change Password</p>
	<%String uname=request.getParameter("uname");%>
<form action="pwdchange2.jsp?uname=<%=uname %>" method="post">

<p align="center" style='color:white;font-size:20px;font-style:italic;font-weight:bold'>Enter New Password:<input type="password" name="newpwd"></p>
<p align="center" style='color:white;font-size:20px;font-style:italic;font-weight:bold'>Re-Enter Password:<input type="password" name="newpwd"></p>

<p align="center"><input type="submit" value="change pwd"></p>
</form>
	
</body>
</html>