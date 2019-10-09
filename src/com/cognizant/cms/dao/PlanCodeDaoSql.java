package com.cognizant.cms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.cognizant.cms.model.plancodes;

public class PlanCodeDaoSql {
Connection conn=ConnectionHandler.getConnection();
public ArrayList<plancodes> getAllPlanCode()
{
ArrayList<plancodes> planList=new ArrayList<plancodes>();
try {
	PreparedStatement ps=conn.prepareStatement("select*from plan_code");
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
		plancodes p=new plancodes();
		p.setPlan_id(rs.getString("plan_id"));
		p.setPlan_desc(rs.getString("plan_desc"));
		p.setPlan_cov1(rs.getString("plan_cov1"));
		p.setPlan_cov2(rs.getString("plan_cov2"));
		p.setPlan_cov3(rs.getString("plan_cov3"));
		p.setPlan_cov4(rs.getString("plan_cov4"));
		p.setPlan_cov5(rs.getString("plan_cov5"));
		planList.add(p);
	}
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
return planList;
}

public ArrayList<plancodes> getPlanCodeById(String id)
{
ArrayList<plancodes> planList=new ArrayList<plancodes>();
try {
	PreparedStatement ps=conn.prepareStatement("select*from plan_code where plan_id=?");
	ps.setString(1, id);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
		plancodes p=new plancodes();
		p.setPlan_id(rs.getString("plan_id"));
		p.setPlan_desc(rs.getString("plan_desc"));
		p.setPlan_cov1(rs.getString("plan_cov1"));
		p.setPlan_cov2(rs.getString("plan_cov2"));
		p.setPlan_cov3(rs.getString("plan_cov3"));
		p.setPlan_cov4(rs.getString("plan_cov4"));
		p.setPlan_cov5(rs.getString("plan_cov5"));
		planList.add(p);
	}
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
return planList;
}
}
