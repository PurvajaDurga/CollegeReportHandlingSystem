<%@ page import ="java.sql.*" %>
<%@ page import ="javax.servlet.*" %>
<%
try
{
    String uname=request.getParameter("uname");
    String newpwd=request.getParameter("newpwd");
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","purvaja","password");
    PreparedStatement pstmt=con.prepareStatement("update ud set pwd=?  where uname=?");
    pstmt.setString(1,newpwd);
    pstmt.setString(2,uname);
       int n=pstmt.executeUpdate();
       //out.println(n);
       if(n!=0){
       out.println("<html><body bgcolor='#990000'>");
    out.println("<p align='center' style='color:white;font-size:40px;font-style:italic;font-weight:bold'>password change is  successful</p><br>");
    out.println("<p align='center' style='color:white;font-size:40px;font-style:italic;font-weight:bold'> Welcome to " +uname+"</p><br>");
    out.println("<p align='center'><a href='index.html' style='color:white ;font-size:20px;font-style:italic;font-weight:bold'>Login</p></a>");
    out.println("</body></html>");
   
    	
}
       else
       {
           out.println("<html><body bgcolor='#990000'>");

       	out.println("<p align='center' style='color:white;font-size:40px;font-style:italic;font-weight:bold'>password change is not succesful</p><br>");
        out.println("<p align='center'><a href='index.html' style='color:white ;font-size:20px;font-style:italic;font-weight:bold'>Login</p></a>");

       	out.println("</body></html>");
}
}
catch(Exception e)
{
out.println(e.getMessage());
}
%>