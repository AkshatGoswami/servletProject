package com.net.connection.connect;

import java.sql.Connection;
import java.sql.DriverManager;

import com.net.connection.provider.Provider;

public class Connect implements Provider {
	static Connection con = null;
	public static Connection getConnection() {
		try {
			Class.forName(dclass);
			con = DriverManager.getConnection(url, username, password);
		} catch (Exception e) {
				e.printStackTrace();
		}
		
		return con;
	}
}
