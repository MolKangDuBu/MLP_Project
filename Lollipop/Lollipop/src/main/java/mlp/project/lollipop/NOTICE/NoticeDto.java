package mlp.project.lollipop.NOTICE;

import mlp.project.lollipop.common.BaseDto;

/*
 * 
 * 
NOTICE_KEY
NOTICE_ID
NOTICE_TITLE
NOTICE_CONTENTS
NOTICE_WDATE
 * 
 * */
public class NoticeDto extends BaseDto{
	private int notice_key;
	private String notice_id;
	private String notice_title;
	private String notice_contents;
	private String notice_wdate;
	
	
	public int getNotice_key() {
		return notice_key;
	}


	public void setNotice_key(int notice_key) {
		this.notice_key = notice_key;
	}


	public String getNotice_id() {
		return notice_id;
	}


	public void setNotice_id(String notice_id) {
		this.notice_id = notice_id;
	}


	public String getNotice_title() {
		return notice_title;
	}


	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}


	public String getNotice_contents() {
		return notice_contents;
	}


	public void setNotice_contents(String notice_contents) {
		this.notice_contents = notice_contents;
	}


	public String getNotice_wdate() {
		return notice_wdate;
	}


	public void setNotice_wdate(String notice_wdate) {
		this.notice_wdate = notice_wdate;
	}


	@Override
	public String toString() {
		return "NoticeDto [notice_key=" + notice_key + ", notice_id=" + notice_id + ", notice_title=" + notice_title
				+ ", notice_contents=" + notice_contents + ", notice_wdate=" + notice_wdate + "]";
	}

}
	
	
	

