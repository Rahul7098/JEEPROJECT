 <%@page import="models.EmpInfoModel"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Insert title here</title>
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
  <div align="center" class="w3-bar w3-red">
       
      <nav class="w3-bar w3-red">
         <a href="adminafterlogin.jsp">ADMIN DASHBOARD </a> |
         <a href="search.jsp">SEARCH EMP </a> |
         <a href="ViewAllEmp">VIEW ALL EMP </a> |
         <a href="deleteuser.jsp">DEL EMP </a> |
         <a href="adminlogout.jsp">LOGOUT </a>
      </nav>
     <br/>
     <table border="1">
         <caption>ALL EMP DETAILS</caption>
         <tr>
            <th>NAME</th>
            <th>EMAIL</th>
            <th>SALARY</th>
            <th>CITY</th>
         </tr>
         
     <%
       ArrayList<EmpInfoModel> emplist2 =(ArrayList<EmpInfoModel>) request.getAttribute("emplist1");
    	
       for(EmpInfoModel empobj:emplist2)
       {
     %>
    	 <tr>
    	   <td><% out.print(empobj.getName()); %></td>
    	   <td><% out.print(empobj.getEmail()); %></td>
           <td><% out.print(""+empobj.getSalary()); %></td>
    	   <td><% out.print(empobj.getCity()); %></td>
    	 </tr>
      <% 
       }
      %>
     
     </table>
     
     
  </div>
   <%
     }
  %>
</body>
</html>