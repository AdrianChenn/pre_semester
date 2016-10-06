package dao.impl;

import java.sql.Connection;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import dao.IUserDao;
import domain.UserInfo;
import utils.JdbcUtils;

import domain.Friends;

public class UserDaoImpl implements IUserDao {

	public UserInfo login(String name, String pwd) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from userinfo where name=?";
		UserInfo userInfo = null;
		try {
			con = JdbcUtils.getConn();
			ps = con.prepareStatement(sql);
			ps.setString(1, name);
			rs = ps.executeQuery();
			if (rs.next()) {
				if (rs.getString("pwd").equals(pwd)) {
					userInfo = new UserInfo(rs.getInt("id"),
							rs.getString("name"), rs.getString("pwd"),
							rs.getString("sign"), rs.getString("nickname"),
							rs.getString("sex"), rs.getDate("birthday"),
							rs.getString("telephone"), rs.getString("email"),
							rs.getString("address"), rs.getString("photo"),rs.getString("type"));
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtils.close(con, ps, rs);
		}

		return userInfo;
	}

	@Override
	public List<UserInfo> findFriends(int userId,String name) {//String name
		List<UserInfo> friends = new ArrayList<UserInfo>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		Statement stm = null;
		String x = "";
		if(name == null||name=="")
		{
			x = "";
		}
		else
		{
			x = " and name ='"+name+"'";
		}
		try {
			con = JdbcUtils.getConn();
			stm = con.createStatement();
			//如果要查询好友其它信息，就要把其它字段查询出来
			String sql = "select friends_id from friends where users_id=?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, userId);
			rs = ps.executeQuery();
			//在friends表根据user_查询friends_id
			while (rs.next()) {
				//将朋友id逐条赋值给friendId
				int friendsId = rs.getInt("friends_id");
				//String name = "stone";//测试用
				//在userinfo表根据friends_id将用户 信息查询出来
				String sql2 = "select * from userinfo where id=" +friendsId + x;//+ "and name="+name
				//执行sql2 
				ResultSet rs2 = stm.executeQuery(sql2);
				while (rs2.next()) {
					UserInfo userInfo = new UserInfo(rs2.getInt("id"),
							rs2.getString("name"), rs2.getString("pwd"),
							rs2.getString("sign"), rs2.getString("nickname"),
							rs2.getString("sex"), rs2.getDate("birthday"),
							rs2.getString("telephone"), rs2.getString("email"),
							rs2.getString("address"), rs2.getString("photo"));
					friends.add(userInfo);				
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
		}
		return friends;
	}
	
	
	public void register(String name,String pwd,String sex,String telephone)
	{
		Connection con = null;
		PreparedStatement ps = null;
		String sql = "insert into userinfo values(null,?,?,null,null,?,null,?,null,null,null)";
		//int friendId =changeFriendName(friend_name);
		//int listId = changeListName(list_name);
		//SimpleDateFormat cTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try{
			con = JdbcUtils.getConn();
			//SimpleDateFormat cTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			//java.util.Date time = new java.util.Date();
			//String addDate =  cTime.format(time);
			//java.util.Date add_Date = new java.util.Date(addDate);
			//ps.setDate(2, (java.sql.Date) add_Date);
            ps = con.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, pwd);
            ps.setString(3, sex);
            ps.setString(4, telephone);
			ps.executeUpdate();//增删改的执行方法
			//ps.executeQuery();
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			JdbcUtils.close(con, ps, null);
		}
	}
	

}
