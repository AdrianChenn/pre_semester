package utils;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JdbcUtils {
	/*
	 * 数据库管理员
	 */
	//对应的数据库连接  user为对应的数据库名
	final static String sqlUrl = "jdbc:mysql://localhost:3306/webchat";
	//管理员用户名
	final static String rootName = "root";
	//管理员密码
	final static String rootPwd = "";

	public static Connection getConn() throws SQLException {
		try {
			//加载MySql的驱动类   
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("找不到驱动程序类 ，加载驱动失败！");
			e.printStackTrace();
		}
		return DriverManager.getConnection(sqlUrl, rootName, rootPwd);
	}
	/**
	 * 关闭相关的资料
	 * @param con
	 * @param stm
	 * @param rs
	 */
	public static void close(Connection con,Statement stm,ResultSet rs)  {
		if(con!=null){
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(stm!=null){
			try {
				stm.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(rs!=null){
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}

