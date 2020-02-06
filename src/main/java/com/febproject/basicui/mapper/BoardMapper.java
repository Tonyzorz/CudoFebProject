package com.febproject.basicui.mapper;

import java.util.List;

import org.springframework.stereotype.Service;

import com.febproject.basicui.vo.FebBoardvo;
import com.febproject.basicui.vo.FebColumnvo;

@Service("BoardMapper")
public interface BoardMapper {
	
	//Category 
	List<FebColumnvo> categoryAll();
	
	//Board
	List<FebBoardvo> boardAll();
	
	List<Object[]> objectAll();
}
