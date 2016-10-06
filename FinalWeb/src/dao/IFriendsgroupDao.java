package dao;

import java.sql.Connection;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dao.IUserDao;
import domain.UserInfo;
import utils.JdbcUtils;
import domain.Friends;
import domain.Lists;

public interface IFriendsgroupDao {
	List<UserInfo> findFriendsGroup(int groupid,int userId);
	List<Lists> findGroups(int userId);
}