package kr.co.sist.ssangbang.user.calendar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.ssangbang.user.calendar.dao.CalendarDAO;
import kr.co.sist.ssangbang.user.calendar.domain.Event;

@Component
public class CalendarService {
	@Autowired
	private CalendarDAO c_dao;
	
	
	public List<Event> searchMonthEvent(){
		List<Event> list=null;
//		String id="under";
		list=c_dao.selectMonthEvent();
		return list;
	}
	
}
