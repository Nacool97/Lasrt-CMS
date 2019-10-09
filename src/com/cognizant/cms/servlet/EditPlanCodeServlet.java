package com.cognizant.cms.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cognizant.cms.dao.ConnectionHandler;
import com.cognizant.cms.dao.PlanCodeDaoSql;
import com.cognizant.cms.model.Member;
import com.cognizant.cms.model.plancodes;

/**
 * Servlet implementation class EditPlanCodeServlet
 */
@WebServlet("/EditPlanCode")
public class EditPlanCodeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditPlanCodeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//plancodes p = new plancodes();
		String id=request.getParameter("id");
		PlanCodeDaoSql planDao=new PlanCodeDaoSql();
		ArrayList<plancodes>planList=planDao.getPlanCodeById(id);
		request.setAttribute("planList",planList);
		request.setAttribute("plan_id", id);
		RequestDispatcher rd = request.getRequestDispatcher("/editplancode.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		}

}
