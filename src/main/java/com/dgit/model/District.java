package com.dgit.model;

public class District {
	private String dNo;
	private String dSido;

	public District() {

	}

	public District(String dNo, String dSido) {
		super();
		this.dNo = dNo;
		this.dSido = dSido;
	}

	public String getdNo() {
		return dNo;
	}

	public void setdNo(String dNo) {
		this.dNo = dNo;
	}

	public String getdSido() {
		return dSido;
	}

	public void setdSido(String dSido) {
		this.dSido = dSido;
	}

	@Override
	public String toString() {
		return "District [dNo=" + dNo + ", dSido=" + dSido + "]";
	}

}
