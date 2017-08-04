package kr.co.sist.ssangbang.user.board.controller;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.sist.ssangbang.user.board.service.BoardService;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import org.springframework.beans.factory.annotation.Autowired;

@Controller
public class BoardController {

	@RequestMapping(value="/cover.do",method=GET)
	public String goCover(){
		
		
		return "cover/cover";
	}//goCover
	
	
	@RequestMapping(value="/index.do",method=GET)
	public String goIndex(){
		
		
		return "main/index";
	}//goCover

	
	@Autowired
	BoardService b_service;
	@RequestMapping(value="marker_cluster.do",method=GET)
	public String goMarkerCluster(Model model){
		
		System.out.print(b_service);
		
		//���̽� �����Ͽ� ��Ʈ������ ��ȯ(�������� ��Ʈ�����θ� �����δ�.)
		String markers=b_service.allStore();
		
		model.addAttribute("map_cluster", markers);
		
		
		return "redirect:map/marker_cluster.jsp";
	}//goCover
}//class
