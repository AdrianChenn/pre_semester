package dao;

import java.util.List;
import domain.Friends;
import domain.UserInfo;

public interface IUserDao {
	/*根据用户id查询好友信息*/
	UserInfo login(String name,String pwd);
	List<UserInfo> findFriends(int userId,String name);
	//void deleteFriends(int id,int userId);
} 
