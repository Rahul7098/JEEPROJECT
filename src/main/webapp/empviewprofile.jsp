<%@page import="models.EmpInfoModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>EMP VIEW PROFILE</title>
</head>
<body>
 <%
     EmpInfoModel empobj = (EmpInfoModel)session.getAttribute("empinfo");
     if (empobj == null)
     {
    	 response.sendRedirect("emplogin.jsp");
     }	
     else
     {
   %>
   
   <div align="center">
  
      
  <br/>
    <nav class="w3-bar w3-blue w3-large">
   
         <a href="empafterlogin.jsp">EMP DASHBOARD </a> |
         <a href="empviewprofile.jsp">VIEW OWN PROFILE </a> |
         <a href="empupdateprofile.jsp">UPDATE PROFILE </a> |
         <a href="logoutemp.jsp">LOGOUT </a>
        
          <a style="float:right"> WELCOME <%= empobj.getName() %></a>
      </nav>
      
   <br/>
     <h3 class="w3-container w3-yellow">MY PROFILE</h3>
   <table border="1">
           <caption>DETAILS</caption>
           <tr>
             <th>NAME</th>
             <th>EMAIL</th>
             <th>SALARY</th>
             <th>CITY</th>
           </tr>
           
           <tr>
    	   <td><% out.print(empobj.getName()); %></td>
    	   <td><% out.print(empobj.getEmail()); %></td>
           <td><% out.print(""+empobj.getSalary()); %></td>
    	   <td><% out.print(empobj.getCity()); %></td>
    	 </tr>
           
    </table>
   
  </div>
  <%
     }
  %>
</body>
</html>