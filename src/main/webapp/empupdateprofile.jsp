<%@page import="models.EmpInfoModel"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Update Emp</title>
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
      <h3 class="w3-container w3-yellow">EDIT PROFILE</h3>
          
     <%
    	 if (request.getAttribute("msg") != null)
         {
    %>
          <b style="color: red;"> <%=request.getAttribute("msg") %></b>
     <% 
          }
      %>
   <br/>
   <form action="UpdateEmpServlet" method="post">
     <table>
       <tr>
         <td><label >Name</label></td>
         <td><input type="text" name="fullname" value="<%=empobj.getName()%>" readonly="readonly"></td>
       </tr>
 
       <tr>
         <td><label >Email</label></td>
         <td><input type="email" name="emailid" value="<%=empobj.getEmail()%>" readonly ></td>
       </tr>            

       <tr>
         <td><label >Password</label></td>
         <td><input type="text" name="pass" value="<%=empobj.getPassword()%>" required></td>
       </tr>
            
       <tr>
         <td><label >Salary</label></td>
         <td><input type="text" name="salary" value="<%= ""+empobj.getSalary()%>" required ></td>
       </tr>
            
       <tr>
          <td><label >City</label></td>
          <td><input type="text" name="city" value="<%= empobj.getCity()%>" required ></td>          </td>
        </tr>
        <tr>
           <td>&nbsp;</td>
           <td> <input type="submit" value="UPDATE"> </td>
        </tr>
       </table>
     </form>
     </div>
  <%
     }
    %>
</body>
</html>