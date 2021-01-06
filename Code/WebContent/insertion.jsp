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
    String name=request.getParameter("name");
	String id=request.getParameter("id");
	String branch=request.getParameter("branch");
	String year=request.getParameter("year");
	String course1=request.getParameter("course1");
	String course2=request.getParameter("course2");
	String course3=request.getParameter("course3");
	String phonenumber=request.getParameter("phonenumber");
	String email=request.getParameter("email");
	
    Class.forName("oracle.jdbc.driver.OracleDriver");
   // out.println("hi");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","purvaja","password");
    PreparedStatement pstmt=con.prepareStatement("insert into StudentDetails values(?,?,?,?,?,?,?,?,?)");
    pstmt.setString(1,name);
    pstmt.setString(2,id);
    pstmt.setString(3,branch);
    pstmt.setString(4,year);
    pstmt.setString(5,course1);
    pstmt.setString(6,course2);
    pstmt.setString(7,course3);
    pstmt.setString(8,phonenumber);
    pstmt.setString(9,email);





    
    int i = pstmt.executeUpdate();
    if (i > 0) {
    	out.println("<html><body bgcolor='#990000'>");
      out.println("<p align='center' style='color:white;font-size:40px;font-style:italic;font-weight:bold'>Successfully inserted </p>");
      out.println("<p align='center'><a href='insert.jsp'style='color:white;font-size:20px;font-style:italic;font-weight:bold' >Insert</p></a>"); 
      out.println("<p align='center'><a href='display.jsp' style='color:white ;font-size:20px;font-style:italic;font-weight:bold'>Display</a>");
      out.println("<p align='center'><a href='indexUpdate.html' style='color:white ;font-size:20px;font-style:italic;font-weight:bold'>Update</a>");
      out.println("<p align='center'><a href='deleteform.html' style='color:white ;font-size:20px;font-style:italic;font-weight:bold'> Delete</a>");
        out.println("</body></html>");

    } else {
    	out.println("<html><body bgcolor='#990000'>");
     out.println("<p align='center' style='color:white;font-size:40px;font-style:italic;font-weight:bold'>Could not able to insert</p>");
     out.println("</body></html>");

    }
     
}
catch(Exception e)
{
out.println(e.getMessage());
}
%>