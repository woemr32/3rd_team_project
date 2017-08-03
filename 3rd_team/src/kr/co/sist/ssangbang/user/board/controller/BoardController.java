package kr.co.sist.ssangbang.user.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.springframework.web.bind.annotation.RequestMethod.POST;
import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
public class BoardController {
	
	@RequestMapping(value="cover.do",method=GET)
	public String goCover(){
		
		
		return "cover/cover";
	}//goCover
	
	
	@RequestMapping(value="/index.do",method=GET)
	public String gomain(){
		
		
		return "main/index";
	}//goCover

}//class
