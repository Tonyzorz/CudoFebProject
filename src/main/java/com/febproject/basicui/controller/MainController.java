package com.febproject.basicui.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.febproject.basicui.service.BoardService;

@Controller
public class MainController {

	@Resource(name = "BoardService")
	BoardService boardService;
	
	@RequestMapping(value = "index.do")
	public String goIndex(Model model){
		model.addAttribute("febcolumns", boardService.categoryAll());
		model.addAttribute("febboard", boardService.boardAll());
		
		
		boardService.boardAll().get(0).getFebColumnId();
		System.out.println(boardService.categoryAll());
		
		
		model.addAttribute("object", boardService.objectAll());
		return "index";
	}
	
}
