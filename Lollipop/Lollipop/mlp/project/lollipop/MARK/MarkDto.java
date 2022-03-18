package mlp.project.lollipop.MARK;

public class MarkDto {
	private int store_key;//가게 식별키, 외래키
	private int mark_key;//즐겨찾기 식별키
	private String mark_id;
	private String mark_wdate;
	
	public int getStore_key() {
		return store_key;
	}
	public void setStore_key(int store_key) {
		this.store_key = store_key;
	}
	public int getMark_key() {
		return mark_key;
	}
	public void setMark_key(int mark_key) {
		this.mark_key = mark_key;
	}
	public String getMark_id() {
		return mark_id;
	}
	public void setMark_id(String mark_id) {
		this.mark_id = mark_id;
	}
	public String getMark_wdate() {
		return mark_wdate;
	}
	public void setMark_wdate(String mark_wdate) {
		this.mark_wdate = mark_wdate;
	}
	
	
	
}
