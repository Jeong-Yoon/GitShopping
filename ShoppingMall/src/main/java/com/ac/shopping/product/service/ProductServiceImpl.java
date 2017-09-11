package com.ac.shopping.product.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ac.shopping.product.dao.ProductDAOImpl;
import com.ac.shopping.product.dto.ShoesDTO;
import com.ac.shopping.product.dto.TBADTO;

@Service
public class ProductServiceImpl implements ProductService {

   @Inject
   ProductDAOImpl productDao;

   public List<ShoesDTO> listShoes() {
      System.out.println("----------------------------1");
      return productDao.listShoes();
   }

   @Override
   public List<TBADTO> topListProduct() {
      return productDao.topListProduct();
   }

}