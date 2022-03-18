package mlp.project.lollipop.QNA;

import mlp.project.lollipop.common.BaseDto;

public class QnaDto extends BaseDto {

	private int qna_key;
	private String qna_id="";
	private String qna_title="";
	private String qna_contents="";
	private String qna_wdate="";
	private int qna_hit=0;
	private String user_name="";
	
	
	public int getQna_key() {
		return qna_key;
	}
	public void setQna_key(int qna_key) {
		this.qna_key = qna_key;
	}
	public String getQna_id() {
		return qna_id;
	}
	public void setQna_id(String qna_id) {
		this.qna_id = qna_id;
	}
	public String getQna_title() {
		return qna_title;
	}
	public void setQna_title(String qna_title) {
		this.qna_title = qna_title;
	}
	public String getQna_contents() {
		return qna_contents;
	}
	public void setQna_contents(String qna_contents) {
		this.qna_contents = qna_contents;
	}
	public String getQna_wdate() {
		return qna_wdate;
	}
	public void setQna_wdate(String qna_wdate) {
		this.qna_wdate = qna_wdate;
	}
	public int getQna_hit() {
		return qna_hit;
	}
	public void setQna_hit(int qna_hit) {
		this.qna_hit = qna_hit;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	
	
}
