package mlp.project.lollipop.FOODREVIEW;

import mlp.project.lollipop.common.BaseDto;

public class FoodReviewDto extends BaseDto{

	private int store_key=0; //외래키로 사용
	private int review_key=0;
	private String review_id="";//작성자 아이디, 외래키
	private String review_title="";
	private String review_image1="";
	private String review_image2="";
	private String review_image3="";
	private String review_contents="";
	private String review_wdate="";
	private char review_category='1';
	private int review_like;//좋아요
	private int review_hit;//조회수
	 
	
	public int getStore_key() {
		return store_key;
	}
	public void setStore_key(int store_key) {
		this.store_key = store_key;
	}
	public int getReview_key() {
		return review_key;
	}
	public void setReview_key(int review_key) {
		this.review_key = review_key;
	}
	public String getReview_id() {
		return review_id;
	}
	public void setReview_id(String review_id) {
		this.review_id = review_id;
	}
	public String getReview_title() {
		return review_title;
	}
	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}
	public String getReview_image1() {
		return review_image1;
	}
	public void setReview_image1(String review_image1) {
		this.review_image1 = review_image1;
	}
	public String getReview_image2() {
		return review_image2;
	}
	public void setReview_image2(String review_image2) {
		this.review_image2 = review_image2;
	}
	public String getReview_image3() {
		return review_image3;
	}
	public void setReview_image3(String review_image3) {
		this.review_image3 = review_image3;
	}
	public String getReview_contents() {
		return review_contents;
	}
	public void setReview_contents(String review_contents) {
		this.review_contents = review_contents;
	}
	public String getReview_wdate() {
		return review_wdate;
	}
	public void setReview_wdate(String review_wdate) {
		this.review_wdate = review_wdate;
	}
	public char getReview_category() {
		return review_category;
	}
	public void setReview_category(char review_category) {
		this.review_category = review_category;
	}
	public int getReview_like() {
		return review_like;
	}
	public void setReview_like(int review_like) {
		this.review_like = review_like;
	}
	public int getReview_hit() {
		return review_hit;
	}
	public void setReview_hit(int review_hit) {
		this.review_hit = review_hit;
	}
	
	
	
	
	
}
