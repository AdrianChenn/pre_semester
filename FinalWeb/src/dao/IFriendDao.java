package dao;

//import java.util.List;
//import bean.Friends;
public interface IFriendDao {
       /*
        * 根据用户id查询好友信息
        */
	//List<Friends> findFriends(int userId);
    void deleteFriends(int friendId,int userId);
    //void addFriends(List<Friends> friends);
    void addFriends(String friend_name,int list_name,int userId);
    void alterFriends(int friendId, String nickname, String telephone);
}
