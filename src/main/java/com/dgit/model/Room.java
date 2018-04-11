package com.dgit.model;

public class Room {
	private int r_no;
	private String r_name;
	private int r_pax;
	private int r_price;
	private String r_pic;
	private String r_explan;
	private int r_state;
	private String r_phone;
	private int for_no;
	private int fac_no;
	private String for_name;
	
	public Room() {}

	public Room(int r_no, String r_name, int r_pax, int r_price, String r_pic, String r_explan, int r_state,
			String r_phone, int for_no, int fac_no, String for_name) {
		this.r_no = r_no;
		this.r_name = r_name;
		this.r_pax = r_pax;
		this.r_price = r_price;
		this.r_pic = r_pic;
		this.r_explan = r_explan;
		this.r_state = r_state;
		this.r_phone = r_phone;
		this.for_no = for_no;
		this.fac_no = fac_no;
		this.for_name = for_name;
	}

	public int getR_no() {
		return r_no;
	}

	public void setR_no(int r_no) {
		this.r_no = r_no;
	}

	public String getR_name() {
		return r_name;
	}

	public void setR_name(String r_name) {
		this.r_name = r_name;
	}

	public int getR_pax() {
		return r_pax;
	}

	public void setR_pax(int r_pax) {
		this.r_pax = r_pax;
	}

	public int getR_price() {
		return r_price;
	}

	public void setR_price(int r_price) {
		this.r_price = r_price;
	}

	public String getR_pic() {
		return r_pic;
	}

	public void setR_pic(String r_pic) {
		this.r_pic = r_pic;
	}

	public String getR_explan() {
		return r_explan;
	}

	public void setR_explan(String r_explan) {
		this.r_explan = r_explan;
	}

	public int getR_state() {
		return r_state;
	}

	public void setR_state(int r_state) {
		this.r_state = r_state;
	}

	public String getR_phone() {
		return r_phone;
	}

	public void setR_phone(String r_phone) {
		this.r_phone = r_phone;
	}

	public int getFor_no() {
		return for_no;
	}

	public void setFor_no(int for_no) {
		this.for_no = for_no;
	}

	public int getFac_no() {
		return fac_no;
	}

	public void setFac_no(int fac_no) {
		this.fac_no = fac_no;
	}

	public String getFor_name() {
		return for_name;
	}

	public void setFor_name(String for_name) {
		this.for_name = for_name;
	}

	@Override
	public String toString() {
		return "Room [r_no=" + r_no + ", r_name=" + r_name + ", r_pax=" + r_pax + ", r_price=" + r_price + ", r_pic="
				+ r_pic + ", r_explan=" + r_explan + ", r_state=" + r_state + ", r_phone=" + r_phone + ", for_no="
				+ for_no + ", fac_no=" + fac_no + "]";
	}	
	
}
