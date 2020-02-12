package com.febproject.basicui.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
		model.addAttribute("febboard", boardService.boardAllJoin());
		model.addAttribute("febColumnCategoryTitleDefault", boardService.getFebColumnCategoryTitle("회원"));
		return "index";
	}
	
	
	@RequestMapping(value = "insert.do", produces="text/plain; charset=UTF-8")
	public String insertBoard(RedirectAttributes redirectAttributes, BoardTotal boardTotal, HttpServletRequest request/* ,@RequestParam(value = "") String febColumnTitle*/){
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(boardTotal.getFebColumnCategoryTitle() == null || boardTotal.getFebContent().equals("") ||
				boardTotal.getFebMainTitle().equals("") || boardTotal.getFebTitle().equals("")){
			
			redirectAttributes.addFlashAttribute("error", "Please fill out all the blanks");
		}
		
		boardService.insertBoard(boardTotal);
		return "redirect:index.do";
	}
	
	//Modal select option click and get the according options
	@RequestMapping(value = "getFebColumnCategoryTitle.do")
	@ResponseBody
	public List<FebColumnCategoryvo> getFebColumnCategoryTitle(@RequestBody String febColumnTitleString){
		return boardService.getFebColumnCategoryTitle(febColumnTitleString);
	}
	
	//Category Title click ajax function
	@RequestMapping(value = "getBoardTotalAccordingToFebColumnTitle.do")
	@ResponseBody
	public List<BoardTotal> getBoardTotalAccordingToFebColumnTitle(@RequestBody String categoryValue){
		System.err.println("IT ENTERED GETBOARDTOTALACCORDINGTOFEBCOLUMTITLE");
		System.out.println(categoryValue);
		System.out.println(boardService.getBoardTotalAccordingToFebColumnTitle(categoryValue));
		if(categoryValue.equals("전체")){
			return boardService.boardAllJoin();
		} else {
			return boardService.getBoardTotalAccordingToFebColumnTitle(categoryValue);
		}
	}
	
	@RequestMapping(value = "getSearchedBoard.do")
	public String getSearchBoard(String searchedTitle, Model model, RedirectAttributes redirectAttributes){
		model.addAttribute("febcolumns", boardService.categoryAll());
		model.addAttribute("febboard", boardService.boardAllJoin());
		model.addAttribute("febboard", boardService.getSearchedBoard(searchedTitle));
		return "index";
	}
	
	//ajax checking if searching value exists
	@RequestMapping(value = "existSearchedBoard.do")
	@ResponseBody
	public int existSearchedBoard(@RequestBody String searchString){
		System.out.println(searchString);
		//1 = have        0 = does not have    
		return (boardService.getSearchedBoard(searchString).size() == 0) ? 0 : 1;
	}
	
	
}
