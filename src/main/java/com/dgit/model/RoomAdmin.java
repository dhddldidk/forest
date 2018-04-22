package com.dgit.model;

public class RoomAdmin {
	private int rNo;
	private String rName;
	private int rPax;
	private int rPrice;
	private String rPic;
	private String rExplan;
	private String rPhone;
	private int forNo;
	private int facNo;
	private Forest forest;
	private Facilities facilities;

	public RoomAdmin() {

	}

	public RoomAdmin(int rNo, String rName, int rPax, int rPrice, String rPic, String rExplan, String rPhone, int forNo,
			int facNo, Forest forest, Facilities facilities) {
		super();
		this.rNo = rNo;
		this.rName = rName;
		this.rPax = rPax;
		this.rPrice = rPrice;
		this.rPic = rPic;
		this.rExplan = rExplan;
		this.rPhone = rPhone;
		this.forNo = forNo;
		this.facNo = facNo;
		this.forest = forest;
		this.facilities = facilities;
	}

	public RoomAdmin(int rNo, String rName, int rPax, int rPrice, String rPic, String rExplan, String rPhone, int forNo,
			int facNo) {
		super();
		this.rNo = rNo;
		this.rName = rName;
		this.rPax = rPax;
		this.rPrice = rPrice;
		this.rPic = rPic;
		this.rExplan = rExplan;
		this.rPhone = rPhone;
		this.forNo = forNo;
		this.facNo = facNo;
	}

	public int getrNo() {
		return rNo;
	}

	public void setrNo(int rNo) {
		this.rNo = rNo;
	}

	public String getrName() {
		return rName;
	}

	public void setrName(String rName) {
		this.rName = rName;
	}

	public int getrPax() {
		return rPax;
	}

	public void setrPax(int rPax) {
		this.rPax = rPax;
	}

	public int getrPrice() {
		return rPrice;
	}

	public void setrPrice(int rPrice) {
		this.rPrice = rPrice;
	}

	public String getrPic() {
		return rPic;
	}

	public void setrPic(String rPic) {
		this.rPic = rPic;
	}

	public String getrExplan() {
		return rExplan;
	}

	public void setrExplan(String rExplan) {
		this.rExplan = rExplan;
	}

	public String getrPhone() {
		return rPhone;
	}

	public void setrPhone(String rPhone) {
		this.rPhone = rPhone;
	}

	public int getForNo() {
		return forNo;
	}

	public void setForNo(int forNo) {
		this.forNo = forNo;
	}

	public int getFacNo() {
		return facNo;
	}

	public void setFacNo(int facNo) {
		this.facNo = facNo;
	}

	public Forest getForest() {
		return forest;
	}

	public void setForest(Forest forest) {
		this.forest = forest;
	}

	public Facilities getFacilities() {
		return facilities;
	}

	public void setFacilities(Facilities facilities) {
		this.facilities = facilities;
	}

	@Override
	public String toString() {
		return "RoomAdmin [rNo=" + rNo + ", rName=" + rName + ", rPax=" + rPax + ", rPrice=" + rPrice + ", rPic=" + rPic
				+ ", rExplan=" + rExplan + ", rPhone=" + rPhone + ", forNo=" + forNo + ", facNo=" + facNo + ", forest="
				+ forest + ", facilities=" + facilities + "]";
	}

}
