package mlp.project.lollipop.MARK;

import mlp.project.lollipop.common.BaseDto;

public class MarkDto extends BaseDto{
	private int store_key;
	private int mark_key;
	private String mark_id;
	private String mark_wdate;
	
	public MarkDto() {
		// TODO Auto-generated constructor stub
	}

	public MarkDto(String mark_id, int store_key, int mark_key, String mark_wdate) {
		super();
		this.mark_id = mark_id;
		this.store_key = store_key;
		this.mark_key = mark_key;
		this.mark_wdate = mark_wdate;
	}

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
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + mark_key;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MarkDto other = (MarkDto) obj;
		if (mark_key != other.mark_key)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "MarkDto [mark_id=" + mark_id + ", store_key=" + store_key + ", mark_key=" + mark_key + ", mark_wdate=" + mark_wdate + "]";
	}
	
	

}