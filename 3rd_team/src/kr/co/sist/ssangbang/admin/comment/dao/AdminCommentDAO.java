package kr.co.sist.ssangbang.admin.comment.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.ssangbang.admin.comment.domain.Review;

@Component
public class AdminCommentDAO {
	@Autowired
	private SqlSession sst;
	
	public List<Review> selectAllReview(){
		List<Review> list=null;
		list=sst.selectList("selectAllReview");
		return list;
	}//selectAllReview
	
	public int deleteReview(String del_review_num){
		int cnt=0;
		
		cnt=sst.delete("deleteReview", del_review_num);
		
		System.out.println("DAO : "+ del_review_num);
		return cnt;
	}//deleteReview
	
}//AdminCommentDAO
