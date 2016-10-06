package domain;

import java.util.Date;

//用户表(用户id、帐号、密码、签名、昵称、性别、生日、电话、邮箱、所在地、头像)
public class UserInfo {

	private int id;
	private String name;
	private String pwd;
	private String sign;
	private String nickname;
	private String sex;
	private Date birthday;
	private String telephone;
	private String email;
	private String address;
	private String photo;
	private String type;
	private int group_id;
	private int list_id;
	
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	public int getList_id() {
		return list_id;
	}

	public void setList_id(int list_id) {
		this.list_id = list_id;
	}

	public int getGroup_id() {
		return group_id;
	}

	public void setGroup_id(int group_id) {
		this.group_id = group_id;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getSign() {
		return sign;
	}
	public void setSign(String sign) {
		this.sign = sign;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public UserInfo(){
		super();
	}
	public UserInfo(int id){
		super();
		this.id = id;
	}
	public UserInfo(int id, String name, String pwd, String sign,
			String nickname, String sex, Date birthday, String telephone,
			String email, String address, String photo) {
		super();
		this.id = id;
		this.name = name;
		this.pwd = pwd;
		this.sign = sign;		
		this.nickname = nickname;
		this.sex = sex;
		this.birthday = birthday;
		this.telephone = telephone;
		this.email = email;
		this.address = address;
		this.photo = photo;
	}
	
	public UserInfo(int id, String name, String pwd, String sign,
			String nickname, String sex, Date birthday, String telephone,
			String email, String address, String photo,String type) {
		super();
		this.id = id;
		this.name = name;
		this.pwd = pwd;
		this.sign = sign;		
		this.nickname = nickname;
		this.sex = sex;
		this.birthday = birthday;
		this.telephone = telephone;
		this.email = email;
		this.address = address;
		this.photo = photo;
		this.type = type;
	}
	
	public UserInfo(int id, String name, String sign,
			 String sex, int group_id) {
		super();
		this.id = id;
		this.name = name;
		this.sign = sign;		
		this.sex = sex;
        this.group_id = group_id;
	}
	
	public UserInfo(int id, String name, String sign) {
		super();
		this.id = id;
		this.name = name;
		this.sign = sign;		

	}
	
	public UserInfo(int id, String name, String pwd, String sign,
			String nickname, String sex, Date birthday, String telephone,
			String email, String address, String photo,int list_id) {
		super();
		this.id = id;
		this.name = name;
		this.pwd = pwd;
		this.sign = sign;		
		this.nickname = nickname;
		this.sex = sex;
		this.birthday = birthday;
		this.telephone = telephone;
		this.email = email;
		this.address = address;
		this.photo = photo;
		this.list_id = list_id;
	}
	

	@Override
	public String toString() {
		return "UserInfo [id=" + id + ", name=" + name + ", pwd=" + pwd
				+ ", sign=" + sign + ", nickname=" + nickname + ", sex=" + sex
				+ ", birthday=" + birthday + ", telephone=" + telephone
				+ ", email=" + email + ", address=" + address + ", photo="
				+ photo + ",list_id="+list_id+"]";
	}
	
}
