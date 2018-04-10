package com.dgit.model;

public class Post {
	private String zipcode;
	private String doro;
	private String oldDoro;

	

	public Post() {
	}



	public Post(String zipcode, String doro, String oldDoro) {
		super();
		this.zipcode = zipcode;
		this.doro = doro;
		this.oldDoro = oldDoro;
	}



	public String getZipcode() {
		return zipcode;
	}



	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}



	public String getDoro() {
		return doro;
	}



	public void setDoro(String doro) {
		this.doro = doro;
	}



	public String getOldDoro() {
		return oldDoro;
	}



	public void setOldDoro(String oldDoro) {
		this.oldDoro = oldDoro;
	}



	@Override
	public String toString() {
		return "Post [zipcode=" + zipcode + ", doro=" + doro + ", oldDoro=" + oldDoro + "]";
	}

	
	
	
}
