<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body  style="background-color:#990000">
	<div style="position:absolute;left:500px;top:100px;">
		<form action="insertion1.jsp" method="post">
			<caption><h2 align="center" style='color:white;font-size:40px;font-style:italic;font-weight:bold'>Enter Faculty Details</h2></caption>
			<table>
				<tr>
					<td><b><p align="center" style='color:white;font-size:20px;font-style:italic;font-weight:bold'>Enter Name :</p></b></td>
					<td >
					<input type="text" name="name" required></td>
				</tr>
				<tr>
					<td><b><p align="center" style='color:white;font-size:20px;font-style:italic;font-weight:bold'>Enter ID :</p></b></td>
					<td><input type="text" name="id" required></td>
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
   			<td><b><p align="center" style='color:white;font-size:20px;font-style:italic;font-weight:bold'>YearOfJoining:</td>
   		<td>	<select id="joining" name="joining">
                     <option value="2016">2016</option>
                     <option value="2017">2017</option>
                     <option value="2018">2018</option>
                     <option value="2019">2019</option>
                     <option value="2020">2020</option>
                     <option value="2021">2021</option>
                     <option value="2022">2022</option>
                     <option value="2023">2023</option>
                     <option value="2024">2024</option>
                     <option value="2025">2025</option></
                     
   </select></td>
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
<td><b><p align="center" style='color:white;font-size:20px;font-style:italic;font-weight:bold'>Type:</p></b></td>
<td> <select id="type" name="type">
                     <option value="Even Sem">Even Sem</option>
                     <option value="Odd Sem">Odd Sem</option>
      </select><br><br>   
      </td>			
   </tr>
   			<tr>
					<td><b><p align="center" style='color:white;font-size:20px;font-style:italic;font-weight:bold'>Enter Address:</p></b></td>
					<td><input type="text" name="address" required></td>
   			</tr>
   			
   			
<tr>
<td>
<p align="center"><input type="submit" value="submit" onclick="Validate()";/></p></td>
</tr>
</form>
</div>
</table>
</p>
</body>
</html>