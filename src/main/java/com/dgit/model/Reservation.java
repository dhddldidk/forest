package com.dgit.model;

import java.util.Date;

public class Reservation {
	private int res_no;
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
	private Date res_canceldate;
	private Date completedate;
	private int r_no;
	private String u_id;
	

	
	public Reservation() {
	}



	public Reservation(int res_no, Date res_save, Date res_now, int res_state, Date res_paydate, Date res_startdate,
			Date res_enddate, int res_stay, int res_price, int res_his, int res_fprice, String res_forname,
			Date res_canceldate, Date completedate, int r_no, String u_id) {
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
		this.completedate = completedate;
		this.r_no = r_no;
		this.u_id = u_id;
	}



	public int getRes_no() {
		return res_no;
	}



	public void setRes_no(int res_no) {
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



	public Date getRes_canceldate() {
		return res_canceldate;
	}



	public void setRes_canceldate(Date res_canceldate) {
		this.res_canceldate = res_canceldate;
	}



	public Date getCompletedate() {
		return completedate;
	}



	public void setCompletedate(Date completedate) {
		this.completedate = completedate;
	}



	public int getR_no() {
		return r_no;
	}



	public void setR_no(int r_no) {
		this.r_no = r_no;
	}



	public String getU_id() {
		return u_id;
	}



	public void setU_id(String u_id) {
		this.u_id = u_id;
	}



	@Override
	public String toString() {
		return "Reservation [res_no=" + res_no + ", res_save=" + res_save + ", res_now=" + res_now + ", res_state="
				+ res_state + ", res_paydate=" + res_paydate + ", res_startdate=" + res_startdate + ", res_enddate="
				+ res_enddate + ", res_stay=" + res_stay + ", res_price=" + res_price + ", res_his=" + res_his
				+ ", res_fprice=" + res_fprice + ", res_forname=" + res_forname + ", res_canceldate=" + res_canceldate
				+ ", completedate=" + completedate + ", r_no=" + r_no + ", u_id=" + u_id + "]";
	}

	
	
	
	
}
