package com.dgit.model;

public class ForestChart {
	private String for_name;
	private int count;
	private String year;

	public ForestChart() {

	}

	public ForestChart(String year) {
		super();
		this.year = year;
	}

	public ForestChart(String for_name, int count) {
		super();
		this.for_name = for_name;
		this.count = count;
	}

	public String getFor_name() {
		return for_name;
	}

	public void setFor_name(String for_name) {
		this.for_name = for_name;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	@Override
	public String toString() {
		return "ForestChart [for_name=" + for_name + ", count=" + count + ", year=" + year + "]";
	}

}
