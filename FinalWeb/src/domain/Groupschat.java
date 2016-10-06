package domain;
import java.util.Date;
public class Groupschat {
		private int id;
		private String groups_name;
		private Date date;
		private int CreateUser;	
		
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getGroups_name() {
			return groups_name;
		}
		public void setName(String groups_name) {
			this.groups_name = groups_name;
		}
		public Date getDate() {
			return date;
		}
		public void setDate(Date date) {
			this.date = date;
		}
		public int getCreateUser() {
			return CreateUser;
		}
		public void setCreateUser(int createUser) {
			CreateUser = createUser;
		}
	

		public Groupschat(){super();}
		
		public Groupschat(int id,String groups_name,int createUser){
			super();
			this.id = id;
			this.groups_name = groups_name;
			this.CreateUser =createUser;
		}
		public Groupschat(int id,String groups_name,Date date,int CreateUser){
			super();
			this.id = id;
			this.groups_name = groups_name;
			this.date = date;
			this.CreateUser = CreateUser;
		}
		public String toString(){
			return "Groups [id="+id+",groups_name="+groups_name+",date="
					+date+",CreateUser="+CreateUser+"]";
		}

}
