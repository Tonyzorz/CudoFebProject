package com.febproject.basicui.mapper;

import java.util.List;

import org.springframework.stereotype.Service;

import com.febproject.basicui.vo.BoardTotal;
import com.febproject.basicui.vo.FebBoardvo;
import com.febproject.basicui.vo.FebColumnCategoryvo;
import com.febproject.basicui.vo.FebColumnvo;

@Service("BoardMapper")
public interface BoardMapper {
	
	//Category 
	List<FebColumnvo> categoryAll();
	
	//Board
	List<FebBoardvo> boardAll();
	
	//Total join value
	List<BoardTotal> boardAllJoin();
	
	//Insert everything
	void insertBoard(BoardTotal boardTotal);
	
	//Get febColumnId
	int getFebColumnId(String febColumnTitle);
	
	//Get febColumnCategoryTitle
	List<FebColumnCategoryvo> getFebColumnCategoryTitle(int febColumnCategoryId);
	
	//Get board data according to febColumnTitle
	List<BoardTotal> getBoardTotalAccordingToFebColumnTitle(String febColumnTitle);
	
	
}
