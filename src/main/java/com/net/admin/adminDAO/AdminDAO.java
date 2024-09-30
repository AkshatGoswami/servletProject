package com.net.admin.adminDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.net.admin.adminBean.AdminBean;
import com.net.connection.connect.Connect;
//import com.net.user.userBean.UserBean;

public class AdminDAO {
	static Connection con = null;
	static PreparedStatement ps = null;
	static int rowCount = 0;
	static ResultSet rs = null;
	static int status = 0;

	public static int Register(AdminBean ab) {
		try {
			con = Connect.getConnection();
			String sql = "INSERT INTO admin (admin_email, admin_name, admin_password, admin_uname ) VALUES (?, ?, ?, ?)";
			ps = con.prepareStatement(sql);
						
			ps.setString(1, ab.getEmail());
			ps.setString(2, ab.getName());
			ps.setString(3, ab.getPassword());
			ps.setString(4, ab.getUname());
			
			
			rowCount = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			}
		return rowCount;
	}
	
	public static int Login(AdminBean ab) {
		try {
			con = Connect.getConnection();
			String sql = "select * from admin where admin_email = ? and admin_password=?;";
			ps = con.prepareStatement(sql);
						
			ps.setString(1, ab.getEmail());
			ps.setString(2, ab.getPassword());			
		
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
	
	
	public static ResultSet ViewAdmin(String un) {	
		try {
			con = Connect.getConnection();
			String sql = "select * from admin where admin_name=?;";
			ps=con.prepareStatement(sql);
			
			ps.setString(1, un);
			
			rs = ps.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return rs;		
	}
	
	
	public static ResultSet getId(String name ) {	
		try {
			con = Connect.getConnection();
			String sql = 
	"select aid fron admin where admin_name=?";
	        ps=con.prepareStatement(sql); 
			ps.setString(1, name);
			
			rs = ps.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return rs;		
	}
	
	
	public static int UpdateProfile(AdminBean ab, int aid ) {	
		try {
			con = Connect.getConnection();
			String sql = 
					"update admin set admin_email=?,admin_name=?, admin_password=?, admin_uname=? where aid=?;";
			ps=con.prepareStatement(sql);
			
			ps.setString(1, ab.getEmail());
			ps.setString(2, ab.getName());
			ps.setString(3, ab.getPassword());
			ps.setString(4, ab.getUname());
			ps.setInt(5, aid);
//			ps.setString(8, sb.getResu());
			
			status = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return status;	
	}
	
	
}
