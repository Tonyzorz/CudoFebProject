package com.febproject.basicui.vo;

public class FebColumnvo {
	
	private int febColumn;
	private String febColumnTitle;
	
	public FebColumnvo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public int getFebColumn() {
		return febColumn;
	}
	public void setFebColumn(int febColumn) {
		this.febColumn = febColumn;
	}
	public String getFebColumnTitle() {
		return febColumnTitle;
	}
	public void setFebColumnTitle(String febColumnTitle) {
		this.febColumnTitle = febColumnTitle;
	}

	@Override
	public String toString() {
		return "FebColumnvo [febColumn=" + febColumn + ", febColumnTitle=" + febColumnTitle + "]";
	}
	
	
	
	
}
