package com.ac.shopping.product.dto;

public class TBADTO {
	
	//상품 번호
	String product_no;
	//상품 이름
	String pro_name;
	//상품 가격
	int pro_price;
	//사이즈
	String top_bottom_size;
	//이미지
	String pro_img_url;
	//카테고리
	String category;
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
	public String getTop_bottom_size() {
		return top_bottom_size;
	}
	public void setTop_bottom_size(String top_bottom_size) {
		this.top_bottom_size = top_bottom_size;
	}
	public String getPro_img_url() {
		return pro_img_url;
	}
	public void setPro_img_url(String pro_img_url) {
		this.pro_img_url = pro_img_url;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	@Override
	public String toString() {
		return "TBADTO [product_no=" + product_no + ", pro_name=" + pro_name + ", pro_price=" + pro_price
				+ ", top_bottom_size=" + top_bottom_size + ", pro_img_url=" + pro_img_url + ", category=" + category
				+ "]";
	}
}
