package com.dgit.model;

public class ForestName {
	private String name;
	private String home;
	
	public ForestName(String name, String home) {
		this.name = name;
		this.home = home;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getHome() {
		return home;
	}
	public void setHome(String home) {
		this.home = home;
	}
	@Override
	public String toString() {
		return "ForestName [name=" + name + ", home=" + home + "]";
	}
	
	
}
