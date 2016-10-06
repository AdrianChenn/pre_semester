package domain;

public class Groupschatuser {
			private int id;
			private int Groups_id;
			private int Groups_user;	
			
			public int getId() {
				return id;
			}

			public void setId(int id) {
				this.id = id;
			}

			public int getGroups_id() {
				return Groups_id;
			}

			public void setGroups_id(int groups_id) {
				Groups_id = groups_id;
			}

			public int getGroups_user() {
				return Groups_user;
			}

			public void setGroups_user(int groups_user) {
				Groups_user = groups_user;
			}

			public Groupschatuser(){super();}
			
			public Groupschatuser(int id,int Groups_id,int Groups_user){
				super();
				this.id = id;
				this.Groups_id = Groups_id;
				this.Groups_user = Groups_user;
			}
			public String toString(){
				return "Groups [id="+id+",Groups_id="+Groups_id+",CreateUser="+Groups_user+"]";
			}

}
