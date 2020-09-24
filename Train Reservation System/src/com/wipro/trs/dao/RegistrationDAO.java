package com.wipro.train.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.wipro.train.bean.RegistrationBean;
import com.wipro.train.util.DBUtil;

public class RegistrationDAO {
	public int Register(RegistrationBean RB) {
		int count = 0;
		try {			
			Connection connection = DBUtil.getDBConnection();
			String query = "insert into Registration_table values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, RB.getUname());
			preparedStatement.setString(2, RB.getPass());
			preparedStatement.setString(3, RB.getCpass());
			preparedStatement.setString(4, RB.getFname());
			preparedStatement.setString(5, RB.getLname());
			preparedStatement.setString(6, RB.getGender());
			preparedStatement.setDate(7, (Date) RB.getDob());
			preparedStatement.setString(8, RB.getEmail());
			preparedStatement.setLong(9, RB.getMobno());
			preparedStatement.setString(10, RB.getSecurityQues());
			preparedStatement.setString(11, RB.getSecurityAns());
			preparedStatement.setString(12, RB.getNationality());
			preparedStatement.setString(13, RB.getAddr());
			count = preparedStatement.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		
		System.out.println(count);
		return count;
	}
	public int Login(String uname,String pass)
	{
		int count = 0;
		try {			
			Connection connection = DBUtil.getDBConnection();
			String query = "select Uname,Pass from Registration_table where Uname='"+uname+"' and Pass='"+pass+"'";
			PreparedStatement preparedStatement = connection.prepareStatement(query);
			ResultSet resultSet = preparedStatement.executeQuery();
			if(resultSet.next())
				count=1;
			resultSet.close();
			System.out.println(count);
		} catch (Exception e) {
			System.out.println(e);
		}
		return count;
	}
	public RegistrationBean forgotPwd(String uname1)
	{
		RegistrationBean tb=new RegistrationBean();
		try {
			Connection con=DBUtil.getDBConnection();
			String query="select securityQues,securityAns from Registration_table where Uname='"+uname1+"'";
			PreparedStatement ps=con.prepareStatement(query);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				tb.setSecurityQues(rs.getString("securityQues"));
				tb.setSecurityAns(rs.getString("securityans"));
			}
			rs.close();
		}catch(Exception e) {
		
		} 
		return tb;
	}
	public int CngPwd(String uname1,String pass1)
	{
		int count=0;
		try {
		Connection con=DBUtil.getDBConnection();
		String uname=uname1;
		String pass=pass1;
		/*String query = "Update registration_table SET Pass=pass,Cpass=cpass WHERE Uname='"+uname+"' and Pass='"+opass+"'";*/
		PreparedStatement preparedStatement = con.prepareStatement("Update registration_table SET Pass=pass,Cpass=pass WHERE Uname='"+uname+"'");
		int resultSet = preparedStatement.executeUpdate();
		if(resultSet>0)
			count=1;
		System.out.println(count);
	} catch (Exception e) {
		System.out.println(e);
	}
	return count;

	}
}

		
		
	

