package com.febproject.basicui.service;

import java.util.List;

import com.febproject.basicui.vo.BoardTotal;
import com.febproject.basicui.vo.FebBoardvo;
import com.febproject.basicui.vo.FebColumnCategoryvo;
import com.febproject.basicui.vo.FebColumnvo;

public interface BoardService {
	
	List<FebColumnvo> categoryAll();
	
	List<FebBoardvo> boardAll();
	
	//Total join value
	List<BoardTotal> boardAllJoin();
	
	//Insert everything
	void insertBoard(BoardTotal boardTotal);
		
	//Get febColumnCategoryTitle
	List<FebColumnCategoryvo> getFebColumnCategoryTitle(String febColumnTitle);
}
