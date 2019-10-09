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

import com.cognizant.cms.dao.AdminDaoSql;
import com.cognizant.cms.dao.ConnectionHandler;

@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public AdminLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		  //doGet(request, response);
		HttpSession session=request.getSession(false);
		if(session!=null)
		{
			String password=request.getParameter("password");
		      String adminid=request.getParameter("adminid");
	          AdminDaoSql adminDaoSql=new AdminDaoSql();
	          HttpSession session1=request.getSession();
	          int i=adminDaoSql.loginAdmin(adminid, password);
	          if(i==1)
	          {
	        	  String success="Logged in Successfully";
	        	 
	        	  session1.setAttribute("msg", success);
	        	  RequestDispatcher rd=request.getRequestDispatcher("adminHome.jsp");
	    		  rd.forward(request, response);
	  
	          }
	          if(i==2)
	          {
	        	  String success="Member Id/Passoword incorrect";
	        	  session1.setAttribute("msg", success);
	        	  RequestDispatcher rd=request.getRequestDispatcher("adminlogin.jsp");
	    		  rd.forward(request, response);
	          }
	          if(i==3)
	          {
	        	  String success="Username or Password is incorrect";
        	  session1.setAttribute("msg", success);
        	  RequestDispatcher rd=request.getRequestDispatcher("adminlogin.jsp");
    		  rd.forward(request, response);
	          }
		}
		else
		{
			RequestDispatcher rd=request.getRequestDispatcher("homepage.jsp");
			rd.forward(request, response);
		} 		  
	}

}
