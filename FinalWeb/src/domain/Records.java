package domain;
import java.util.Date;
public class Records {
    private int id;
 	private String records;
    private String user_id;
    private String friends_id;
    private Date date;     
     public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRecords() {
		return records;
	}
	public void setRecords(String records) {
		this.records = records;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getFriends_id() {
		return friends_id;
	}
	public void setFriends_id(String friends_id) {
		this.friends_id = friends_id;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	public Records(){super();}
	
	/*public Records(int id,String records,int user_id,int friends_id,Date date)
	{
		super();
		this.id= id;
		this.records = records;
		this.user_id = user_id;
		this.friends_id = friends_id;
		this.date = date;		
	}*/
    
	public Records(int id,String records,String user_id,String friends_id)
	{
		super();
		this.id= id;
		this.records = records;
		this.user_id = user_id;
		this.friends_id = friends_id;		
	}
	
	/*public Records(String records,int user_id,int friends_id)
	{
		super();
		this.records = records;
		this.user_id = user_id;
		this.friends_id = friends_id;		
	}*/
	
	public String toString(){
		return "Records [id="+id+",records="+records+",user_id="
				+user_id+",friends_id="+friends_id+",date ="+date+"]";
	}
}
