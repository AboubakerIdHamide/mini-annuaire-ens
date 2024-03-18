package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
	private static String host = "localhost";
	private static String database = "mini_annuaire_ens";
	private static String username = "root";
	private static String password = "";
	
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://"+ host + "/" + database;
			con = DriverManager.getConnection(url, username, password);	
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}
}
