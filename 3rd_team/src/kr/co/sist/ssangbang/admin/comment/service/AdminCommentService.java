package kr.co.sist.ssangbang.admin.comment.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.ssangbang.admin.comment.dao.AdminCommentDAO;
import kr.co.sist.ssangbang.admin.comment.domain.Review;

@Component
public class AdminCommentService {
		@Autowired
		private AdminCommentDAO ac_dao;
		
		public List<Review> selectAllReview(){
			List<Review> list=null;
			list=ac_dao.selectAllReview();
			return list;
		}//selectAllReview 

}//AdminCommentService
