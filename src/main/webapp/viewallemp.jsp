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
  <div align="center">
    <nav class="w3-bar w3-red w3-large">
         <a href="adminafterlogin.jsp">ADMIN DASHBOARD </a> |
         <a href="search.jsp">SEARCH EMP </a> |
         <a href="ViewAllEmp">VIEW ALL EMP </a> |
         <a href="deleteuser.jsp">DEL EMP </a> |
         <a href="adminlogout.jsp">LOGOUT </a>
      </nav>
     <br/>
     <%
       ArrayList<EmpInfoModel> emplist =(ArrayList<EmpInfoModel>) request.getAttribute("emplist");
    	
       if (emplist != null)
       {
      %> 
         <table border="1" class="w3-table w3-striped w3-border">
           <caption>ALL EMP DETAILS</caption>
           <tr class="w3-blue">
             <th>EMP ID</th>
             <th>NAME</th>
             <th>EMAIL</th>
             <th>SALARY</th>
             <th>CITY</th>
           </tr>
        
     <%
       for(EmpInfoModel empobj:emplist)
       {
     %>
    	 <tr>
    	   <td><% out.print(""+empobj.getEmpid()); %></td>
    	   <td><% out.print(empobj.getName()); %></td>
    	   <td><% out.print(empobj.getEmail()); %></td>
           <td><% out.print(""+empobj.getSalary()); %></td>
    	   <td><% out.print(empobj.getCity()); %></td>
    	   <td> <form action="DelEmpServlet" method="post">
    	            <input type="hidden" name="emailid" value="<%=empobj.getEmail()%>">
    	            <input type="submit" class="w3-button w3-pink" value="Delete">
    	        </form> </td>
    	 </tr>
      <% 
       } //END FOR LOOP
       %>
          </table>
     
     <%
     } //END IF TRUE PART
     else
     {
    %>
     <h3> NO RECORD FOUND </h3>
     <%
     }
       
    }
     %>
     
     
     
  </div>
</body>
</html>