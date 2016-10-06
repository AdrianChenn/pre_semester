package dao.impl;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import domain.*;
import utils.JdbcUtils;

public class GroupsChatDaoImpl {
    //找到所有群
	public List<Groupschat> findMyGroups(int userId)
	{
		List<Groupschat> myGroups = new ArrayList<Groupschat>();
		Connection con = null;
		PreparedStatement ps =null;
		ResultSet rs = null;
		Statement stm = null;
		try{
			con = JdbcUtils.getConn();
			stm = con.createStatement();
			//查找当前用户所有分组id
			String sql = "select Groups_id from groupschatuser where Groups_user =" +userId;
			//预编译的,对于批量处理可以大大提高效率. 也叫JDBC存储过程
			ps = con.prepareStatement(sql);
			//执行查询的语句
			rs = ps.executeQuery();
			while(rs.next())
			{
				//储存每一条的小组id
				int Groups_id = rs.getInt("Groups_id");
				//System.out.print("userId is" + groupId);
				//查找当前用户所有小组名称
				String sql2 = "select * from groupschat where id ="+Groups_id;
				ResultSet rs2 = stm.executeQuery(sql2);
				while(rs2.next()){
					//特别注意，这里domain不能写错，不然会导致页面显示不出来
					Groupschat groupschat = new Groupschat(rs2.getInt("id"),
							rs2.getString("groups_name"),rs2.getDate("date")
							,rs2.getInt("CreateUser"));
					myGroups.add(groupschat);
				}
			}
		}catch(SQLException e)
		{
			e.printStackTrace();
		}finally{
			JdbcUtils.close(con, stm, rs);
		}
		return myGroups;
	}
	
	public List<UserInfo> findGroupsFriends(int group_id,int userId)
	{
		List<UserInfo> Groupsfriends =new ArrayList<UserInfo>();
        Connection con = null;
        PreparedStatement ps =null;
        Statement stm = null;
        try{
        	con = JdbcUtils.getConn();
        	stm = con.createStatement();
        	//当groupid为1
            	String sql2 = "select Groups_user from groupschatuser where Groups_id ="+group_id;
            	//System.out.println("groupId is"+groupId);
            	ps = con.prepareStatement(sql2);
            	ResultSet rs = ps.executeQuery();
            	//System.out.println(rs2);
            	while(rs.next()){  
            		//group_id为 1的成员有1，2，3，4，7
            		int Groups_user = rs.getInt("Groups_user");//1，2，3，4，7
            		//rs.int group_id = rs2.getInt("group_id");
            		//System.out.println("friendsId is"+friendsId);
            		String sql3 = "select * from userinfo where id = "+Groups_user;
            		ResultSet rs2 = stm.executeQuery(sql3);
            		while(rs2.next()){
            			UserInfo gusers= new UserInfo(rs2.getInt("id"),
    							rs2.getString("name"), rs2.getString("sex"),
    							rs2.getString("sign"), group_id);
            			Groupsfriends.add(gusers);
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
        
        return Groupsfriends;
	}
	
	public List<Groupschat> findGroups(String groups_name) {
		List<Groupschat> group =new ArrayList<Groupschat>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from groupschat where groups_name=?";
		try {
			con = JdbcUtils.getConn();
			ps = con.prepareStatement(sql);
			ps.setString(1, groups_name);
			rs = ps.executeQuery();
			while(rs.next()){
				Groupschat groups = new Groupschat(rs.getInt("id"),
						rs.getString("groups_name"),rs.getInt("createUser"));
				group.add(groups);
				}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtils.close(con, ps, rs);
		}
		return group;
	}
	
	
	public void addGroups(int Groups_id,int Groups_user)
	{
		Connection con = null;
		PreparedStatement ps = null;
		String sql = "insert into groupschatuser values(null,?,?)";
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
            ps.setInt(1,Groups_id );
            ps.setInt(2, Groups_user);
			ps.executeUpdate();//增删改的执行方法
			//ps.executeQuery();
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			JdbcUtils.close(con, ps, null);
		}
	}

	
}
