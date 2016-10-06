package utils;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JdbcUtils {
	/*
	 * ���ݿ����Ա
	 */
	//��Ӧ�����ݿ�����  userΪ��Ӧ�����ݿ���
	final static String sqlUrl = "jdbc:mysql://localhost:3306/webchat";
	//����Ա�û���
	final static String rootName = "root";
	//����Ա����
	final static String rootPwd = "";

	public static Connection getConn() throws SQLException {
		try {
			//����MySql��������   
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("�Ҳ������������� ����������ʧ�ܣ�");
			e.printStackTrace();
		}
		return DriverManager.getConnection(sqlUrl, rootName, rootPwd);
	}
	/**
	 * �ر���ص�����
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

