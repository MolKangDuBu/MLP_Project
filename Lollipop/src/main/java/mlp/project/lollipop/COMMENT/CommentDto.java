package mlp.project.lollipop.COMMENT;

public class CommentDto {

	private int comment_key;
	private String comment_contents;
	private String comment_wdate;
	private int review_key; //부모글 키값
	private int comment_class;
	private int comment_depth;
	private int comment_group;
	
	
	
	public int getComment_key() {
		return comment_key;
	}
	public void setComment_key(int comment_key) {
		this.comment_key = comment_key;
	}
	public String getComment_contents() {
		return comment_contents;
	}
	public void setComment_contents(String comment_contents) {
		this.comment_contents = comment_contents;
	}
	public String getComment_wdate() {
		return comment_wdate;
	}
	public void setComment_wdate(String comment_wdate) {
		this.comment_wdate = comment_wdate;
	}
	public int getReview_key() {
		return review_key;
	}
	public void setReview_key(int review_key) {
		this.review_key = review_key;
	}
	public int getComment_class() {
		return comment_class;
	}
	public void setComment_class(int comment_class) {
		this.comment_class = comment_class;
	}
	public int getComment_depth() {
		return comment_depth;
	}
	public void setComment_depth(int comment_depth) {
		this.comment_depth = comment_depth;
	}
	public int getComment_group() {
		return comment_group;
	}
	public void setComment_group(int comment_group) {
		this.comment_group = comment_group;
	}
	
	
}
