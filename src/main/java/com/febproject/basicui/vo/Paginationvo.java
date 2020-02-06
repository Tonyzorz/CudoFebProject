package com.febproject.basicui.vo;

public class Paginationvo {
	
	private int range;
	
	private int listSize = 5;
	private int listTotal;
	private int listStart;
	
	private int rangeSize = 10;
	private int rangeCurrent;
	private int rangeTotal;
	private int rangeStart;
	private int rangeEnd;
	private boolean next;
	private boolean prev;
	
	public void pagination(int rangeCurrent, int range, int listTotal){
		
		this.rangeCurrent = rangeCurrent;
		this.range = range;
		this.listTotal = listTotal;
		
		//total pages
		rangeTotal = (int)Math.ceil(listTotal/listSize);
		
		//starting page
		rangeStart = (range - 1) * rangeSize + 1;
		
		//end page
		rangeEnd = range * rangeSize;
		
		//liststart per page
		listStart = (rangeCurrent - 1) * listSize;
		
		//prev exit
		
		//next exist
		
	}
	
	
	public int getRange() {
		return range;
	}
	public void setRange(int range) {
		this.range = range;
	}
	public int getListSize() {
		return listSize;
	}
	public void setListSize(int listSize) {
		this.listSize = listSize;
	}
	public int getListTotal() {
		return listTotal;
	}
	public void setListTotal(int listTotal) {
		this.listTotal = listTotal;
	}
	public int getListStart() {
		return listStart;
	}
	public void setListStart(int listStart) {
		this.listStart = listStart;
	}
	public int getRangeSize() {
		return rangeSize;
	}
	public void setRangeSize(int rangeSize) {
		this.rangeSize = rangeSize;
	}
	public int getRangeCurrent() {
		return rangeCurrent;
	}
	public void setRangeCurrent(int rangeCurrent) {
		this.rangeCurrent = rangeCurrent;
	}
	public int getRangeTotal() {
		return rangeTotal;
	}
	public void setRangeTotal(int rangeTotal) {
		this.rangeTotal = rangeTotal;
	}
	public int getRangeStart() {
		return rangeStart;
	}
	public void setRangeStart(int rangeStart) {
		this.rangeStart = rangeStart;
	}
	public int getRangeEnd() {
		return rangeEnd;
	}
	public void setRangeEnd(int rangeEnd) {
		this.rangeEnd = rangeEnd;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	
	
}
