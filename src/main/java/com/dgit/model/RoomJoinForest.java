package com.dgit.model;

public class RoomJoinForest {
	private int r_no;
	private String r_name;
	private int r_pax;
	private int r_price;
	private String r_pic;
	private String r_explan;
	private String r_phone;
	private int for_no;
	private int fac_no;
	private String for_name;
	private String for_homepage;
	private String for_post;
	private String for_phone;
	private String for_pic;
	private int d_no;
	private String id;
	private int r_stay;
	
	public RoomJoinForest() {}

	public RoomJoinForest(int r_no, String r_name, int r_pax, int r_price, String r_pic, String r_explan,
			String r_phone, int for_no, int fac_no, String for_name, String for_homepage, String for_post,
			String for_phone, String for_pic, int d_no, String id, int r_stay) {
		this.r_no = r_no;
		this.r_name = r_name;
		this.r_pax = r_pax;
		this.r_price = r_price;
		this.r_pic = r_pic;
		this.r_explan = r_explan;
		this.r_phone = r_phone;
		this.for_no = for_no;
		this.fac_no = fac_no;
		this.for_name = for_name;
		this.for_homepage = for_homepage;
		this.for_post = for_post;
		this.for_phone = for_phone;
		this.for_pic = for_pic;
		this.d_no = d_no;
		this.id = id;
		this.r_stay = r_stay;
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

	public String getFor_homepage() {
		return for_homepage;
	}

	public void setFor_homepage(String for_homepage) {
		this.for_homepage = for_homepage;
	}

	public String getFor_post() {
		return for_post;
	}

	public void setFor_post(String for_post) {
		this.for_post = for_post;
	}

	public String getFor_phone() {
		return for_phone;
	}

	public void setFor_phone(String for_phone) {
		this.for_phone = for_phone;
	}

	public String getFor_pic() {
		return for_pic;
	}

	public void setFor_pic(String for_pic) {
		this.for_pic = for_pic;
	}

	public int getD_no() {
		return d_no;
	}

	public void setD_no(int d_no) {
		this.d_no = d_no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getR_stay() {
		return r_stay;
	}

	public void setR_stay(int r_stay) {
		this.r_stay = r_stay;
	}

	@Override
	public String toString() {
		return "RoomJoinForest [r_no=" + r_no + ", r_name=" + r_name + ", r_pax=" + r_pax + ", r_price=" + r_price
				+ ", r_pic=" + r_pic + ", r_explan=" + r_explan + ", r_phone=" + r_phone + ", for_no=" + for_no
				+ ", fac_no=" + fac_no + ", for_name=" + for_name + ", for_homepage=" + for_homepage + ", for_post="
				+ for_post + ", for_phone=" + for_phone + ", for_pic=" + for_pic + ", d_no=" + d_no + ", id=" + id
				+ ", r_stay=" + r_stay + "]";
	}

	

}
