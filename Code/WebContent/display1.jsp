<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
table, tr, td {
  border: 2px solid black;
   padding: 12px;
   
  width: 100%;
   text-align: left;
}
table.center {
  margin-left: auto; 
  margin-right: auto;
}
</style>
</head>
<body>
<h1 style='color:#990000;font-size:40px;font-style:italic;font-weight:bold' align='center'>Faculty Details</h1>
</body>
</html>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.servlet.*" %>
<%
try
{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","purvaja","password");
    PreparedStatement ps=con.prepareStatement("select * from FacultyDetails ");
    ResultSet rs=ps.executeQuery();
    while(rs.next()) 
   { 
    	%>
    	
    	<html><body>
    	
    	<table class="center" cellspacing="10px">
    	<tr>
    	<td><% 
    	out.println(rs.getString(1));%>
    	</td>
    	<td>
    	<% 
   out.println(rs.getString(2));%>
   </td>
   <td>
   <%
   out.println(rs.getString(3)); %>
   </td>
   <td>
   <% out.println(rs.getString(4));%>
   </td>
   <td>
   <% out.println(rs.getString(5)); %>
   </td>
   <td>
   <% out.println(rs.getString(6)); %>
   </td>
   <td>
   <% out.println(rs.getString(7)); %>
   </td>
   <td>
   <% out.println(rs.getString(8)); %>
   </td>
    <td>
   <% out.println(rs.getString(9)); %>
   </td>
   
  <%  out.println("");
   }%>
   </tr></table></body></html>
   <%

   out.println("");
    ps.executeUpdate();
    
    int i = ps.executeUpdate();
    if (i > 0) {
    	out.println("<html><body>");
        out.println("<p align='center' style='color:#990000;font-size:40px;font-style:italic;font-weight:bold'>Successful </p>");
        out.println("<p align='center' style='color:#990000;font-size:40px;font-style:italic;font-weight:bold'>Student Details </p>");

        out.println("<p align='center'><a href='insert.jsp'style='color:#990000;font-size:20px;font-style:italic;font-weight:bold' >Insert</p></a>"); 
        out.println("<p align='center'><a href='display.jsp' style='color:#990000 ;font-size:20px;font-style:italic;font-weight:bold'>Display</a>");
        out.println("<p align='center'><a href='indexUpdate.html' style='color:#990000 ;font-size:20px;font-style:italic;font-weight:bold'>Update</a>");
        out.println("<p align='center'><a href='deleteform.html' style='color:#990000 ;font-size:20px;font-style:italic;font-weight:bold'> Delete</a>");
        
        out.println("<p align='center' style='color:#990000;font-size:40px;font-style:italic;font-weight:bold'>Faculty Details </p>");
        out.println("<p align='center'><a href='insert1.jsp'style='color:#990000;font-size:20px;font-style:italic;font-weight:bold' >Insert</p></a>"); 
        out.println("<p align='center'><a href='display1.jsp' style='color:#990000 ;font-size:20px;font-style:italic;font-weight:bold'>Display</a>");
        out.println("<p align='center'><a href='indexUpdate1.html' style='color:#990000 ;font-size:20px;font-style:italic;font-weight:bold'>Update</a>");
        out.println("<p align='center'><a href='deleteform1.html' style='color:#990000 ;font-size:20px;font-style:italic;font-weight:bold'> Delete</a>");
        out.println("</body></html>");
       
    } else {
    	out.println("<html><body bgcolor='#990000'>");
        out.println("<p align='center' style='color:#990000;font-size:40px;font-style:italic;font-weight:bold'>Could not able to Display</p>");
        out.println("</body></html>");   
        }
}
catch(Exception e)
{
out.println(e.getMessage());
}
%>