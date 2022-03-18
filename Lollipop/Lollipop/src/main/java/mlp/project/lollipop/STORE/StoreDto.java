package mlp.project.lollipop.STORE;

import mlp.project.lollipop.common.BaseDto;

public class StoreDto extends BaseDto{
	
	private int store_key =0;
	private String store_name ="";
	private String store_bnumber = "";//�궗�뾽�옄 �벑濡앸쾲�샇
	private String store_number ="";//留ㅼ옣 踰덊샇
	private String store_address ="";
	private String store_info ="";
	private String store_category ="0";
	private String store_image1;
	private String store_image2;
	private String store_image3;
	private String store_wdate ="";
	private String store_active ="";
	private String store_mark ="";
	
	private String user_id="";
	
	
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getStore_category() {
		return store_category;
	}
	public void setStore_category(String store_category) {
		this.store_category = store_category;
	}
	public int getStore_key() {
		return store_key;
	}
	public void setStore_key(int store_key) {
		this.store_key = store_key;
	}
	public String getStore_name() {
		return store_name;
	}
	public void setStore_name(String store_name) {
		this.store_name = store_name;
	}
	public String getStore_bnumber() {
		return store_bnumber;
	}
	public void setStore_bnumber(String store_bnumber) {
		this.store_bnumber = store_bnumber;
	}
	public String getStore_number() {
		return store_number;
	}
	public void setStore_number(String store_number) {
		this.store_number = store_number;
	}
	public String getStore_address() {
		return store_address;
	}
	public void setStore_address(String store_address) {
		this.store_address = store_address;
	}
	public String getStore_info() {
		return store_info;
	}
	public void setStore_info(String store_info) {
		this.store_info = store_info;
	}
	public String getStore_image1() {
		return store_image1;
	}
	public void setStore_image1(String store_image1) {
		this.store_image1 = store_image1;
	}
	public String getStore_image2() {
		return store_image2;
	}
	public void setStore_image2(String store_image2) {
		this.store_image2 = store_image2;
	}
	public String getStore_image3() {
		return store_image3;
	}
	public void setStore_image3(String store_image3) {
		this.store_image3 = store_image3;
	}
	public String getStore_wdate() {
		return store_wdate;
	}
	public void setStore_wdate(String store_wdate) {
		this.store_wdate = store_wdate;
	}
	public String getStore_active() {
		return store_active;
	}
	public void setStore_active(String store_active) {
		this.store_active = store_active;
	}
	public String getStore_mark() {
		return store_mark;
	}
	public void setStore_mark(String store_mark) {
		this.store_mark = store_mark;
	}
	@Override
	public String toString() {
		return "StoreDto [store_key=" + store_key + ", store_name=" + store_name + ", store_bnumber=" + store_bnumber
				+ ", store_number=" + store_number + ", store_address=" + store_address + ", store_info=" + store_info
				+ ", store_category=" + store_category + ", store_image1=" + store_image1 + ", store_image2="
				+ store_image2 + ", store_image3=" + store_image3 + ", store_wdate=" + store_wdate + ", store_active=" + store_active + ", store_mark=" + store_mark + "]";
	}
	
}
