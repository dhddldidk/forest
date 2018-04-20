package com.dgit.model;

import java.util.Date;

public class Question {
	private int qNo;
	private String qTitle;
	private String qContent;
	private String qUpload;
	private int qCount;
	private int qState;
	private Date qDate;
	private User user;
	private Answer answer;
	
	
	public Question() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	public Question(int qNo) {
		super();
		this.qNo = qNo;
	}


	public Question(int qNo, String qTitle, String qContent, String qUpload, int qCount, int qState, Date qDate,
			User user) {
		super();
		this.qNo = qNo;
		this.qTitle = qTitle;
		this.qContent = qContent;
		this.qUpload = qUpload;
		this.qCount = qCount;
		this.qState = qState;
		this.qDate = qDate;
		this.user = user;
	}


	public int getqState() {
		return qState;
	}

	public void setqState(int qState) {
		this.qState = qState;
	}

	

	public int getqNo() {
		return qNo;
	}

	public void setqNo(int qNo) {
		this.qNo = qNo;
	}

	public String getqTitle() {
		return qTitle;
	}

	public void setqTitle(String qTitle) {
		this.qTitle = qTitle;
	}

	public String getqContent() {
		return qContent;
	}

	public void setqContent(String qContent) {
		this.qContent = qContent;
	}

	public String getqUpload() {
		return qUpload;
	}

	public void setqUpload(String qUpload) {
		this.qUpload = qUpload;
	}

	public int getqCount() {
		return qCount;
	}

	public void setqCount(int qCount) {
		this.qCount = qCount;
	}

	public Date getqDate() {
		return qDate;
	}

	public void setqDate(Date qDate) {
		this.qDate = qDate;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Answer getAnswer() {
		return answer;
	}

	public void setAnswer(Answer answer) {
		this.answer = answer;
	}


	@Override
	public String toString() {
		return "Question [qNo=" + qNo + ", qTitle=" + qTitle + ", qContent=" + qContent + ", qUpload=" + qUpload
				+ ", qCount=" + qCount + ", qState=" + qState + ", qDate=" + qDate + ", user=" + user + ", answer="
				+ answer + "]";
	}

	

	
	
}
