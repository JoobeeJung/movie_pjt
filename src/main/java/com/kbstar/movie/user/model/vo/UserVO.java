package com.kbstar.movie.user.model.vo;

public class UserVO {
	private int user_idx;
	private String user_id, user_pw, user_name, user_birthDate, user_mobile, user_email;
	
	public UserVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserVO(int user_idx, String user_id, String user_pw, String user_name, String user_birthDate,
			String user_mobile, String user_email) {
		super();
		this.user_idx = user_idx;
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.user_birthDate = user_birthDate;
		this.user_mobile = user_mobile;
		this.user_email = user_email;
	}

	public int getUser_idx() {
		return user_idx;
	}

	public void setUser_idx(int user_idx) {
		this.user_idx = user_idx;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_birthDate() {
		return user_birthDate;
	}

	public void setUser_birthDate(String user_birthDate) {
		this.user_birthDate = user_birthDate;
	}

	public String getUser_mobile() {
		return user_mobile;
	}

	public void setUser_mobile(String user_mobile) {
		this.user_mobile = user_mobile;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	@Override
	public String toString() {
		return "UserVO [user_idx=" + user_idx + ", user_id=" + user_id + ", user_pw=" + user_pw + ", user_name="
				+ user_name + ", user_birthDate=" + user_birthDate + ", user_mobile=" + user_mobile + ", user_email="
				+ user_email + "]";
	}

	
}
