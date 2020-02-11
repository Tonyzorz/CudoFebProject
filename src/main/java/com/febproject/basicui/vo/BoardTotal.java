package com.febproject.basicui.vo;

import org.apache.log4j.Logger;

public class BoardTotal {
	//FebBoardvo
	private int febId;
	private String febMainTitle;
	private String febTitle;
	private String febContent;
	private int febColumnId;
	private int febColumnCategoryId;
	
	//FebColumnCategoryvo
	private String febColumnCategoryTitle;
	
	//FebColumnvo
	private int febColumn;
	private String febColumnTitle;
		
	@Override
	public String toString() {
		return "BoardTotal [febId=" + febId + ", febMainTitle=" + febMainTitle + ", febTitle=" + febTitle
				+ ", febContent=" + febContent + ", febColumnId=" + febColumnId + ", febColumnCategoryId="
				+ febColumnCategoryId + ", febColumnCategoryTitle=" + febColumnCategoryTitle + ", febColumn="
				+ febColumn + ", febColumnTitle=" + febColumnTitle + "]";
	}
	
	public int getFebId() {
		return febId;
	}
	public void setFebId(int febId) {
		this.febId = febId;
	}
	public String getFebMainTitle() {
		return febMainTitle;
	}
	public void setFebMainTitle(String febMainTitle) {
		this.febMainTitle = febMainTitle;
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
	public int getFebColumnCategoryId() {
		return febColumnCategoryId;
	}
	public void setFebColumnCategoryId(int febColumnCategoryId) {
		this.febColumnCategoryId = febColumnCategoryId;
	}
	public String getFebColumnCategoryTitle() {
		return febColumnCategoryTitle;
	}
	public void setFebColumnCategoryTitle(String febColumnCategoryTitle) {
		this.febColumnCategoryTitle = febColumnCategoryTitle;
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
	
	
}
