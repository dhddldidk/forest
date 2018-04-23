package com.dgit.model;

import java.util.Date;

public class Answer {
	/*private int aNo;*/
	private String aContent;
	private Date aDate;
	private int qNo;
	public Answer() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Answer( String aContent, Date aDate, int qNo) {
		super();

		this.aContent = aContent;
		this.aDate = aDate;
		this.qNo = qNo;
	}
	
	public String getaContent() {
		return aContent;
	}
	public void setaContent(String aContent) {
		this.aContent = aContent;
	}
	public Date getaDate() {
		return aDate;
	}
	public void setaDate(Date aDate) {
		this.aDate = aDate;
	}
	public int getqNo() {
		return qNo;
	}
	public void setqNo(int qNo) {
		this.qNo = qNo;
	}
	@Override
	public String toString() {
		return "Answer [aContent=" + aContent + ", aDate=" + aDate + ", qNo=" + qNo + "]";
	}
	
	
	
	
}
