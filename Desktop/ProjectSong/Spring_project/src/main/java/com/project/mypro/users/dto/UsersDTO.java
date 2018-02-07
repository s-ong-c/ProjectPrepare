package com.project.mypro.users.dto;

public class UsersDTO {
	private String id;
	private String password;
	private String name;
	private String email;
	private String phone_no;
	private String is_admin;
	private String regdate;
	
	public UsersDTO(){	}

	public UsersDTO(String id, String password, String name, String email, String phone_no, String is_admin,
			String regdate) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.email = email;
		this.phone_no = phone_no;
		this.is_admin = is_admin;
		this.regdate = regdate;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone_no() {
		return phone_no;
	}

	public void setPhone_no(String phone_no) {
		this.phone_no = phone_no;
	}

	public String getIs_admin() {
		return is_admin;
	}

	public void setIs_admin(String is_admin) {
		this.is_admin = is_admin;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	

}
