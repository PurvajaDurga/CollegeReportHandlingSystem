<%@ page import ="java.sql.*" %>
<%@ page import ="javax.servlet.*" %>
<%
try
{
    String id=request.getParameter("id");
  
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","purvaja","password");
    PreparedStatement pstmt=con.prepareStatement("select * from StudentDetails where id=? ");
    pstmt.setString(1,id);
   
    ResultSet rs=pstmt.executeQuery();
    if(rs.next())
    {
    	
    out.println("<html><body bgcolor='#990000'>");
    out.println("<p align='center' style='color:white;font-size:40px;font-style:italic;font-weight:bold'>Login Success</p>");
    out.println("<p align='center' style='color:white;font-size:40px;font-style:italic;font-weight:bold'>Welcome</p><br>");
    out.println("<p align='center' style='color:white;font-size:40px;font-style:italic;font-weight:bold'><a href='change.jsp?id="+id+"' style='color:white ;font-size:20px;font-style:italic;font-weight:bold'>Click for updation</p></a>");
    out.println("</body></html>");

    }
    else
    {
        out.println("<html><body bgcolor='#990000'>");

    out.println("<p align='center' style='color:white;font-size:40px;font-style:italic;font-weight:bold'>Invalid ID</p> <br>");
    out.println("<p align='center' style='color:white;font-size:30px;font-style:italic;font-weight:bold'>Try Again!!</p> <br>");

    out.println("<p align='center' style='color:white;font-size:30px;font-style:italic;font-weight:bold'><a href='indexUpdate.html'style='color:white ;font-size:20px;font-style:italic;font-weight:bold' >Click for updation</p></a>");

    out.println("</body></html>");

  
    }
}
catch(Exception e)
{
out.println(e.getMessage());
}
%>
