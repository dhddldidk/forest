package com.dgit.model;

import java.util.Date;

public class Notice {
	private int nb_no;
	private String nb_title;
	private Date nb_date;
	private int nb_count;
	private String nb_content;
	
	public Notice() {
	}
	
	

	public Notice(int nb_no, String nb_title, Date nb_date, int nb_count, String nb_content) {
		super();
		this.nb_no = nb_no;
		this.nb_title = nb_title;
		this.nb_date = nb_date;
		this.nb_count = nb_count;
		this.nb_content = nb_content;
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

	public String getNb_content() {
		return nb_content;
	}

	public void setNb_content(String nb_content) {
		this.nb_content = nb_content;
	}



	@Override
	public String toString() {
		return "Notice [nb_no=" + nb_no + ", nb_title=" + nb_title + ", nb_date=" + nb_date + ", nb_count=" + nb_count
				+ ", nb_content=" + nb_content + "]";
	}

	
	
}
