package com.ac.shopping.product.dto;

public class WishListDTO {
	String product_no;
	String pro_name;
	int pro_price;
	
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
	@Override
	public String toString() {
		return "WishListDTO [product_no=" + product_no + ", pro_name=" + pro_name + ", pro_price=" + pro_price + "]";
	}
	
	
	
}
