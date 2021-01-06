<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
        function Validate() {
        	var a = document.getElementById("course1");
        	var b = document.getElementById("course2");
        	var c = document.getElementById("course3");

        	if ((a.options[a.selectedIndex].value == b.options[b.selectedIndex].value) || (b.options[b.selectedIndex].value == c.options[c.selectedIndex].value) || (c.options[c.selectedIndex].value == a.options[a.selectedIndex].value)) {
        	   alert("Please select different courses");
        	} 
        }
    
</script>
</head>
<body>
<body bgcolor='#990000' align="center">
<div style="position:absolute;left:400px;top:100px;">
<p align="center" style='color:white;font-size:40px;font-style:italic;font-weight:bold'>Update the Record</p>
<%String id=request.getParameter("id");
	%>
<form action="updation.jsp?id=<%=id %>" method="post"><br><br>
<table>
				<tr>
					<td><b><p align="center" style='color:white;font-size:20px;font-style:italic;font-weight:bold'>Enter Name :</p></b></td>
					<td >
					<input type="text" name="name" required></td>
				</tr>
				
   			<tr>
   			<td><b><p align="center" style='color:white;font-size:20px;font-style:italic;font-weight:bold'>Select Branch :</p></b></td>
   			     <td>  <select id="branch" name="branch" required>
  <option value="CSE">CSE</option>
  <option value="ECE">ECE</option>
  <option value="EEE">EEE</option>
  <option value="MECH">MECH</option>
  </td>
</select>
   			</tr>
   			<tr>
   			<td><b><p align="center" style='color:white;font-size:20px;font-style:italic;font-weight:bold'>Select Year :</p></b></td>
   			     <td>  <select id="year" name="year" required>
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
  </td>
</select>
   			</tr>
   			<tr>
   			<td><b><p align="center" style='color:white;font-size:20px;font-style:italic;font-weight:bold'>Select Course1:</p></b></td>
   			     <td>  <select id="course1" name="course1" required>
  <option value="C">C</option>
  <option value="C++">C++</option>
  <option value="Python">Python</option>
  <option value="Java">Java</option>
  </td>
  <tr>
   			<td><b><p align="center" style='color:white;font-size:20px;font-style:italic;font-weight:bold'>Select Course2:</p></b></td>
   			     <td>  <select id="course2" name="course2" required>
  <option value="C">C</option>
  <option value="C++">C++</option>
  <option value="Python">Python</option>
  <option value="Java">Java</option>
  </td>
</select>
   			</tr>
   			<td><b><p align="center" style='color:white;font-size:20px;font-style:italic;font-weight:bold'>Select Course3:</p></b></td>
   			     <td>  <select id="course3" name="course3" required>
  <option value="C">C</option>
  <option value="C++">C++</option>
  <option value="Python">Python</option>
  <option value="Java">Java</option>
  </td>
</select>
   			</tr>
   			<tr>
					<td><b><p align="center" style='color:white;font-size:20px;font-style:italic;font-weight:bold'>Enter PhoneNumber :</p></b></td>
					<td><input type="text" name="phonenumber" required></td>
   			</tr>
   			<tr>
					<td><b><p align="center" style='color:white;font-size:20px;font-style:italic;font-weight:bold'>Enter Email Address:</p></b></td>
					<td><input type="text" name="email" required></td>
   			</tr>
   			
   			
   			
<tr>
<td>
<p align="center"><input type="submit" value="submit" onclick="Validate()";/></p></td>
</tr>
</form>
</div>
</table>

</body>
</html>