<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body  style="background-color:#990000">
	<div style="position:absolute;left:400px;top:100px;">

<form name="myform" method="post" action="academicconnection.jsp">
			<caption><h2 align="center" style='color:white;font-size:40px;font-style:italic;font-weight:bold'>Student Academic Details Form</h2></caption>

			<table>

<tr>
<td><b><p align="center" style='color:white;font-size:20px;font-style:italic;font-weight:bold'>Id:</p></b></td>
					<td >
<input type="text" name="id"></td>
</tr>
<tr>
<td><b><p align="center" style='color:white;font-size:20px;font-style:italic;font-weight:bold'>Name :</p></b></td>
					<td >
<input type="text" name="name"></td>
</tr>
<tr>
<td><b><p align="center" style='color:white;font-size:20px;font-style:italic;font-weight:bold'>Email Id:</p></b></td>
					<td >
<input type="email" name="email"></td>
</tr>
<tr>
<td><b><p align="center" style='color:white;font-size:20px;font-style:italic;font-weight:bold'>Batch:
</p></b></td>
					<td >
<select id="option" name="batch">
                     <option value="2016-2020">2016-2020</option>
                     <option value="2017-2021">2017-2021</option>
                     <option value="2018-2022">2018-2022</option>
                     <option value="2019-2023">2019-2023</option>
                     <option value="2020-2024">2020-2024</option>
                     <option value="2021-2025">2021-2025</option>
                     <option value="2022-2026">2022-2026</option>
                     <option value="2023-2027">2023-2027</option>
                     <option value="2024-2028">2024-2028</option>
                     <option value="2025-2029">2025-2029</option>
                    
   </select>
   </td>
 </tr>
   <tr>
 <td><b><p align="center" style='color:white;font-size:20px;font-style:italic;font-weight:bold'> Year:</p></b></td>
 					<td >
 <select id="year" name="year" required>
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
</select>
					</td >

</tr>
<tr>
<td><b><p align="center" style='color:white;font-size:20px;font-style:italic;font-weight:bold'>Type:</p></b></td>
 					<td >
 <select id="type" name="type">
                     <option value="Even Sem">Even Sem</option>
                     <option value="Odd Sem">Odd Sem</option>
      </select>
      </td>
      </tr>
      <tr>
<td><b><p align="center" style='color:white;font-size:20px;font-style:italic;font-weight:bold'>Course:</p></b></td>
					<td >
<select id="course" name="course">
                     <option value="C">C</option>
                     <option value="C++">C++</option>
                     <option value="Python">Python</option>
                     <option value="Java">Java</option><br><br>
                     </select>
                     </td></tr>
                     <tr>
<td><b><p align="center" style='color:white;font-size:20px;font-style:italic;font-weight:bold'>Attendance Details:</p></b></td></tr>
<tr>
<td><b><p align="center" style='color:white;font-size:20px;font-style:italic;font-weight:bold'>Attended Classes :</p></b></td>					<td >
<input type="text" name="fno">				</td >
</tr>
<tr>
<td><b><p align="center" style='color:white;font-size:20px;font-style:italic;font-weight:bold'>Total Classes:</p></b></td>
<td> <input type="text" name="lno"></td>
</tr>
<tr>
<td><input type="button" name="" value="ATTENDANCE CALCULATE" onclick="attend()"></td></tr>
<tr>
<td><b><p align="center" style='color:white;font-size:20px;font-style:italic;font-weight:bold'>AttendencePercentage:</p></b></td>

<td> <input type="text" name="result"></td></tr>
<tr>
<td><input type="button" name="" value="TOTALABSENTCLASS" onclick="totalabsent()"></td></tr>

<td><b><p align="center" style='color:white;font-size:20px;font-style:italic;font-weight:bold'>
TotalAbsent:</p></b></td>

<td> <input type="text" name="result1"></td>
</tr>
<script type="text/javascript">
function attend()
{
fno=parseInt(myform.fno.value);
lno=parseInt(myform.lno.value);
result=fno/lno*100;
myform.result.value=result;
}
function totalabsent()
{
fno=parseInt(myform.fno.value);
lno=parseInt(myform.lno.value);
result1=lno-fno;
myform.result1.value=result1;
}
</script>
 <tr>
 <td><b><p align="center" style='color:white;font-size:30px;font-style:italic;font-weight:bold'>
Attendance details:</p></b></td>
<td><b><p align="center" style='color:white;font-size:20px;font-style:italic;font-weight:bold'>Full attendance:</p></b></td>
 <td><input type="radio" name="g" value="Full attendance"></td>
<td><b><p align="center" style='color:white;font-size:20px;font-style:italic;font-weight:bold'>Condonation:</p></b></td> 
<<td><input type="radio" name="g" value="condonation"></td>
<td><b><p align="center" style='color:white;font-size:20px;font-style:italic;font-weight:bold'>Detention:</p></b></td> 
<<td><input type="radio" name="g" value="detention"></td>
</tr>

<tr>                     
<td><b><p align="center" style='color:white;font-size:20px;font-style:italic;font-weight:bold'>Sports:</p></b></td>
<td> <select id="option" name="sports">
                     <option value="Tennis">Tennis</option>
                     <option value="FootBall">FootBall</option>
                     <option value="VolleyBall">VolleyBall</option>
                     <option value="Circket">Circket</option>
                     <option value="TableTennis">TableTennis</option>
                     <option value="BasketBall">BasketBall</option>
                     <option value="Chess">Chess</option>
                     <option value="Carroms">Carroms</option>
   </select>
 </td>
 </tr> 
 <tr>
<td><b><p align="center" style='color:white;font-size:20px;font-style:italic;font-weight:bold'>Placement:</p></b></td>
 <td><select id="option" name="placement">
                     <option value="Placed">Yes</option>
                     <option value="Not Placed">No</option>
         </select>
         </td>
         </tr>

<td>
<p align="center"><input type="submit" value="submit"></p></td>
</form>
</div>
</table>
</body>
</html>
