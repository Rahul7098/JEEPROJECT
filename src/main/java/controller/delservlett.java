package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EmpDAO;

@WebServlet("/delservlett")
public class delservlett extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public delservlett() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		//STEP 1  Receive Data from Client like take an input
		String email = request.getParameter("deletemail");
		//STEP 3 CREATE DAO CLASS OBJECT
		EmpDAO empdaoobj = new EmpDAO();
		
		//STEP 4 CALL DAO METHOD
		boolean status = empdaoobj.deleteRecord(email);
		
		//STEP 5 FOR GENERATE VIEW(JSP/HTML)
		if(status)
		{
		  RequestDispatcher rd = request.getRequestDispatcher("deletemsg.html");
		  rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doGet(request, response);
	}

}