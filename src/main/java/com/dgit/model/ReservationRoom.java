package com.dgit.model;

import java.util.Date;

public class ReservationRoom {
	private String res_no;
	private Date res_save;
	private Date res_now;
	private int res_state;
	private Date res_paydate;
	private Date res_startdate;
	private Date res_enddate;
	private int res_stay;
	private int res_price;
	private int res_his;
	private int res_fprice;
	private String res_forname;
	private String res_canceldate;
	private String u_id;
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
	
	public ReservationRoom() {
	}

	public ReservationRoom(String res_no, Date res_save, Date res_now, int res_state, Date res_paydate,
			Date res_startdate, Date res_enddate, int res_stay, int res_price, int res_his, int res_fprice,
			String res_forname, String res_canceldate, String u_id, int r_no, String r_name, int r_pax, int r_price,
			String r_pic, String r_explan, int r_state, String r_phone, int for_no, int fac_no, String for_name) {
		super();
		this.res_no = res_no;
		this.res_save = res_save;
		this.res_now = res_now;
		this.res_state = res_state;
		this.res_paydate = res_paydate;
		this.res_startdate = res_startdate;
		this.res_enddate = res_enddate;
		this.res_stay = res_stay;
		this.res_price = res_price;
		this.res_his = res_his;
		this.res_fprice = res_fprice;
		this.res_forname = res_forname;
		this.res_canceldate = res_canceldate;
		this.u_id = u_id;
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

	public String getRes_no() {
		return res_no;
	}

	public void setRes_no(String res_no) {
		this.res_no = res_no;
	}

	public Date getRes_save() {
		return res_save;
	}

	public void setRes_save(Date res_save) {
		this.res_save = res_save;
	}

	public Date getRes_now() {
		return res_now;
	}

	public void setRes_now(Date res_now) {
		this.res_now = res_now;
	}

	public int getRes_state() {
		return res_state;
	}

	public void setRes_state(int res_state) {
		this.res_state = res_state;
	}

	public Date getRes_paydate() {
		return res_paydate;
	}

	public void setRes_paydate(Date res_paydate) {
		this.res_paydate = res_paydate;
	}

	public Date getRes_startdate() {
		return res_startdate;
	}

	public void setRes_startdate(Date res_startdate) {
		this.res_startdate = res_startdate;
	}

	public Date getRes_enddate() {
		return res_enddate;
	}

	public void setRes_enddate(Date res_enddate) {
		this.res_enddate = res_enddate;
	}

	public int getRes_stay() {
		return res_stay;
	}

	public void setRes_stay(int res_stay) {
		this.res_stay = res_stay;
	}

	public int getRes_price() {
		return res_price;
	}

	public void setRes_price(int res_price) {
		this.res_price = res_price;
	}

	public int getRes_his() {
		return res_his;
	}

	public void setRes_his(int res_his) {
		this.res_his = res_his;
	}

	public int getRes_fprice() {
		return res_fprice;
	}

	public void setRes_fprice(int res_fprice) {
		this.res_fprice = res_fprice;
	}

	public String getRes_forname() {
		return res_forname;
	}

	public void setRes_forname(String res_forname) {
		this.res_forname = res_forname;
	}

	public String getRes_canceldate() {
		return res_canceldate;
	}

	public void setRes_canceldate(String res_canceldate) {
		this.res_canceldate = res_canceldate;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
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
		return "ReservationRoom [res_no=" + res_no + ", res_save=" + res_save + ", res_now=" + res_now + ", res_state="
				+ res_state + ", res_paydate=" + res_paydate + ", res_startdate=" + res_startdate + ", res_enddate="
				+ res_enddate + ", res_stay=" + res_stay + ", res_price=" + res_price + ", res_his=" + res_his
				+ ", res_fprice=" + res_fprice + ", res_forname=" + res_forname + ", res_canceldate=" + res_canceldate
				+ ", u_id=" + u_id + ", r_no=" + r_no + ", r_name=" + r_name + ", r_pax=" + r_pax + ", r_price="
				+ r_price + ", r_pic=" + r_pic + ", r_explan=" + r_explan + ", r_state=" + r_state + ", r_phone="
				+ r_phone + ", for_no=" + for_no + ", fac_no=" + fac_no + ", for_name=" + for_name + "]";
	}
	
	
	
}
