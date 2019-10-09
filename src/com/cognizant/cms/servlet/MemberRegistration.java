package com.cognizant.cms.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.cognizant.cms.dao.AdminDaoSql;
import com.cognizant.cms.dao.ConnectionHandler;
import com.cognizant.cms.dao.MemberDaoSql;
import com.cognizant.cms.model.Admin;
import com.cognizant.cms.model.Member;
import com.cognizant.cms.util.DateUtil;

@WebServlet("/MemberRegistration")
public class MemberRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public MemberRegistration() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		  // doGet(request, response);
		Date dob1 = null,start1 = null,end1 = null;
		java.sql.Date dob=null,start=null,end=null;
		   String fname = request.getParameter("fname");
	       String lname=request.getParameter("lname");
	       String agee=request.getParameter("age");
	       int age=Integer.parseInt(agee);
	       String gender=request.getParameter("gender");
	       String contactnumberr=request.getParameter("phonenumber");
	       String memberid=request.getParameter("member");
	       String password=request.getParameter("password");
	       String email=request.getParameter("email");
	       String address=request.getParameter("address");
	       String plan_code=request.getParameter("plan_codes");
	       String state=request.getParameter("state");
	       String city=request.getParameter("city");
	       String zip_code=request.getParameter("zip_code");
	       try {
		 dob1= DateUtil.convertToDate(request.getParameter("dob"));
		 dob=new java.sql.Date(dob1.getTime());
		 start1=DateUtil.convertToDate(request.getParameter("cov_start"));
		start=new java.sql.Date(start1.getTime());
		 end1=DateUtil.convertToDate(request.getParameter("cov_end"));
		end=new java.sql.Date(end1.getTime());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
           MemberDaoSql memberDaoSql=new MemberDaoSql();
           Member member=new Member();
           member.setAddress(address);
           member.setAge(age);
           member.setCity(city);
           member.setContactnumber(contactnumberr);
           member.setEmail(email);
           member.setFname(fname);
           member.setLname(lname);
           member.setGender(gender);
           member.setMemberid(memberid);
           member.setPassword(password);
           member.setPlan_code(plan_code);
           member.setState(state);
           member.setZipcod(zip_code);
           member.setDob(dob);
           member.setCov_start(start);
           member.setCov_end(end);
           int i= memberDaoSql.verifysignup(member);
           if(i==1){
  			 
    	     memberDaoSql.addMember(member);
  			 String succes= "You'll have to wait for approval "+member.getFname();
  			 request.setAttribute("msg", succes);
  			 request.getRequestDispatcher("memberlogin.jsp").forward(request, response);
  			 
  		 }
           if(i==2)
    		 {
    			 String str= "Your request is already send for approval";
    			 request.setAttribute("msg", str);
    			 request.getRequestDispatcher("memberlogin.jsp").forward(request, response);
    		 }
  		  if(i==3)
  		 {
  			 String str= "Your request has been approved You can login";
  			 request.setAttribute("msg", str);
  			 request.getRequestDispatcher("memberlogin.jsp").include(request, response);
  		 }
	       
	       
	}

}
