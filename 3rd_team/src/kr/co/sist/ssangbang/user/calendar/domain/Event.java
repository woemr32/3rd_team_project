package kr.co.sist.ssangbang.user.calendar.domain;

public class Event {
	private String title, content;

	public Event() {
	}

	public Event(String title, String content) {
		super();
		this.title = title;
		this.content = content;
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

} // class
