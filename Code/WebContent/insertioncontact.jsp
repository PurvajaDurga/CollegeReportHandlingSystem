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
	String phonenumber=request.getParameter("phonenumber");
	String email=request.getParameter("email");
	String text=request.getParameter("text");
	
    Class.forName("oracle.jdbc.driver.OracleDriver");
   // out.println("hi");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","purvaja","password");
    PreparedStatement pstmt=con.prepareStatement("insert into contactUs values(?,?,?,?)");
    pstmt.setString(1,name);
    pstmt.setString(2,phonenumber);
    pstmt.setString(3,email);
    pstmt.setString(4,text);
   
    
    int i = pstmt.executeUpdate();
    if (i > 0) {
    	out.println("<html><body bgcolor='#990000'>");
      out.println("<p align='center' style='color:white;font-size:40px;font-style:italic;font-weight:bold'>Successfully inserted </p>");
      out.println("<p align='center'><a href='contactUs.jsp'style='color:white;font-size:20px;font-style:italic;font-weight:bold' >ContactUs</p></a>"); 

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