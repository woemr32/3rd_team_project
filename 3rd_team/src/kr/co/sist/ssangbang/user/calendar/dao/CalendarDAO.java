package kr.co.sist.ssangbang.user.calendar.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.ssangbang.user.calendar.domain.Event;

@Component
public class CalendarDAO {
	@Autowired
	private SqlSessionTemplate sst;
	
	public List<Event> selectMonthEvent(){
		List<Event> list=null;
		list=sst.selectList("selectMonthEvent");
		return list;
	}//selectMonthEvent
	
} // class
