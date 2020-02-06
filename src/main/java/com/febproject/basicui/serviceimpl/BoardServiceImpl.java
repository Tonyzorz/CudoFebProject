package com.febproject.basicui.serviceimpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.febproject.basicui.mapper.BoardMapper;
import com.febproject.basicui.service.BoardService;
import com.febproject.basicui.vo.FebBoardvo;
import com.febproject.basicui.vo.FebColumnvo;

@Service("BoardService")
public class BoardServiceImpl implements BoardService{
	
	@Resource(name = "BoardMapper")
	BoardMapper boardMapper;

	@Override
	public List<FebColumnvo> categoryAll() {
		System.out.println("did it come here? boardserviceimpl");
		return boardMapper.categoryAll();
	}

	@Override
	public List<FebBoardvo> boardAll() {
		return boardMapper.boardAll();
	}

	@Override
	public List<Object[]> objectAll() {
		return boardMapper.objectAll();
	}

}
