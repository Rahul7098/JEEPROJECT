<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta charset="ISO-8859-1">
<title>Delete title here</title>
</head>
<body>

  <br/>
  <div align="center">
    <nav class="w3-bar w3-red w3-large">
         <a href="adminafterlogin.jsp">ADMIN DASHBOARD </a> |
         <a href="search.jsp">SEARCH EMP </a> |
         <a href="ViewAllEmp">VIEW ALL EMP </a> |
         <a href="deleteuser.jsp">DEL EMP </a> |
         <a href="adminlogout.jsp">LOGOUT </a>
      </nav>
  </div>
   <div align="center">
   <h3 >DELETE OPERATION</h3>
  
   <form action="delservlett" method="post">
     <table>
     <tr>
         <td><label >Email</label></td>
         <td><input type="email" name="deletemail" placeholder="Enter your Email" required ></td>
       </tr>            

        <tr>
           <td>&nbsp;</td>
           <td> <input type="submit" value="delete"> </td>
        </tr>
       </table>
     </form>
     </div>  
</body>
</html>