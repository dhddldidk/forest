package com.dgit.model;

import java.util.Date;

public class User {
	private String uId;
	private String uName;
	private String uPassword;
	private String uPhone;
	private String uEmail;
	private String uAddress;
	private Date uDate;
	
	public User() {

	}
	public User(String uId, String uName, String uPassword, String uPhone, String uEmail, String uAddress, Date uDate) {
		super();
		this.uId = uId;
		this.uName = uName;
		this.uPassword = uPassword;
		this.uPhone = uPhone;
		this.uEmail = uEmail;
		this.uAddress = uAddress;
		this.uDate = uDate;
	}
	public String getuId() {
		return uId;
	}
	public void setuId(String uId) {
		this.uId = uId;
	}
	public String getuName() {
		return uName;
	}
	public void setuName(String uName) {
		this.uName = uName;
	}
	public String getuPassword() {
		return uPassword;
	}
	public void setuPassword(String uPassword) {
		this.uPassword = uPassword;
	}
	public String getuPhone() {
		return uPhone;
	}
	public void setuPhone(String uPhone) {
		this.uPhone = uPhone;
	}
	public String getuEmail() {
		return uEmail;
	}
	public void setuEmail(String uEmail) {
		this.uEmail = uEmail;
	}
	public String getuAddress() {
		return uAddress;
	}
	public void setuAddress(String uAddress) {
		this.uAddress = uAddress;
	}
	public Date getuDate() {
		return uDate;
	}
	public void setuDate(Date uDate) {
		this.uDate = uDate;
	}
	@Override
	public String toString() {
		return "User [uId=" + uId + ", uName=" + uName + ", uPassword=" + uPassword + ", uPhone=" + uPhone + ", uEmail="
				+ uEmail + ", uAddress=" + uAddress + ", uDate=" + uDate + "]";
	}
	
	
}
