package dao;

import java.util.List;
import domain.Friends;
import domain.UserInfo;

public interface IUserDao {
	/*�����û�id��ѯ������Ϣ*/
	UserInfo login(String name,String pwd);
	List<UserInfo> findFriends(int userId,String name);
	//void deleteFriends(int id,int userId);
} 
