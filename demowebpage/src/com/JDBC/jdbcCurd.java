package com.JDBC;

import java.sql.*;

public class jdbcCurd {
	
	public static  Connection con;
	public static PreparedStatement ps;
	
	public static void  createConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dait", "root", "root");
			//System.out.println("Connection created.");
		} catch (Exception e) {
			//System.out.println(e);
		}
	}
	
	public static void insertValues(int eid, String ename, double esalary) {
		try {
			ps = con.prepareStatement("insert into employees values(?,?,?)");
			ps.setInt(1, eid);
			ps.setString(2, ename);
			ps.setDouble(3, esalary);
			int x = ps.executeUpdate();
			if(x > 0) {
				//System.out.println("Inserted.");
			}else {
				//System.out.println("Not Inserted.");
			}
		} catch (Exception e) {
			//System.out.println(e);
		} 
	}
	
	public static void deleteRow(int eid) {
		try {
			ps = con.prepareStatement("delete from employees where id = "+eid);
			int x = ps.executeUpdate();
			if(x > 0) {
				//System.out.println("Deleted.");
			}else {
				//System.out.println("Not Deleted.");
			}
		} catch (Exception e) {
			//System.out.println(e);
		} 
	}
	
	public static void updateMethod(int eid , String ename) {
		try {
			ps = con.prepareStatement("update employees set name='"+ename+"' where id = "+eid);
			int a = ps.executeUpdate();
			if(a>0) {
				//System.out.println("Updated.");
			}else{
				//System.out.println("Not Updated.");
			}
			
		} catch (Exception e) {
//			System.out.println(e);
		}
	}
	
	public static ResultSet selectValues() {
		try {
			ps = con.prepareStatement("select * from employees");
			ResultSet rs = ps.executeQuery();
			
			return rs;
		} catch (Exception e) {
//			System.out.println(e);
			return null;
		}
	}

}
