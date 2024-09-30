package com.net.product.productDAO;
import com.net.product.productBean.*;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.net.admin.adminBean.AdminBean;
import com.net.connection.connect.Connect;
import com.net.user.userBean.UserBean;

public class ProductDAO {
	static Connection con = null;
	static PreparedStatement ps = null;
	static int rowCount = 0;
	static ResultSet rs = null;
	static int status = 0;

	public static ResultSet Show() {	
		try {
			con = Connect.getConnection();
			String sql = "select * from products;";
	        ps=con.prepareStatement(sql);

	   rs = ps.executeQuery();
	  } catch (Exception e) {
	            e.printStackTrace();
		}		
			return rs;		
		}
	
	public static ResultSet ViewProduct(int pid) {	
		try {
			con = Connect.getConnection();
			String sql = "select * from products where pid = ?;";
	        ps=con.prepareStatement(sql);
			ps.setInt(1, pid);


	   rs = ps.executeQuery();
	  } catch (Exception e) {
	            e.printStackTrace();
		}		
			return rs;		
		}
	
	
	
	public static int UpdatePro(ProductBean pb, int pid ) {	
		try {
			con = Connect.getConnection();
			String sql = 
					"update products set  name=?, uname=?, price=?, quantity=?, type=? where pid=?;";
			ps=con.prepareStatement(sql);
			
			ps.setString(1, pb.getName());
			ps.setString(2, pb.getUname());
			ps.setString(3, pb.getPrice());
			ps.setString(4, pb.getQuantity());
			ps.setString(5, pb.getType());
			ps.setInt(6, pid);
			
			status = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return status;	
	}
	
	public static int DeleteMed(int pid ) {	
		try {
			con = Connect.getConnection();
			String sql = "delete from products where pid=?;";
			ps=con.prepareStatement(sql);
			ps.setInt(1, pid);
			
			status = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return status;	
	}
	
	
	public static int AddProduct(ProductBean pb ) {	
		try {
			con = Connect.getConnection();
			String sql = 
					"insert into products (name, uname, price,quantity, type) values(?,?,?,?,?) ;";
			ps=con.prepareStatement(sql);
			
			ps.setString(1, pb.getName());
			ps.setString(2, pb.getUname());
			ps.setString(3, pb.getPrice());
			ps.setString(4, pb.getQuantity());
			ps.setString(5, pb.getType());
			
			status = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return status;	
	}
}
