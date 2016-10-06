package domain;

import java.util.Date;

/**
 * 保存好友信息
 * @author stone
 *编号,好友id、用户id、所属分组号、添加时间、是否上线
 */
public class Friends {
	private int id;
	private int friendsId;
	private int userId;
	private int friendsGroupId;
	private Date addDate;
	private String status;
	public Friends() {
	}
	public Friends( int friendsId, int userId, int friendsGroupId,
			Date addDate, String status) {
		super();
		this.friendsId = friendsId;
		this.userId = userId;
		this.friendsGroupId = friendsGroupId;
		this.addDate = addDate;
		this.status = status;
	}
	public Friends(int id, int friendsId, int userId, int friendsGroupId,
			Date addDate, String status) {
		super();
		this.id = id;
		this.friendsId = friendsId;
		this.userId = userId;
		this.friendsGroupId = friendsGroupId;
		this.addDate = addDate;
		this.status = status;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getFriendsId() {
		return friendsId;
	}
	public void setFriendsId(int friendsId) {
		this.friendsId = friendsId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getFriendsGroupId() {
		return friendsGroupId;
	}
	public void setFriendsGroupId(int friendsGroupId) {
		this.friendsGroupId = friendsGroupId;
	}
	public Date getAddDate() {
		return addDate;
	}
	public void setAddDate(Date addDate) {
		this.addDate = addDate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Friends [id=" + id + ", friendsId=" + friendsId + ", userId="
				+ userId + ", friendsGroupId=" + friendsGroupId + ", addDate="
				+ addDate + ", status=" + status + "]";
	}
	
	
}
