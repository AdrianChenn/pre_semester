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
	 * ˼·��
	 * 1.��friends�����user_��ѯfriends_id
	 * 2.��userinfo�����friends_id���û� ��Ϣ��ѯ����
	 */
	
	
	public void deleteFriends(int friendId,int userId,int ListId)
	{
		Connection con = null;
		PreparedStatement ps = null;
		String sql = "DELETE from friends where friends_id = "+friendId+" and users_id = "+userId+" and list_id ="+ListId;
		try{
			//���ݿ�����
			con = JdbcUtils.getConn();
			//PreparedStatement �ӿ��� Statement ���ӽӿڣ�����ʾһ��Ԥ������� SQL ���
			ps = con.prepareStatement(sql);
			//ִ��һ����ɾ��,����һ��sql�����ᱨ��
			ps.executeUpdate();
			//ִ�в�ѯ����
			//ps.executeQuery();	
		}catch(SQLException e)
		{
			e.printStackTrace();
		}finally{
			//�ر����ݿⷽ��
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
			ps.executeUpdate();//��ɾ�ĵ�ִ�з���
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
				//������id������ֵ��friendId
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
    
	//��ѯһ����¼������һ��friend����
	/*public List<Friends> findFriends(int userId)
	{
		//��friendΪ�����list
		List<Friends> friends = new ArrayList<Friends>();
		 //�������ݿ����
		 /*connection��������һ�����ӳ�������ݿ���µ���statement��������������һ��
		   �³�����Ϊ���ݿ⴫��sql��䣬�������н�����س��� */
		 //Connection con =null;
		 //Ԥ�����sql������,�����԰Ѳ���������sql���ͨ��statement�ӿ���ִ�С�
		 //PreparedStatement�Ǽ̳�statement�ӿڵ��ӽӿ�
		 //PreparedStatement ps = null;
		 //���������
		 /*����������һ�ű�*/
		 /*ResultSet rs = null;
		 try{
			 con = SqlUtil.getCon();
			 String sql = "select * from friends wher user_id = ?";
			 ps = con.prepareStatement(sql);
			 //���������ݸ���ѯ��䣬1��ʾ���ĵ�һ��ռλ����
			 ps.setInt(1,userId);
			 //ִ�в�ѯ�����ѽ�����ء�
			 rs = ps.executeQuery();
			 while(rs.next())
			 {
				 //friend���󣬰����ݼ�����friend����
				 Friends friend = new Friends(rs.getInt("id"),rs.getString("name"),
				 		rs.getString("photo"),rs.getString("addr"),rs.getString("sex"),
				 		rs.getInt("userId"));
				 friends.add(friend);
			 }
		 }catch(SQLException e){
			 //������ʾ������ĵ�����Ϣ��
			 e.printStackTrace();
		 }finally{
			SqlUtil.close(con,ps,rs);
		 }
		 //����һ��friend����
		 return friends;
	}
		 
		 
}*/

