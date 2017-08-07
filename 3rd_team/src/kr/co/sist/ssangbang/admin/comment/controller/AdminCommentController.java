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
	private AdminCommentService acs;
	
/*	@RequestMapping(value="admin_request.do",method=GET)
	public String goAdminComment(Model model){
		model.addAttribute("admin_review", acs.selectAllRequest() );
		return "admin/admin_comment";
	}//goAdminComment
*/	
	@RequestMapping(value="admin_comment.do",method=GET)
	public String goAdminComment(Model model){
		model.addAttribute("admin_review", acs.selectAllReview() );
		return "admin/admin_comment";
	}//goAdminComment
	
	
	@RequestMapping(value="admin_foot.do", method=GET)
	public String importAdminFoot(){
		return "admin/admin_foot";
	}//importAdminFoot
	
	@RequestMapping(value="admin_menu.do", method=GET)
	public String importAdminMenu(){
		return "admin/admin_menu";
	}//importAdminMenu
	
	@RequestMapping(value="review_del_process.do", method=GET)
	public String deleteReview(String[] del_review_num){
		
		boolean flag=false;
		
		for(int i=0; i<del_review_num.length; i++){
			flag=acs.deleteReview(del_review_num[i]);
			System.out.println("Controller : "+del_review_num);
			
			if(!flag){
				return "error/error";
			}
		}//end for
		
		return "admin/admin_comment";
	}//importAdminMenu


}//class
