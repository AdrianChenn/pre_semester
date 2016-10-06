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
import domain.Lists;

public class FriendsListsDaoImpl {
	//用这个方法查找所有组的成员信息
	public List<UserInfo> findFriendsList(int ListId,int userId)
	{
		List<UserInfo> listsfriends =new ArrayList<UserInfo>();
        Connection con = null;
        PreparedStatement ps =null;
        Statement stm = null;
        try{
        	con = JdbcUtils.getConn();
        	stm = con.createStatement();
        	//当groupid为1
            	String sql2 = "select friends_id from friends where list_id = "+ListId + " and users_id ="+userId;
            	//System.out.println("groupId is"+groupId);
            	ps = con.prepareStatement(sql2);
            	ResultSet rs = ps.executeQuery();
            	//System.out.println(rs2);
            	while(rs.next()){  
            		//group_id为 1的成员有1，2，3，4，7
            		int friends_id = rs.getInt("friends_id");//1，2，3，4，7
            		//rs.int group_id = rs2.getInt("group_id");
            		//System.out.println("friendsId is"+friendsId);
            		String sql3 = "select * from userinfo where id = "+friends_id;
            		ResultSet rs2 = stm.executeQuery(sql3);
            		while(rs2.next()){
            			UserInfo Listusers= new UserInfo(rs2.getInt("id"),
    							rs2.getString("name"), rs2.getString("pwd"),
    							rs2.getString("sign"), rs2.getString("nickname"),
    							rs2.getString("sex"), rs2.getDate("birthday"),
    							rs2.getString("telephone"), rs2.getString("email"),
    							rs2.getString("address"), rs2.getString("photo"),ListId);
            			listsfriends.add(Listusers);
            			//System.out.print("The groupUserId is "+rs3.getInt(groupId));
            			//System.out.println();
            			//System.out.print(groupfriends);
            			//System.out.println();
            			
            		}
            	}
        }catch(SQLException e){
        	e.printStackTrace();
        }finally{
        	JdbcUtils.close(con, stm, null);
        }
        
        return listsfriends;
	}
	
	//用这个方法查找当前用户所有组的信息，groups表
	public List<Lists> findLists(int userId)
	{
		List<Lists> myLists = new ArrayList<Lists>();
		Connection con = null;
		PreparedStatement ps =null;
		ResultSet rs = null;
		Statement stm = null;
		try{
			con = JdbcUtils.getConn();
			stm = con.createStatement();
			//查找当前用户所有分组id
			String sql = "select list_id from friends where users_id ="+userId+" GROUP BY list_id";
			//预编译的,对于批量处理可以大大提高效率. 也叫JDBC存储过程
			ps = con.prepareStatement(sql);
			//执行查询的语句
			rs = ps.executeQuery();
			while(rs.next())
			{
				//储存每一条的小组id
				int list_id = rs.getInt("list_id");
				//System.out.print("userId is" + groupId);
				//查找当前用户所有小组名称
				String sql2 = "select * from lists where id ="+list_id;
				ResultSet rs2 = stm.executeQuery(sql2);
				while(rs2.next()){
					//特别注意，这里domain不能写错，不然会导致页面显示不出来
					Lists lists = new Lists(rs2.getInt("id"),
							rs2.getString("list_name"),rs2.getDate("date"),
							rs2.getInt("create_user"));
					myLists.add(lists);
				}
			}
		}catch(SQLException e)
		{
			e.printStackTrace();
		}finally{
			JdbcUtils.close(con, stm, rs);
		}
		return myLists;
	}

	public void deleteFriendsInList(int ListId,int friendId,int userId)
	{
		Connection con = null;
		PreparedStatement ps = null;
		String sql = "DELETE from friends where list_id ="+ListId+ " and friends_id ="+friendId+" and users_id ="+userId;
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
	
}
