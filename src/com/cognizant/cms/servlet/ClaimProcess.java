package com.cognizant.cms.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cognizant.cms.dao.ClaimDaoSql;
import com.cognizant.cms.model.Claim;


@WebServlet("/ClaimProcess")

public class ClaimProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ClaimProcess() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession(false);
		if(session==null)
		{
			RequestDispatcher rd=request.getRequestDispatcher("homepage.jsp");
<<<<<<< HEAD
			rd.forward(request, response);
=======
>>>>>>> 08f1a67f31e821d9efe50d0c56a863e5169dee7a
		}
		else
		{
		ClaimDaoSql claimDaoSql=new ClaimDaoSql();
		ArrayList<Claim> claimList=claimDaoSql.getClaimListToBeProcess();
		request.setAttribute("claimListObj", claimList);
		  RequestDispatcher requestDispatcher = request.getRequestDispatcher("claim_to_be_process.jsp");
          requestDispatcher.include(request, response);
		}
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
	}

}
