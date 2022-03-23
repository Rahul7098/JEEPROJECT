package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EmpDAO;
import models.EmpInfoModel;

@WebServlet("/searching")
public class searching extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public searching() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		//STEP 1  Receive Data from Client like take an input
				String email = request.getParameter("email1");
				 
				
				//EmpInfoModel empobj = new EmpInfoModel();
				 
				//empobj.setEmail(email);
				
				//STEP 3 CREATE DAO CLASS OBJECT
				EmpDAO daoobj = new EmpDAO();
				
				//STEP 4 CALL DAO METHOD
			
				
				EmpDAO daoobj1 = new EmpDAO();
				ArrayList<EmpInfoModel> allemplist = daoobj1. searchingRecord(email);
				// receive all database record in arraylist
				
		request.setAttribute("emplist1", allemplist);
		RequestDispatcher rd = request.getRequestDispatcher("searchmsg.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
