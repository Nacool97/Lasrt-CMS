package com.cognizant.cms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;

import com.cognizant.cms.model.Admin;
import com.cognizant.cms.model.Member;

public class AdminDaoSql {
	public ArrayList<Member> memberList=new ArrayList<Member>();
public void addAdmin(Admin admin) {
	String fname=admin.getFname() ;
    String lname=admin.getLname();
    int age=admin.getAge();
    String gender=admin.getGender();
    String contactnumberr=admin.getContactnumber();
    String adminid=admin.getAdminid();
    String password=admin.getPassword();
    String email=admin.getEmail();
	  try {
 		    Connection con=ConnectionHandler.getConnection();
 		
 			PreparedStatement stmt=con.prepareStatement("insert into admin (admin_id,fn,gender,ln,age,password,cnt_no,email) values('"+adminid+"','"+fname+"','"+gender+"','"+lname+"','"+age+"','"+password+"','"+contactnumberr+"','"+email+"')");
 			System.out.println("Admin Saved Succeessfully");
 			stmt.executeUpdate();
 			} catch (SQLException e) {
 			// TODO Auto-generated catch block
 			e.printStackTrace();
 		}  
}

public int loginAdmin(String adminid,String password) {

    try {
		Connection con=ConnectionHandler.getConnection();
		
			PreparedStatement stmt=con.prepareStatement("select * from admin where admin_id='"+adminid+"'");
			ResultSet rs=stmt.executeQuery(); 
			String passwordtemp=null;
			
			while(rs.next()){
				passwordtemp=rs.getString("password");
				System.out.println(passwordtemp);
			}
			if(passwordtemp==null)
				return 3;
				else if(passwordtemp.equals(password)){
				System.out.println("Admin Login succeesfully");
				return 1;
			}
			else{
				System.out.println("Admin not Login");
				return 3;
			}
			  
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		} 
  
    return 2;
}
    public ArrayList<Member> pendingRegistration() {
    
	try {
   		Connection con=ConnectionHandler.getConnection();
   		    int id=0;
   			PreparedStatement stmt=con.prepareStatement("select * from member where status='"+id+"'");
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
            String fname=rs.getString(2);
        	String lname=rs.getString(4);
            int age=rs.getInt(5);
            String gender=rs.getString(3);
            String contactnumberr=rs.getString(7);
            String memberid=rs.getString(1);
            String password=rs.getString(9);
            String email=rs.getString(7);
            java.sql.Date dob=rs.getDate(6);
            String plan_code=rs.getString(10);
            java.sql.Date start=(rs.getDate(11));
            java.sql.Date end=(rs.getDate(12));
            String address=rs.getString(13);
            String city=rs.getString(14);
            String state=rs.getString(15);
            String zip_code=rs.getString(16);
            String status=rs.getString(17);
 		Member member=new Member();
 		member.setAddress(address);
 		member.setAge(age);
 		member.setCity(city);
 		member.setContactnumber(contactnumberr);
 		member.setCov_end(end);
 		member.setCov_start(start);
 		member.setDob(dob);
 		member.setEmail(email);
 		member.setFname(fname);
 		member.setGender(gender);
 		member.setLname(lname);
 		member.setMemberid(memberid);
 		member.setPassword(password);
 		member.setPlan_code(plan_code);
 		member.setState(state);
 		member.setStatus(status);
 		member.setZipcod(zip_code);
 		
 		System.out.println(member);
 		memberList.add(member);
 		
            }
            
 		} catch (SQLException e) {
 			e.printStackTrace();
 		}
	return memberList;
	
}
    
    
    public void AcceptMemberStatus(String memidd) {
   	 ArrayList<Member> memberList=null;
	try {
  		Connection con=ConnectionHandler.getConnection();
  		    int id=1;
  		    String mem_id=memidd;
  		    System.out.println("MemberId "+mem_id );
  			PreparedStatement stmt=con.prepareStatement("update member set status='"+id+"' where mem_id='"+mem_id+"'");
  			System.out.println("menber Status accepted Succeessfully");
 			stmt.executeUpdate();
           
		} catch (SQLException e) {
			e.printStackTrace();
		}

	
}
    public void rejectMemberStatus(String memid) {
      	 ArrayList<Member> memberList=null;
   	try {
     		Connection con=ConnectionHandler.getConnection();
   
     		 
     			PreparedStatement stmt=con.prepareStatement("delete from member where mem_id='"+memid+"'");
     			System.out.println("member Status Rejected Succeessfully");
    			stmt.executeUpdate();
              
   		} catch (SQLException e) {
   			e.printStackTrace();
   		}

   	
   }
public static int verifysignup(Admin ld) {
		

		String id = ld.getAdminid();
		String password= ld.getPassword();
		
		   Connection con=ConnectionHandler.getConnection();
		

		try {
			Statement s = con.createStatement();
			int status_id=0;
			ResultSet rs = s.executeQuery("select password= '" +  password + "'from admin where admin_id='" + id  + "'");

			if (rs.next()) {
				return 3;

			} 
			
			con.close();
		}
		catch (Exception e) {

			System.out.println(e);

		}
			return 1;
		
	}
}
