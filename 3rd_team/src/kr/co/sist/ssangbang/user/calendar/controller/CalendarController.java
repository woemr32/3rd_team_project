package kr.co.sist.ssangbang.user.calendar.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.sist.ssangbang.user.calendar.domain.Event;
import kr.co.sist.ssangbang.user.calendar.service.CalendarService;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
public class CalendarController {
	
	@Autowired
	CalendarService cs;
	@RequestMapping(value="calendar.do", method=GET)
	public String goCanlendar(Model model){
		model.addAttribute("month_event", cs.searchMonthEvent());
		return "calendar/calendar";
	}
	
}
