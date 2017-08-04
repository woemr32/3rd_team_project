package kr.co.sist.ssangbang.user.board.service;

import java.sql.SQLException;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.ssangbang.user.board.dao.BoardDAO;
import kr.co.sist.ssangbang.user.board.domain.AllStoreDomain;

@Component
public class BoardService {
	
	
	@Autowired
	private BoardDAO b_dao;
	
	public String allStore(){
		
		System.out.println("===========b_dao==="+b_dao);
		
		String allStore="";
		
		List<AllStoreDomain> list=null;
		
		JSONObject jo=null;
		JSONArray ja=new JSONArray();
		
		try {
			list=b_dao.selectAllStore();
		} catch (SQLException e) {
			e.printStackTrace();
		}//catch
		
		System.out.println(list);
		
		AllStoreDomain storeDomain=null;
		
		for( int i=0; i<list.size(); i++){
			
			storeDomain=list.get(i);
			jo=new JSONObject();
			
			jo.put("store_num", storeDomain.getStore_num());
			jo.put("name", storeDomain.getName());
			jo.put("lat", storeDomain.getLat());
			jo.put("lng", storeDomain.getLnt());
			jo.put("addr", storeDomain.getAddr());
//			jo.put("phone", storeDomain.getPhone());
//			jo.put("menu", storeDomain.getMenu());
//			jo.put("image", storeDomain.getImage());
			
			ja.add(jo);
			
		}//for
		
		allStore=ja.toString();
		
		System.out.println(allStore);////////´ÜÀ§///////////////////////////
		
		return allStore;
	}//allStore
	
	
	public static void main(String[] args){
		
		
		new BoardService().allStore();
		
		
	}
	
}//class
