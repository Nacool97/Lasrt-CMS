package com.cognizant.cms.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cognizant.cms.dao.ConnectionHandler;

/**
 * Servlet implementation class SubmitPlanCodeServlet
 */
@WebServlet("/SubmitPlanCode")
public class SubmitPlanCodeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubmitPlanCodeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn=ConnectionHandler.getConnection();
		
		String planid= request.getParameter("pcode");
		String plandesc= request.getParameter("pdode");
		String plancov1= request.getParameter("pco1");
		String plancov2= request.getParameter("pco2");
		String plancov3= request.getParameter("pco3");
		String plancov4= request.getParameter("pco4");
		String plancov5= request.getParameter("pco5");
		System.out.println(planid);
		System.out.println(plandesc);
		System.out.println(plancov1);
		System.out.println(plancov2);
		try {
			PreparedStatement ps=conn.prepareStatement("update plan_code set plan_desc=?, plan_cov1=?,plan_cov2=?,plan_cov3=?,plan_cov4=?,plan_cov5=? where plan_id="+"'"+planid+"'");
			ps.setString(1,plandesc);
			ps.setString(2,plancov1);
			ps.setString(3,plancov2);
			ps.setString(4,plancov3);
			ps.setString(5,plancov4);
			ps.setString(6,plancov5);
			ps.executeUpdate();
	
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
RequestDispatcher rd=request.getRequestDispatcher("claim-status-notification.jsp");
rd.forward(request, response);
}
}
