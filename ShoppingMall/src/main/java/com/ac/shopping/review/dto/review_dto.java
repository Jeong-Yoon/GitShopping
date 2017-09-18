package com.ac.shopping.review.dto;

public class review_dto {
   
   String PRODUCT_NO;
   int BOARD_INDEX;
   int REVIEW_HIT;
   String REVIEW_TITLE;
   String REVIEW_CONTENT;
   String REVIEW_DATE;
   String PRO_NAME;
   String M_ID;
   String BOARD_WRITER;
   
   
   public String getBOARD_WRITER() {
      return BOARD_WRITER;
   }
   public void setBOARD_WRITER(String bOARD_WRITER) {
      BOARD_WRITER = bOARD_WRITER;
   }
   public String getPRODUCT_NO() {
      return PRODUCT_NO;
   }
   public void setPRODUCT_NO(String pRODUCT_NO) {
      PRODUCT_NO = pRODUCT_NO;
   }
   public int getBOARD_INDEX() {
      return BOARD_INDEX;
   }
   public void setBOARD_INDEX(int bOARD_INDEX) {
      BOARD_INDEX = bOARD_INDEX;
   }
   public int getREVIEW_HIT() {
      return REVIEW_HIT;
   }
   public void setREVIEW_HIT(int rEVIEW_HIT) {
      REVIEW_HIT = rEVIEW_HIT;
   }
   public String getREVIEW_TITLE() {
      return REVIEW_TITLE;
   }
   public void setREVIEW_TITLE(String rEVIEW_TITLE) {
      REVIEW_TITLE = rEVIEW_TITLE;
   }
   public String getREVIEW_CONTENT() {
      return REVIEW_CONTENT;
   }
   public void setREVIEW_CONTENT(String rEVIEW_CONTENT) {
      REVIEW_CONTENT = rEVIEW_CONTENT;
   }
   public String getREVIEW_DATE() {
      return REVIEW_DATE;
   }
   public void setREVIEW_DATE(String rEVIEW_DATE) {
      REVIEW_DATE = rEVIEW_DATE;
   }
   public String getPRO_NAME() {
      return PRO_NAME;
   }
   public void setPRO_NAME(String pRO_NAME) {
      PRO_NAME = pRO_NAME;
   }
   public String getM_ID() {
      return M_ID;
   }
   public void setM_ID(String m_ID) {
      M_ID = m_ID;
   }
   
   @Override
   public String toString() {
      return "review_dto [M_ID=" + M_ID + ", PRODUCT_NO=" + PRODUCT_NO + ", BOARD_INDEX=" + BOARD_INDEX
            + ", REVIEW_HIT=" + REVIEW_HIT + ", REVIEW_TITLE=" + REVIEW_TITLE + ", REVIEW_CONTENT=" + REVIEW_CONTENT
            + ", REVIEW_DATE=" + REVIEW_DATE + ", PRO_NAME=" + PRO_NAME + "]";
   }
   
   
   
   
   
}