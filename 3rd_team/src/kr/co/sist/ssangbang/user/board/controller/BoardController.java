package kr.co.sist.ssangbang.user.board.controller;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.sist.ssangbang.user.board.service.BoardService;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
public class BoardController {

	@RequestMapping(value="cover.do",method=GET)
	public String goCover(){
		
		
		return "cover/cover.do";
	}//goCover
	
	
	@RequestMapping(value="index.do",method=GET)
	public String goIndex(){
		
		
		return "main/index.do";
	}//goCover
	
	
	@RequestMapping(value="marker_cluster.do",method=POST)
	public String goMarkerCluster(Model model){
		
		//���� ��ü ����
		BoardService b_service=new BoardService();

		System.out.print(b_service);
		
		//���̽� �����Ͽ� ��Ʈ������ ��ȯ(�������� ��Ʈ�����θ� �����δ�.)
		String markers=b_service.allStore();
		
		model.addAttribute("map_cluster", markers);
		
		
		return "redirect:marker_cluster.do";
	}//goCover
}//class
