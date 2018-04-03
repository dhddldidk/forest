package com.dgit.model;

import java.util.Date;

public class Users {
	private int usercode;
	private String name;
	private String id;
	private String pw;
	private String phone;
	private String email;
	private String addr;
	private Date date;
	
	public int getUsercode() {
		return usercode;
	}
	public void setUsercode(int usercode) {
		this.usercode = usercode;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	@Override
	public String toString() {
		return "Users [usercode=" + usercode + ", name=" + name + ", id=" + id + ", pw=" + pw + ", phone=" + phone
				+ ", email=" + email + ", addr=" + addr + ", date=" + date + "]";
	}
	
}
