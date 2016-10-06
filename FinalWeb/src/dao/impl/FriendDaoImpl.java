package dao.impl;

import java.sql.Connection;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
//import java.sql.Statement;

//import java.util.ArrayList;
//import java.util.List;
import utils.JdbcUtils;
import dao.IFriendDao;
import domain.UserInfo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.text.SimpleDateFormat;

public class FriendDaoImpl implements IFriendDao {
    
	/**
	 * 思路：
	 * 1.在friends表根据user_查询friends_id
	 * 2.在userinfo表根据friends_id将用户 信息查询出来
	 */
	
	
	public void deleteFriends(int friendId,int userId,int ListId)
	{
		Connection con = null;
		PreparedStatement ps = null;
		String sql = "DELETE from friends where friends_id = "+friendId+" and users_id = "+userId+" and list_id ="+ListId;
		try{
			//数据库驱动
			con = JdbcUtils.getConn();
			//PreparedStatement 接口是 Statement 的子接口，它表示一条预编译过的 SQL 语句
			ps = con.prepareStatement(sql);
			//执行一个增删改,增加一个sql参数会报错
			ps.executeUpdate();
			//执行查询操作
			//ps.executeQuery();	
		}catch(SQLException e)
		{
			e.printStackTrace();
		}finally{
			//关闭数据库方法
			JdbcUtils.close(con, ps, null);
		}
	}

	public void addFriends(String friend_name,int list_name,int userId)
	{
		Connection con = null;
		PreparedStatement ps = null;
		String sql = "insert into friends values(null,?,?,?,?,null,?,null)";
		int friendId =changeFriendName(friend_name);
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
            ps.setInt(1, friendId);
            ps.setString(2, friend_name);
            ps.setInt(3, list_name);
			ps.setDate(4, new java.sql.Date(new Date().getTime()));
			ps.setInt(5, userId);
			ps.executeUpdate();//增删改的执行方法
			//ps.executeQuery();
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			JdbcUtils.close(con, ps, null);
		}
	}
	
	public int changeFriendName(String friend_name)
	{
		int friendId =0;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql ="select id from userinfo where name = ?";
		try{
			con = JdbcUtils.getConn();
			ps = con.prepareStatement(sql);
			ps.setString(1, friend_name);
			rs = ps.executeQuery();
			while (rs.next()) {
				//将朋友id逐条赋值给friendId
				 friendId = rs.getInt("id");
			}

		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			JdbcUtils.close(con, ps, rs);
		}
		return friendId;
	}
	
	public int changeListName(String list_name)
	{
		int listId =0;
		Connection con = null;
		ResultSet rs =null;
		PreparedStatement ps = null;
		String sql ="select id from lists where list_name ="+list_name;
		try{
			con = JdbcUtils.getConn();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()){
				listId = rs.getInt("id");
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			JdbcUtils.close(con, ps,null);
		}
		return listId;
	}
	
	public void alterFriends(int friendId, String nickname, String telephone)
	{
		Connection con = null;
		PreparedStatement ps = null;
		String sql = "update userinfo set nickname = '"+nickname+"',"+"telephone = '" +telephone+ "' where id = " +friendId;
		try{
			con = JdbcUtils.getConn();
			ps = con.prepareStatement(sql);
			ps.executeUpdate();
			ps.executeQuery();
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			JdbcUtils.close(con, ps, null);
		}
	}

	@Override
	public void deleteFriends(int friendId, int userId) {
		// TODO Auto-generated method stub
		
	}
	
	public List<UserInfo> findAndAddSomebody(String name) {
		List<UserInfo> user =new ArrayList<UserInfo>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from userinfo where name=?";
		try {
			con = JdbcUtils.getConn();
			ps = con.prepareStatement(sql);
			ps.setString(1, name);
			rs = ps.executeQuery();
			while(rs.next()){
				UserInfo userInfo = new UserInfo(rs.getInt("id"),
						rs.getString("name"),rs.getString("sign"));
				user.add(userInfo);
				}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtils.close(con, ps, rs);
		}
		return user;
	}

}	
	/*public static void addFriends(List<Friends> friends)
	{
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		Statement stm = null;
		try{
			con = JdbcUtils.getConn();
			stm = con.createStatement();
			//String sql = "insert into friends values("++","++","++","++","++","++")";
			
			//ps.execute(sql);
		}catch(SQLException e)
		{
			e.printStackTrace();
		}finally{
			
		}
	}


}

//public class FriendDaoImpl implements IFriendDao{
    
	//查询一条记录，返回一个friend对象
	/*public List<Friends> findFriends(int userId)
	{
		//以friend为对象的list
		List<Friends> friends = new ArrayList<Friends>();
		 //连接数据库对象
		 /*connection对象大概是一条连接程序和数据库的缆道，statement或者它的自雷是一辆
		   缆车，它为数据库传输sql语句，并把运行结果返回程序。 */
		 //Connection con =null;
		 //预编译的sql语句对象,它可以把不含参数的sql语句通过statement接口来执行。
		 //PreparedStatement是继承statement接口的子接口
		 //PreparedStatement ps = null;
		 //结果集对象
		 /*结果集存的是一张表*/
		 /*ResultSet rs = null;
		 try{
			 con = SqlUtil.getCon();
			 String sql = "select * from friends wher user_id = ?";
			 ps = con.prepareStatement(sql);
			 //将参数传递给查询语句，1表示语句的第一个占位符？
			 ps.setInt(1,userId);
			 //执行查询，并把结果返回。
			 rs = ps.executeQuery();
			 while(rs.next())
			 {
				 //friend对象，把数据集传给friend对象
				 Friends friend = new Friends(rs.getInt("id"),rs.getString("name"),
				 		rs.getString("photo"),rs.getString("addr"),rs.getString("sex"),
				 		rs.getInt("userId"));
				 friends.add(friend);
			 }
		 }catch(SQLException e){
			 //它将显示出更深的调用信息。
			 e.printStackTrace();
		 }finally{
			SqlUtil.close(con,ps,rs);
		 }
		 //返回一个friend对象
		 return friends;
	}
		 
		 
}*/

