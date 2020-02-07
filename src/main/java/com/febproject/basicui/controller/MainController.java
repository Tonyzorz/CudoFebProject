package com.febproject.basicui.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.febproject.basicui.service.BoardService;
import com.febproject.basicui.vo.BoardTotal;
import com.febproject.basicui.vo.FebColumnCategoryvo;

@Controller
public class MainController {

	@Resource(name = "BoardService")
	BoardService boardService;
	
	@RequestMapping(value = "index.do")
	public String goIndex(Model model){
		model.addAttribute("febcolumns", boardService.categoryAll());
		//model.addAttribute("febboard", boardService.boardAll());
		
		boardService.boardAll().get(0).getFebColumnId();
		System.out.println(boardService.categoryAll());
		
		model.addAttribute("febboard", boardService.boardAllJoin());
		System.out.println(boardService.boardAllJoin());
		return "index";
	}
	
	@RequestMapping(value = "insert.do", produces="text/plain; charset=UTF-8")
	public String insertBoard(BoardTotal boardTotal, HttpServletRequest request/* ,@RequestParam(value = "") String febColumnTitle*/){
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(boardTotal.getFebColumnTitle());
		boardService.insertBoard(boardTotal);
		return "redirect:index.do";
	}
	
	@RequestMapping(value = "getFebColumnCategoryTitle.do")
	@ResponseBody
	public List<FebColumnCategoryvo> getFebColumnCategoryTitle(@RequestBody String febColumnTitleString){
		System.err.println("IT ENTERED!");
		System.err.println(febColumnTitleString);
		System.out.println(boardService.getFebColumnCategoryTitle(febColumnTitleString).size());
		return boardService.getFebColumnCategoryTitle(febColumnTitleString);
	}
	
}
