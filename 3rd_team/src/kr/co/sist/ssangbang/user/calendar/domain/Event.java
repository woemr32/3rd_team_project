package kr.co.sist.ssangbang.user.calendar.domain;

public class Event {
	private int day;
	private String title, content, reserve;

	public Event() {
	}

	public Event(int day, String title, String content, String reserve) {
		super();
		this.day = day;
		this.title = title;
		this.content = content;
		this.reserve = reserve;
	}

	public int getDay() {
		return day;
	}

	public void setDay(int day) {
		this.day = day;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getReserve() {
		return reserve;
	}

	public void setReserve(String reserve) {
		this.reserve = reserve;
	}

	
} // class
