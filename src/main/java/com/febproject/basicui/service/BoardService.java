package com.febproject.basicui.service;

import java.util.List;

import com.febproject.basicui.vo.FebBoardvo;
import com.febproject.basicui.vo.FebColumnvo;

public interface BoardService {
	
	List<FebColumnvo> categoryAll();
	
	List<FebBoardvo> boardAll();
	
	List<Object[]> objectAll();

}
