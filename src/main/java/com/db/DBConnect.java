package com.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {

	public static String DRIVERNAME = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	public static String DBURL = "jdbc:sqlserver://DESKTOP-ELOCDHQ;databaseName=NhatN;encrypt=false";
	public static String USERDB = "sa";
	public static String PASSDB = "123";

	public static Connection getConnect() {
		Connection conn = null;
		try {
			Class.forName(DRIVERNAME);
			conn = DriverManager.getConnection(DBURL, USERDB, PASSDB);
			System.out.println("Connect database success!");
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
        public static void main(String[] args) {
        try {
            System.out.println(new DBConnect().getConnect());
        } catch (Exception e) {
        }
    }
}

