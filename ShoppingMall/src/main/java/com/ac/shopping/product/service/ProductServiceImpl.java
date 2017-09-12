package com.ac.shopping.product.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ac.shopping.product.dao.ProductDAOImpl;

@Service
public class ProductServiceImpl implements ProductService{

	@Inject
	ProductDAOImpl productDao;
	
}
