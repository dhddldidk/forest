package com.dgit.model;

public class Forest {
	private int forNo;
	private String forName;
	private String forDetail;
	private String forHomepage;
	private String forPost;
	private String forPhone;
	private String forPic;
	private String forLatitude;
	private String forLongitude;
	private String dNo;

	public Forest() {

	}

	public Forest(int forNo, String forName, String forDetail, String forHomepage, String forPost, String forPhone,
			String forPic, String forLatitude, String forLongitude, String dNo) {
		super();
		this.forNo = forNo;
		this.forName = forName;
		this.forDetail = forDetail;
		this.forHomepage = forHomepage;
		this.forPost = forPost;
		this.forPhone = forPhone;
		this.forPic = forPic;
		this.forLatitude = forLatitude;
		this.forLongitude = forLongitude;
		this.dNo = dNo;
	}

	public int getForNo() {
		return forNo;
	}

	public void setForNo(int forNo) {
		this.forNo = forNo;
	}

	public String getForName() {
		return forName;
	}

	public void setForName(String forName) {
		this.forName = forName;
	}

	public String getForDetail() {
		return forDetail;
	}

	public void setForDetail(String forDetail) {
		this.forDetail = forDetail;
	}

	public String getForHomepage() {
		return forHomepage;
	}

	public void setForHomepage(String forHomepage) {
		this.forHomepage = forHomepage;
	}

	public String getForPost() {
		return forPost;
	}

	public void setForPost(String forPost) {
		this.forPost = forPost;
	}

	public String getForPhone() {
		return forPhone;
	}

	public void setForPhone(String forPhone) {
		this.forPhone = forPhone;
	}

	public String getForPic() {
		return forPic;
	}

	public void setForPic(String forPic) {
		this.forPic = forPic;
	}

	public String getForLatitude() {
		return forLatitude;
	}

	public void setForLatitude(String forLatitude) {
		this.forLatitude = forLatitude;
	}

	public String getForLongitude() {
		return forLongitude;
	}

	public void setForLongitude(String forLongitude) {
		this.forLongitude = forLongitude;
	}

	public String getdNo() {
		return dNo;
	}

	public void setdNo(String dNo) {
		this.dNo = dNo;
	}

	@Override
	public String toString() {
		return "Forest [forNo=" + forNo + ", forName=" + forName + ", forDetail=" + forDetail + ", forHomepage="
				+ forHomepage + ", forPost=" + forPost + ", forPhone=" + forPhone + ", forPic=" + forPic
				+ ", forLatitude=" + forLatitude + ", forLongitude=" + forLongitude + ", dNo=" + dNo + "]";
	}

}
