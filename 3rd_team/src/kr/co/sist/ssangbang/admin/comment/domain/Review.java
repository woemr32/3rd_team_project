package kr.co.sist.ssangbang.admin.comment.domain;

public class Review {
	private String review_num, id, store_num, review, inputDate;
	private int score;

	public Review() {
	}

	public Review(String review_num, String id, String store_num, String review, String inputDate, int score) {
		super();
		this.review_num = review_num;
		this.id = id;
		this.store_num = store_num;
		this.review = review;
		this.inputDate = inputDate;
		this.score = score;
	}

	public String getReview_num() {
		return review_num;
	}

	public void setReview_num(String review_num) {
		this.review_num = review_num;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getStore_num() {
		return store_num;
	}

	public void setStore_num(String store_num) {
		this.store_num = store_num;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}

	public String getInputDate() {
		return inputDate;
	}

	public void setInputDate(String inputDate) {
		this.inputDate = inputDate;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

}// Review
