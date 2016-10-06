package domain;
import java.util.Date;
public class Lists {

	private int id;
	private String list_name;
	private Date date;
	private int create_user;
	
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getCreate_user() {
		return create_user;
	}
	public void setCreate_user(int create_user) {
		this.create_user = create_user;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getList_name() {
		return list_name;
	}
	public void setList_name(String list_name) {
		this.list_name = list_name;
	}
	
	public Lists(){super();}
	
	public Lists(int id){
		super();
		this.id = id;
	}
	public Lists(int id,String list_name){
		super();
		this.id = id;
		this.list_name = list_name;
	}
	public Lists(int id,String list_name,Date date,int create_id){
		super();
		this.id = id;
		this.list_name = list_name;
		this.date = date;
		this.create_user = create_user;
	}
	public String toString(){
		return "Groups [id="+id+",List_name="+list_name+",date="
				+date+",create_user="+create_user+"]";
	}
}
