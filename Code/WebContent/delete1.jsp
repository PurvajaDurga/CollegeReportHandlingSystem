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
    PreparedStatement pstmt=con.prepareStatement("delete from FacultyDetails where id=?");
   
    pstmt.setString(1,id);  
    int i = pstmt.executeUpdate();
    if (i > 0) {
    	out.println("<html><body bgcolor='#990000'>");
        out.println("<p align='center' style='color:white;font-size:40px;font-style:italic;font-weight:bold'>Successfully Deleted A Record </p>");
        out.println("<p align='center'><a href='insert1.jsp'style='color:white;font-size:20px;font-style:italic;font-weight:bold' >Insert</p></a>"); 
        out.println("<p align='center'><a href='display1.jsp' style='color:white ;font-size:20px;font-style:italic;font-weight:bold'>Display</a>");
        out.println("<p align='center'><a href='indexUpdate1.html' style='color:white ;font-size:20px;font-style:italic;font-weight:bold'>Update</a>");
        out.println("<p align='center'><a href='deleteform1.html' style='color:white ;font-size:20px;font-style:italic;font-weight:bold'> Delete</a>");
          out.println("</body></html>");
    } else {
    	out.println("<html><body bgcolor='#990000'>");
        out.println("<p align='center' style='color:white;font-size:40px;font-style:italic;font-weight:bold'>Could not able to Delete</p>");
        out.println("<p align='center'><a href='deleteform1.html' style='color:white ;font-size:20px;font-style:italic;font-weight:bold'> Delete</a>");

        out.println("</body></html>");    }
     
}
catch(Exception e)
{
out.println(e.getMessage());
}
%>