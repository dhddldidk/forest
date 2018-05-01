package com.dgit.model;

public class ReservationChart {
	private int totalRes;
	private int resNow;
	private int cancelRes;
	private int finishedRes;

	public ReservationChart() {
		
	}

	public ReservationChart(int totalRes, int resNow, int cancelRes, int finishedRes) {
		super();
		this.totalRes = totalRes;
		this.resNow = resNow;
		this.cancelRes = cancelRes;
		this.finishedRes = finishedRes;
	}

	public int getTotalRes() {
		return totalRes;
	}

	public void setTotalRes(int totalRes) {
		this.totalRes = totalRes;
	}

	public int getResNow() {
		return resNow;
	}

	public void setResNow(int resNow) {
		this.resNow = resNow;
	}

	public int getCancelRes() {
		return cancelRes;
	}

	public void setCancelRes(int cancelRes) {
		this.cancelRes = cancelRes;
	}

	public int getFinishedRes() {
		return finishedRes;
	}

	public void setFinishedRes(int finishedRes) {
		this.finishedRes = finishedRes;
	}

	@Override
	public String toString() {
		return "ReservationChart [totalRes=" + totalRes + ", resNow=" + resNow + ", cancelRes=" + cancelRes
				+ ", finishedRes=" + finishedRes + "]";
	}

}
