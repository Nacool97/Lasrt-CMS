package com.cognizant.cms.model;

import java.util.Date;

public class Member {
	private String fname ;
	private String lname;
    private int age;
    private String gender;
    private String contactnumber;
    private String memberid;
    private String password;
    private String email;
    private String address;
    private String zipcod;
    private String city,state;
    private String plan_code;
    private String status;
    private java.sql.Date cov_start,cov_end,dob;
    public Date getDob() {
		return dob;
	}

	public void setDob(java.sql.Date dob) {
		this.dob = dob;
	}

	public Member(String fname, String lname, int age, String gender, String contactnumber, String memberid,
			String password, String email, String address, String zipcod, String city, String state, String plan_code,
			String status,java.sql.Date cov_start,java.sql.Date cov_end) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.age = age;
		this.gender = gender;
		this.contactnumber = contactnumber;
		this.memberid = memberid;
		this.password = password;
		this.email = email;
		this.address = address;
		this.zipcod = zipcod;
		this.city = city;
		this.state = state;
		this.plan_code = plan_code;
		this.status = status;
		this.cov_start=cov_start;
		this.cov_end=cov_end;
	}
	
	public Date getCov_start() {
		return cov_start;
	}

	public void setCov_start(java.sql.Date cov_start) {
		this.cov_start = cov_start;
	}

	public Date getCov_end() {
		return cov_end;
	}

	public void setCov_end(java.sql.Date cov_end) {
		this.cov_end = cov_end;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getZipcod() {
		return zipcod;
	}

	public void setZipcod(String zipcod) {
		this.zipcod = zipcod;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getPlan_code() {
		return plan_code;
	}

	public void setPlan_code(String plan_code) {
		this.plan_code = plan_code;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Member() {
		// TODO Auto-generated constructor stub
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getContactnumber() {
		return contactnumber;
	}
	public void setContactnumber(String cno) {
		this.contactnumber = cno;
	}
	public String getMemberid() {
		return memberid;
	}
	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
}
