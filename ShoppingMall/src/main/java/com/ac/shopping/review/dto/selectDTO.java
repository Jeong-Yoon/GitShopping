package com.ac.shopping.review.dto;

public class selectDTO {
   
   String pro_name;
   String product_no;
   
   @Override
public String toString() {
	return "selectDTO [pro_name=" + pro_name + ", product_no=" + product_no + "]";
}
public String getPro_name() {
      return pro_name;
   }
   public void setPro_name(String pro_name) {
      this.pro_name = pro_name;
   }
   public String getProduct_no() {
      return product_no;
   }
   public void setProduct_no(String product_no) {
      this.product_no = product_no;
   }
   

}