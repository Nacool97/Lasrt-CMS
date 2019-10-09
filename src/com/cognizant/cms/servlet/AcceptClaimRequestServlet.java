package com.cognizant.cms.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cognizant.cms.dao.ConnectionHandler;
import com.cognizant.cms.model.Claim;

/**
 * Servlet implementation class AcceptClaimRequestServlet
 */
@WebServlet(name = "AcceptClaimRequest", urlPatterns = { "/AcceptClaimRequest" })
public class AcceptClaimRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AcceptClaimRequestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession(false);
		if(session==null)
		{
			RequestDispatcher rd=request.getRequestDispatcher("homepage.jsp");
		}
		else
		{
		Connection conn=ConnectionHandler.getConnection();
		String id=request.getParameter("claim_id");
		
		try {
			String query = "update claim set approve_status='accept',claim_status='close' where mem_id=?";
			PreparedStatement ps=conn.prepareStatement(query);
			ps.setString(1,id);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
<<<<<<< HEAD
		request.setAttribute("x",id);
=======
>>>>>>> 08f1a67f31e821d9efe50d0c56a863e5169dee7a
		RequestDispatcher rd=request.getRequestDispatcher("/claim-status-notification.jsp");
		rd.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
