package com.cognizant.cms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;

import com.cognizant.cms.model.Admin;
import com.cognizant.cms.model.Member;
import com.cognizant.cms.util.DateUtil;

public class MemberDaoSql {

	public void addMember(Member member) {
		String fname = member.getFname();
		String lname = member.getLname();
		int age = member.getAge();
		String gender = member.getGender();
		String contactnumberr = member.getContactnumber();
		System.out.println("MemberID " + member.getMemberid());
		String memberid = member.getMemberid();
		String password = member.getPassword();
		String email = member.getEmail();
		String address=member.getAddress();
		String zip_code=member.getZipcod();
		String status = "0";
		String city=member.getCity();
		String state=member.getState();
		String plan_code=member.getPlan_code();
		Date date=member.getDob();
		Date date2=member.getCov_end();
		Date date1=member.getCov_start();
		java.sql.Date sdate=new java.sql.Date(date.getTime());
		java.sql.Date sdate1=new java.sql.Date(date1.getTime());
		java.sql.Date sdate2=new java.sql.Date(date2.getTime());
		try {
			Connection con = ConnectionHandler.getConnection();
			int id = 0;
			PreparedStatement stmt = con.prepareStatement("insert into member values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			stmt.setString(1, memberid);
			stmt.setString(2, fname);
			stmt.setString(3, gender);
			stmt.setString(4, lname);
			stmt.setInt(5, age);
			stmt.setDate(6,sdate );
			stmt.setString(7, contactnumberr);
			stmt.setString(8, email);
			stmt.setString(9, password);
			stmt.setString(10, plan_code);
			stmt.setDate(11, sdate1);
			stmt.setDate(12, sdate2);
			stmt.setString(13, address);
			stmt.setString(14, city);
			stmt.setString(15, state);
			stmt.setString(16, zip_code);
			stmt.setString(17, status);
			System.out.println("Member Saved Succeessfully");
			stmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public int loginMember(String memberId,String passwordd) {
		String memId=memberId;
	
		try {
	   		   Connection con=ConnectionHandler.getConnection();
	   		   System.out.println();
	   		   int status_id=0;
	   		   String password=passwordd;
	   			PreparedStatement stmt=con.prepareStatement("select * from member where mem_id='"+memId+"' and status='"+status_id+"'");
				ResultSet rs=stmt.executeQuery(); 
				String passwordtemp=null;
	   			while(rs.next()){
	   				return 2;
	   				
	   			}
	   			status_id=1;
	   			PreparedStatement stmtt=con.prepareStatement("select * from member where mem_id='"+memId+"' and status='"+status_id+"'");
				ResultSet rsr=stmtt.executeQuery(); 
	   			while(rsr.next()){
	   				passwordtemp=rsr.getString(9);
	   				if(passwordtemp.equals(password)){
		   				System.out.println("Member Login succeesfully");
		   				return 1;

	   				}
	   				
	   			}
	   			
	   			} catch (SQLException e) {
	   			// TODO Auto-generated catch block
	   			e.printStackTrace();
	   		}
		return 3;  
	}

	public static int verifysignup(Member ld) {

		String id = ld.getMemberid();
		String password = ld.getPassword();

		Connection con = ConnectionHandler.getConnection();

		try {
			Statement s = con.createStatement();
			int status_id = 0;
			ResultSet rs = s.executeQuery("select password= '" + password + "'from member where mem_id='" + id
					+ "' and status='" + status_id + "'");

			if (rs.next()) {
				return 2;

			}
			status_id = 1;
			rs = s.executeQuery("select password= '" + password + "'from member where mem_id='" + id + "'");

			if (rs.next()) {
				return 3;

			}
			con.close();
		} catch (Exception e) {

			System.out.println(e);

		}
		return 1;

	}
	public Member getMember(String memberId) {
		 Connection con = ConnectionHandler.getConnection();
		 String id=memberId;
		 Member m=null;
		try {
			PreparedStatement stmt  = con.prepareStatement("select * from member where mem_id=?");
			stmt.setString(1, id);
			 java.sql.Date d1=null,d2=null,dob=null;
			ResultSet rs = stmt.executeQuery();
			while(rs.next())
			{
				String contactnumber=(rs.getString("cnt_no"));
				int age=Integer.parseInt(rs.getString("age"));
				
				m.setFname(rs.getString("fn"));
				m.setLname(rs.getString("ln"));
				m.setGender(rs.getString("gender"));
				m.setAddress(rs.getString("address"));
				m.setAge(Integer.parseInt(rs.getString("age")));
				m.setCity(rs.getString("city"));
				m.setContactnumber(contactnumber);
				d1=(rs.getDate("cov_start_date"));
						d2=(rs.getDate("cov_end_date"));
						dob=(rs.getDate("dob"));
				m.setCov_start(d1);
				m.setCov_end(d2);
				m.setDob(dob);
				m.setEmail(rs.getString("email"));
				m.setMemberid(rs.getString("mem_id"));
				m.setPassword(rs.getString("password"));
				m.setPlan_code(rs.getString("plan_code"));
				m.setState(rs.getString("state"));
				m.setStatus(rs.getString("status"));
				m.setZipcod(rs.getString("zip_code"));
				return m;
			}		
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return m;
		
	}
}
