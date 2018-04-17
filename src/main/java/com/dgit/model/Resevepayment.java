package com.dgit.model;

public class Resevepayment {
	private String pay_no;
	private String bankname;
	private String bankusername;
	private String banknum;
	private String res_no;
	
	public Resevepayment() {		
	}
	
	public Resevepayment(String pay_no, String bankname, String bankusername, String banknum, String res_no) {
		super();
		this.pay_no = pay_no;
		this.bankname = bankname;
		this.bankusername = bankusername;
		this.banknum = banknum;
		this.res_no = res_no;
	}

	public String getPay_no() {
		return pay_no;
	}

	public void setPay_no(String pay_no) {
		this.pay_no = pay_no;
	}

	public String getBankname() {
		return bankname;
	}

	public void setBankname(String bankname) {
		this.bankname = bankname;
	}

	public String getBankusername() {
		return bankusername;
	}

	public void setBankusername(String bankusername) {
		this.bankusername = bankusername;
	}

	public String getBanknum() {
		return banknum;
	}

	public void setBanknum(String banknum) {
		this.banknum = banknum;
	}

	public String getRes_no() {
		return res_no;
	}

	public void setRes_no(String res_no) {
		this.res_no = res_no;
	}

	@Override
	public String toString() {
		return "Resevepament [pay_no=" + pay_no + ", bankname=" + bankname + ", bankusername=" + bankusername
				+ ", banknum=" + banknum + ", res_no=" + res_no + "]";
	}
	
	
}
