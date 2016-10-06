package dao;

import java.util.List;

import domain.Records;

public interface IRecordsDao {
	void addRecords(int friendsId,String records);
	List<Records> PrintRecords(int userId,int friendsId);
	//List<Records> PrintRecordsForFriend(int userId,int friendsId);
}
