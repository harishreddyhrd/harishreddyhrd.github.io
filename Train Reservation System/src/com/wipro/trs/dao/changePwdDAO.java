package com.wipro.train.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.wipro.train.bean.changePwdBean;
import com.wipro.train.util.DBUtil;

public class changePwdDAO {
	public int changePwd(changePwdBean CB) {
		int count = 0;
		try {			
			Connection connection = DBUtil.getDBConnection();
			String uname=CB.getUname();
			String pass=CB.getPass();
			String opass=CB.getOpass();
			String cpass=CB.getCpass();
			/*String query = "Update registration_table SET Pass=pass,Cpass=cpass WHERE Uname='"+uname+"' and Pass='"+opass+"'";*/
			PreparedStatement preparedStatement = connection.prepareStatement("Update registration_table SET Pass=pass,Cpass=cpass WHERE Uname='"+uname+"' and Pass='"+opass+"'");
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
