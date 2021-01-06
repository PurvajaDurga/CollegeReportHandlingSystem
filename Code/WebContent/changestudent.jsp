<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
</body>
</html>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.servlet.*" %>
<%
try
{
    String id=request.getParameter("id");

    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","purvaja","password");
    PreparedStatement ps=con.prepareStatement("select * from StudentDetails where id=?");
    ps.setString(1,id);
    ResultSet rs=ps.executeQuery();
    
    while(rs.next()) 
   {   %>
    	
    	<html>
    	<body  style="background-color:#990000">
	<div style="position:absolute;left:400px;top:100px;">
		<form name="student">
			<caption><h2 align="center" style='color:white;font-size:40px;font-style:italic;font-weight:bold'>Details of the student</h2></caption>
			<table>
   <tr>
    	<td><b><p align="center" style='color:#99FFFF;font-size:30px;font-style:italic;font-weight:bold'>Name of the student :</p></b></td>
    	<td><b><p align="center" style='color:#99FFFF;font-size:30px;font-style:italic;font-weight:bold'><%out.println(rs.getString(1));%></p></b></td>
      </tr>
      <tr>
    	<td><b><p align="center" style='color:#99FFFF;font-size:30px;font-style:italic;font-weight:bold'>ID number of the student :</p></b></td>
    	<td><b><p align="center" style='color:#99FFFF;font-size:30px;font-style:italic;font-weight:bold'><%out.println(rs.getString(2));%></p></b></td>
      </tr>
      <tr>
    	<td><b><p align="center" style='color:#99FFFF;font-size:30px;font-style:italic;font-weight:bold'>Branch number of the student :</p></b></td>
    	<td><b><p align="center" style='color:#99FFFF;font-size:30px;font-style:italic;font-weight:bold'><%out.println(rs.getString(3));%></p></b></td>
      </tr>
      
      	<tr>
    	<td><b><p align="center" style='color:#99FFFF;font-size:30px;font-style:italic;font-weight:bold'>Year of the student :</p></b></td>
    	<td><b><p align="center" style='color:#99FFFF;font-size:30px;font-style:italic;font-weight:bold'><%out.println(rs.getString(4));%></p></b></td>
      </tr>
      <tr>
    	<td><b><p align="center" style='color:#99FFFF;font-size:30px;font-style:italic;font-weight:bold'>Course 1 opted by the student :</p></b></td>
    	<td><b><p align="center" style='color:#99FFFF;font-size:30px;font-style:italic;font-weight:bold'><%out.println(rs.getString(5));%></p></b></td>
      </tr>
      <tr>
    	<td><b><p align="center" style='color:#99FFFF;font-size:30px;font-style:italic;font-weight:bold'>Course 2 opted by the student :</p></b></td>
    	<td><b><p align="center" style='color:#99FFFF;font-size:30px;font-style:italic;font-weight:bold'><%out.println(rs.getString(6));%></p></b></td>
      </tr>
      <tr>
    	<td><b><p align="center" style='color:#99FFFF;font-size:30px;font-style:italic;font-weight:bold'>Course 3 opted by the student :</p></b></td>
    	<td><b><p align="center" style='color:#99FFFF;font-size:30px;font-style:italic;font-weight:bold'><%out.println(rs.getString(7));%></p></b></td>
      </tr>
      <tr>
    	<td><b><p align="center" style='color:#99FFFF;font-size:30px;font-style:italic;font-weight:bold'>Phone number of the student :</p></b></td>
    	<td><b><p align="center" style='color:#99FFFF;font-size:30px;font-style:italic;font-weight:bold'><%out.println(rs.getString(8));%></p></b></td>
      </tr>
      <tr>
    	<td><b><p align="center" style='color:#99FFFF;font-size:30px;font-style:italic;font-weight:bold'>Email of the student :</p></b></td>
    	<td><b><p align="center" style='color:#99FFFF;font-size:30px;font-style:italic;font-weight:bold'><%out.println(rs.getString(9));%></p></b></td>
      </tr>
    	<%	
  out.println("");
   }%>
 
   
   
 </table></body></html>
   <%

   out.println("");
    ps.executeUpdate();
    
    int i = ps.executeUpdate();
   
     
}
catch(Exception e)
{
out.println(e.getMessage());
}
%>