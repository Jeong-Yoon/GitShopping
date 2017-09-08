package com.ac.shopping.product.dto;

public class ShoesDTO {

	//상품번호
	String product_no;
	//상품명
	String pro_name;
	//가격
	int pro_price;
	//사이즈
	String shoes_size;
	//이미지
	String pro_img_url;
	
	public String getProduct_no() {
		return product_no;
	}
	public void setProduct_no(String product_no) {
		this.product_no = product_no;
	}
	public String getPro_name() {
		return pro_name;
	}
	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}
	public int getPro_price() {
		return pro_price;
	}
	public void setPro_price(int pro_price) {
		this.pro_price = pro_price;
	}
	public String getShoes_size() {
		return shoes_size;
	}
	public void setShoes_size(String shoes_size) {
		this.shoes_size = shoes_size;
	}
	public String getPro_img_url() {
		return pro_img_url;
	}
	public void setPro_img_url(String pro_img_url) {
		this.pro_img_url = pro_img_url;
	}
	
	
}
