package com.auth.dao;

import java.sql.*;


public class AuthDao {
	
	public boolean  Validate(String uname, String pwd) throws ClassNotFoundException 
	{
			
		String url ="jdbc:mysql://localhost:3306/mydb?useSSL=false";
		String username="root";
		String password ="Aloe@123";
		String preparedQuery = "select * from tbluser where UserName=? and PWD=?";
		
		
			
			
			try {
				
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(url,username,password);
				PreparedStatement st2 = con.prepareStatement(preparedQuery);
				st2.setString(1, uname);
				st2.setString(2, pwd);
				System.out.println("result is" + st2);
				ResultSet result = st2.executeQuery();
				
				if (result.next()) return true;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		
		
		
		return false;
	}

}
