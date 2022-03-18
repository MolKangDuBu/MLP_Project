package mlp.project.lollipop.QNA;

public class QnaDto {

	private int qna_key;
	private String qna_id;//관리자 아이디
	private String qna_title;
	private String qna_contents;
	private String qna_wdate;
	
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
	
	
}
