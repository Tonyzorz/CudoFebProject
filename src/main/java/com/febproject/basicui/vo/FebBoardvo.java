package com.febproject.basicui.vo;

public class FebBoardvo {
	
	private int febId;
	private String febMainTitle;
	private String febTitle;
	private String febContent;
	private int febColumnId;
	private int febColumnCategoryId;
	
	public int getFebColumnCategoryId() {
		return febColumnCategoryId;
	}
	public void setFebColumnCategoryId(int febColumnCategoryId) {
		this.febColumnCategoryId = febColumnCategoryId;
	}
	public String getFebMainTitle() {
		return febMainTitle;
	}
	public void setFebMainTitle(String febMainTitle) {
		this.febMainTitle = febMainTitle;
	}
	public int getFebId() {
		return febId;
	}
	public void setFebId(int febId) {
		this.febId = febId;
	}
	public String getFebTitle() {
		return febTitle;
	}
	public void setFebTitle(String febTitle) {
		this.febTitle = febTitle;
	}
	public String getFebContent() {
		return febContent;
	}
	public void setFebContent(String febContent) {
		this.febContent = febContent;
	}
	public int getFebColumnId() {
		return febColumnId;
	}
	public void setFebColumnId(int febColumnId) {
		this.febColumnId = febColumnId;
	}
	@Override
	public String toString() {
		return "FebBoardvo [febId=" + febId + ", febMainTitle=" + febMainTitle + ", febTitle=" + febTitle
				+ ", febContent=" + febContent + ", febColumnId=" + febColumnId + ", febColumnCategoryId="
				+ febColumnCategoryId + "]";
	}
	
	
	
	
}
