<%@ page import ="java.sql.*" %>
<%@ page import ="javax.servlet.*" %>
<%


try
{
   String id=request.getParameter("id");
	String name=request.getParameter("name");
	String phonenumber=request.getParameter("phonenumber");
	String email=request.getParameter("email");
	String joining=request.getParameter("joining");
	String address=request.getParameter("address");
	String course1=request.getParameter("course1");
	String type=request.getParameter("type");
	String branch=request.getParameter("branch");


    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","purvaja","password");
    PreparedStatement pstmt=con.prepareStatement("update FacultyDetails set name=?,phonenumber=?,email=?,address=?,joining=?,course1=?,type=?,branch=?  where id=?");
   
    pstmt.setString(1,name);
    pstmt.setString(2,phonenumber);
    pstmt.setString(3,email);
    pstmt.setString(4,address);
    pstmt.setString(5,joining);
    pstmt.setString(6,course1);
    pstmt.setString(7,type);
    pstmt.setString(8,branch);
    pstmt.setString(9,id);
    int i = pstmt.executeUpdate();
    if (i > 0) {
    	out.println("<html><body bgcolor='#990000'>");
        out.println("<p align='center' style='color:white;font-size:40px;font-style:italic;font-weight:bold'>Successfully Updated Faculty Details</p>");
        out.println("<p align='center'><a href='insert1.jsp'style='color:white;font-size:20px;font-style:italic;font-weight:bold' >Insert</p></a>"); 
        out.println("<p align='center'><a href='display1.jsp' style='color:white ;font-size:20px;font-style:italic;font-weight:bold'>Display</a>");
        out.println("<p align='center'><a href='indexUpdate1.html' style='color:white ;font-size:20px;font-style:italic;font-weight:bold'>Update</a>");
        out.println("<p align='center'><a href='deleteform1.html' style='color:white ;font-size:20px;font-style:italic;font-weight:bold'> Delete</a>");
          out.println("</body></html>");
    } else {
    	out.println("<html><body bgcolor='#990000'>");
        out.println("<p align='center' style='color:white;font-size:40px;font-style:italic;font-weight:bold'>Could not able to insert</p>");
        out.println("<p align='center'><a href='indexUpdate1.html' style='color:white ;font-size:20px;font-style:italic;font-weight:bold'>Update</a>");

        out.println("</body></html>");

    }
     
}
catch(Exception e)
{
out.println(e.getMessage());
}
%>