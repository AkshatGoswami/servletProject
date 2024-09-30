package com.net.user.userDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.net.connection.connect.Connect;
import com.net.user.userBean.UserBean;

public class UserDAO {
	static Connection con = null;
	static PreparedStatement ps = null;
	static int rowCount = 0;
	static ResultSet rs = null;
	static int status = 0;

	public static int Register(UserBean sb) {
		try {
			con = Connect.getConnection();
			String sql = "INSERT INTO user_tb(email, name, password, uname ) VALUES (?, ?, ?, ?)";
			ps = con.prepareStatement(sql);
						
			
			ps.setString(1, sb.getEmail());
			ps.setString(2, sb.getName());
			ps.setString(3, sb.getPassword());
			ps.setString(4, sb.getUname());
			
			
			rowCount = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			}
		System.out.println("Hello");
		return rowCount;
	}
	
	public static int Login(UserBean ub) {
		try {
			con = Connect.getConnection();
			String sql = "select * from user_tb where email=? and password=?;";
			ps = con.prepareStatement(sql);
						
			ps.setString(1, ub.getEmail());
			ps.setString(2, ub.getPassword());			
		
			rs = ps.executeQuery();
			
			if(rs.next()) {
				rowCount = 1;
			}
			else {
				rowCount = 0;
			}
		} catch (Exception e) {
			e.printStackTrace();
			}
		
		return rowCount;
	}
	
}
