package com.ac.shopping.cart.dto;

public class Non_mem_CartDTO {
   
   private String pro_name;
   private int pro_price;
   private String product_No;
   
   private int basket_Quantity;
   private String pro_color;
   private String pro_size;
   
   @Override
   public String toString() {
      return "Non_mem_CartDTO [pro_name=" + pro_name + ", pro_price=" + pro_price + ", product_No=" + product_No
            + ", basket_Quantity=" + basket_Quantity + ", pro_color=" + pro_color + ", pro_size=" + pro_size
            + ", non_member_order_no=" + non_member_order_no + "]";
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

   public String getProduct_No() {
      return product_No;
   }

   public void setProduct_No(String product_No) {
      this.product_No = product_No;
   }

   public int getBasket_Quantity() {
      return basket_Quantity;
   }

   public void setBasket_Quantity(int basket_Quantity) {
      this.basket_Quantity = basket_Quantity;
   }

   public String getPro_color() {
      return pro_color;
   }

   public void setPro_color(String pro_color) {
      this.pro_color = pro_color;
   }

   public String getPro_size() {
      return pro_size;
   }

   public void setPro_size(String pro_size) {
      this.pro_size = pro_size;
   }

   public String getNon_member_order_no() {
      return non_member_order_no;
   }

   public void setNon_member_order_no(String non_member_order_no) {
      this.non_member_order_no = non_member_order_no;
   }

   private String non_member_order_no="1";
   
   

}