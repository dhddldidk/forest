package com.dgit.model;

public class Facilities {
	private int facNo;
	private String facName;
	private int catenum;

	public Facilities() {

	}

	public Facilities(int facNo, String facName, int catenum) {
		super();
		this.facNo = facNo;
		this.facName = facName;
		this.catenum = catenum;
	}

	public int getFacNo() {
		return facNo;
	}

	public void setFacNo(int facNo) {
		this.facNo = facNo;
	}

	public String getFacName() {
		return facName;
	}

	public void setFacName(String facName) {
		this.facName = facName;
	}

	public int getCatenum() {
		return catenum;
	}

	public void setCatenum(int catenum) {
		this.catenum = catenum;
	}

	@Override
	public String toString() {
		return "Facilities [facNo=" + facNo + ", facName=" + facName + ", catenum=" + catenum + "]";
	}

}
