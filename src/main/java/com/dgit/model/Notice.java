package com.dgit.model;

import java.util.Date;

public class Notice {
	private int nb_no;
	private String nb_title;
	private Date nb_date;
	private int nb_count;
	private String nb_countent;
	private String nb_upload;
	
	public Notice() {
	}

	public Notice(int nb_no, String nb_title, Date nb_date, int nb_count, String nb_countent, String nb_upload) {
		super();
		this.nb_no = nb_no;
		this.nb_title = nb_title;
		this.nb_date = nb_date;
		this.nb_count = nb_count;
		this.nb_countent = nb_countent;
		this.nb_upload = nb_upload;
	}

	public int getNb_no() {
		return nb_no;
	}

	public void setNb_no(int nb_no) {
		this.nb_no = nb_no;
	}

	public String getNb_title() {
		return nb_title;
	}

	public void setNb_title(String nb_title) {
		this.nb_title = nb_title;
	}

	public Date getNb_date() {
		return nb_date;
	}

	public void setNb_date(Date nb_date) {
		this.nb_date = nb_date;
	}

	public int getNb_count() {
		return nb_count;
	}

	public void setNb_count(int nb_count) {
		this.nb_count = nb_count;
	}

	public String getNb_countent() {
		return nb_countent;
	}

	public void setNb_countent(String nb_countent) {
		this.nb_countent = nb_countent;
	}

	public String getNb_upload() {
		return nb_upload;
	}

	public void setNb_upload(String nb_upload) {
		this.nb_upload = nb_upload;
	}

	@Override
	public String toString() {
		return "Notice [nb_no=" + nb_no + ", nb_title=" + nb_title + ", nb_date=" + nb_date + ", nb_count=" + nb_count
				+ ", nb_countent=" + nb_countent + ", nb_upload=" + nb_upload + "]";
	}
	
	
	
}
