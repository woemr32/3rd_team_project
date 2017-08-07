package kr.co.sist.ssangbang.admin.comment.controller;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.sist.ssangbang.admin.comment.service.AdminCommentService;
import kr.co.sist.ssangbang.user.board.service.BoardService;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import org.springframework.beans.factory.annotation.Autowired;

@Controller
public class AdminCommentController {

	@Autowired
	AdminCommentService acs;
	
	@RequestMapping(value="admin.do",method=GET)
	public String goAdmin(Model model){
		model.addAttribute("admin_review", acs.selectAllReview());
		return "admin/admin";
	}//goAdmin
	
	@RequestMapping(value="/admin_comment.do", method=GET)
	public String goAdminComment(Model model){
		model.addAttribute("admin_review", acs.selectAllReview());
		return "admin/admin_comment";
	}//goAdminComment
	


}//class
