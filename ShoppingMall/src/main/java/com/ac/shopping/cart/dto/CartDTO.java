package com.ac.shopping.cart.dto;

public class CartDTO {

	private String pro_name;
	private int pro_price;
	private String product_No;
	private String m_Id;
	private int basket_Quantity;
	private String pro_color;
	///////getter, setter////////////////
	
	
	
	public String getProduct_No() {
		return product_No;
	}
	public String getPro_color() {
		return pro_color;
	}
	public void setPro_color(String pro_color) {
		this.pro_color = pro_color;
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
	public void setProduct_No(String product_No) {
		this.product_No = product_No;
	}
	public String getM_Id() {
		return m_Id;
	}
	public void setM_Id(String m_Id) {
		this.m_Id = m_Id;
	}
	public int getBasket_Quantity() {
		return basket_Quantity;
	}
	public void setBasket_Quantity(int basket_Quantity) {
		this.basket_Quantity = basket_Quantity;
	}
	
	
	/////toString//////////////
	@Override
	public String toString() {
		return "CartDTO [product_No=" + product_No + ", m_Id=" + m_Id + ", basket_Quantity=" + basket_Quantity + "]";
	}
	
	
	
	
	
	
	
}
