<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%
String id=request.getParameter("id");
String name = request.getParameter("name");
String email= request.getParameter("email");
String batch=request.getParameter("batch");
String year=request.getParameter("year");
String type=request.getParameter("type");
String course=request.getParameter("course");

String fno=request.getParameter("fno");
String lno=request.getParameter("lno");

String result=request.getParameter("result");
String g=request.getParameter("g");

String sports=request.getParameter("sports");
String placement=request.getParameter("placement");
String result1=request.getParameter("result1");

try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
System.out.println("Driver Classes Loaded"); Connection con = null;
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "purvaja", "password");
System.out.println("Connection Established");
PreparedStatement pstmt = con.prepareStatement("insert into academics values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
pstmt.setString(1, id);
pstmt.setString(2, name);
pstmt.setString(3, email);
pstmt.setString(4, batch);
pstmt.setString(5, year);
pstmt.setString(6,type);
pstmt.setString(7,course);
pstmt.setString(8,fno);
pstmt.setString(9,lno);
pstmt.setString(10,result);
pstmt.setString(11,g);
pstmt.setString(12,sports);
pstmt.setString(13,placement);
pstmt.setString(14,result1);

int i = pstmt.executeUpdate();
if(i>0)
{
	out.println("<html><body bgcolor='#990000'>");

      out.println("<p align='center'><a href='displayacademics.jsp' style='color:white ;font-size:20px;font-style:italic;font-weight:bold'>Display</a>");
      out.println("</body></html>");

}
else
{
%>
<h3>your response has been not sent</h3><br>
<%
}
}
catch(Exception e)
{
out.println(e);
}
%>