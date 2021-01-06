<html>
<body>
<!-- 
<marquee direction="down" height="1000" width="300" scrollamount="6"  bgcolor="#990000" loop="30">
<img src="1.png" height="100" width="300">
<img src="1.png" height="100" width="300">
<img src="1.png" height="100" width="300">
<img src="1.png" height="100" width="300">
<img src="1.png" height="100" width="300">
</marquee> -->
</body>
</html>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.servlet.*" %>
<%
try
{
    String uname=request.getParameter("uname");
    String pwd=request.getParameter("pwd");
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","purvaja","password");
    PreparedStatement pstmt=con.prepareStatement("select * from ud1 where uname=? and pwd=? ");
    pstmt.setString(1,uname);
    pstmt.setString(2,pwd);
    ResultSet rs=pstmt.executeQuery();
    if(rs.next())
    	
    {out.println("<html><body bgcolor='#990000'>");
    out.println("<p align='center' style='color:white;font-size:40px;font-style:italic;font-weight:bold'>Login Successful</p><br>");
    out.println("<p align='center'><font size='5' color='white'>Welcome  "+uname+"</p></font><br>");
    out.println("<p align='center' style='color:white;font-size:40px;font-style:italic;font-weight:bold'>Student Details</p><br>");
    out.println("<p align='center'><a href='insert.jsp'style='color:white;font-size:20px;font-style:italic;font-weight:bold' >Insert</p></a>"); 
    out.println("<p align='center'><a href='display.jsp' style='color:white ;font-size:20px;font-style:italic;font-weight:bold'>Display</a>");
    out.println("<p align='center'><a href='indexUpdate.html' style='color:white ;font-size:20px;font-style:italic;font-weight:bold'>Update</a>");
    out.println("<p align='center'><a href='deleteform.html' style='color:white ;font-size:20px;font-style:italic;font-weight:bold'> Delete</a>");
    out.println("<p align='center'><a href='studentUpdate.html'style='color:white;font-size:20px;font-style:italic;font-weight:bold' >Single Student Record</p></a>"); 

    
    out.println("<p align='center' style='color:white;font-size:40px;font-style:italic;font-weight:bold'>Faculty Details</p><br>");
    out.println("<p align='center'><a href='insert1.jsp'style='color:white;font-size:20px;font-style:italic;font-weight:bold' >Insert</p></a>"); 
    out.println("<p align='center'><a href='display1.jsp' style='color:white ;font-size:20px;font-style:italic;font-weight:bold'>Display</a>");
    out.println("<p align='center'><a href='indexUpdate1.html' style='color:white ;font-size:20px;font-style:italic;font-weight:bold'>Update</a>");
   out.println("<p align='center'><a href='deleteform1.html' style='color:white ;font-size:20px;font-style:italic;font-weight:bold'> Delete</a>");
   
   out.println("<p align='center' style='color:white;font-size:40px;font-style:italic;font-weight:bold'>View Feedback</p><br>");
   out.println("<p align='center'><a href='contactdisplay.jsp'style='color:white;font-size:20px;font-style:italic;font-weight:bold' >View Comments</p></a>"); 
   out.println("</body></html>");
    }
    else
    {
    	out.println("<html><body bgcolor='#990000'>");
    out.println("<p align='center' style='color:white;font-size:40px;font-style:italic;font-weight:bold'>Invalid Password </p><br><br>");
    out.println("<p align='center'><a href='changepwd.jsp?uname="+uname+"' style='color:white ;font-size:20px;font-style:italic;font-weight:bold'>Forget Password</a>");
    out.println("</body></html>");
    }
    
}
catch(Exception e)
{
out.println(e.getMessage());
}


%>
