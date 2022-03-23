<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>SEARCH title here</title>
</head>
<body>
<%
    
     String utype = (String)session.getAttribute("usertype");
     if (utype == null)
     {
    	 response.sendRedirect("adminlogin.jsp");
     }	
     else
     {
    	  
   %>
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
   <h3 >SEARCH OPERATION</h3>
   <form action="searching" method="post">
     <table>
     <tr>
         <td><label >Email</label></td>
         <td><input type="email" name="email1" placeholder="Enter your Email" required ></td>
       </tr>            

        <tr>
           <td>&nbsp;</td>
           <td> <input type="submit" value="search"> </td>
        </tr>
       </table>
     </form>
     </div>
     <%
     }
  %>  
</body>
</html>