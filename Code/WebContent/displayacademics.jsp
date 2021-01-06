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
<h1 style='color:#990000;font-size:40px;font-style:italic;font-weight:bold' align='center'>Academic Details</h1>
</body>
</html>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.servlet.*" %>
<%
try
{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","purvaja","password");
    PreparedStatement ps=con.prepareStatement("select * from academics ");
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
   <td>
   <% out.println(rs.getString(10)); %>
   </td>
   <td>
   <% out.println(rs.getString(11)); %>
   </td>
   <td>
   <% out.println(rs.getString(12)); %>
   </td>
   <td>
   <% out.println(rs.getString(13)); %>
   </td>
   <td>
   <% out.println(rs.getString(14)); %>
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

        out.println("<p align='center'></p>"); 
        out.println("</body></html>");
       
    } else {
    	out.println("<html><body bgcolor='#990000'>");
        out.println("<p align='center' style='color:#990000;font-size:40px;font-style:italic;font-weight:bold'>Could not able to Display</p>");
        out.println("<p align='center'><a href='academicconection.jsp' style='color:#990000 ;font-size:20px;font-style:italic;font-weight:bold'>Display</a>");

        out.println("</body></html>");   
        }
}
catch(Exception e)
{
out.println(e.getMessage());
}
%>