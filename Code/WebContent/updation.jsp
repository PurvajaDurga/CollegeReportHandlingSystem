<%@ page import ="java.sql.*" %>
<%@ page import ="javax.servlet.*" %>
<%


try
{
   String id=request.getParameter("id");
	String name=request.getParameter("name");
	String branch=request.getParameter("branch");
	String year=request.getParameter("year");
	String course1=request.getParameter("course1");
	String course2=request.getParameter("course2");
	String course3=request.getParameter("course3");
	String phonenumber=request.getParameter("phonenumber");
	String email=request.getParameter("email");
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","purvaja","password");
    PreparedStatement pstmt=con.prepareStatement("update StudentDetails set name=?,branch=?,year=?,course1=?,course2=?,course3=?,phonenumber=?,email=?  where id=?");
   
    pstmt.setString(1,name); 
    pstmt.setString(2,branch);
    pstmt.setString(3,year);
    pstmt.setString(4,course1);
    pstmt.setString(5,course2);
    pstmt.setString(6,course3);
    pstmt.setString(7,phonenumber);
    pstmt.setString(8,email);
    pstmt.setString(9,id);


    int i = pstmt.executeUpdate();
    if (i > 0) {
    	out.println("<html><body bgcolor='#990000'>");
        out.println("<p align='center' style='color:white;font-size:40px;font-style:italic;font-weight:bold'>Successfully Updated Student Details</p>");
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