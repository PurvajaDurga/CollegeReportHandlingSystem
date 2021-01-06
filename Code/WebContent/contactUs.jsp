<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body  style="background-color:#990000">
	<div style="position:absolute;left:400px;top:100px;">
		<form action="insertioncontact.jsp" method="post">
			<caption><h2 align="center" style='color:white;font-size:40px;font-style:italic;font-weight:bold'>Enter Details</h2></caption>
			<table>
				<tr>
					<td><b><p align="center" style='color:white;font-size:20px;font-style:italic;font-weight:bold'>Enter Name :</p></b></td>
					<td >
					<input type="text" name="name" required></td>
				</tr>
				
   			<tr>
					<td><b><p align="center" style='color:white;font-size:20px;font-style:italic;font-weight:bold'>Enter PhoneNumber :</p></b></td>
					<td><input type="text" name="phonenumber" required></td>
   			</tr>
   			<tr>
					<td><b><p align="center" style='color:white;font-size:20px;font-style:italic;font-weight:bold'>Enter Email :</p></b></td>
					<td><input type="text" name="email" required></td>
   			</tr>
   			<tr>
   			<td><b><p align="center" style='color:white;font-size:20px;font-style:italic;font-weight:bold'>Enter Comment :</p></b></td>
					<td><b><p align="center" style='color:white;font-size:20px;font-style:italic;font-weight:bold'><textarea name="text" rows="10" cols="30" required></textarea ></p></b></td>
					
   			</tr>
   			
   			
<tr>
<td>
<p align="center"><input type="submit" value="submit"/></p></td>
</tr>
</form>
</div>
</table>
</p>
</body>
</html>