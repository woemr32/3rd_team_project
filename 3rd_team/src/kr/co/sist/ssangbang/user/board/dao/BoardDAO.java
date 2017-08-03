package kr.co.sist.ssangbang.user.board.dao;

import java.sql.SQLException;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.ssangbang.user.board.domain.AllStoreDomain;
import kr.co.sist.ssangbang.user.board.service.BoardService;


@Component
public class BoardDAO {
	
	
	@Autowired(required=false)
	private SqlSessionTemplate sst;
	
	
	public List<AllStoreDomain> selectAllStore() throws SQLException{
		
		//System.out.println(sst+"======sst");
		System.out.println("======sst");
		
		List<AllStoreDomain> list=sst.selectList("selectAllStore");
		
		return list;
		
	}//selectAllStore
	
	
} // class
