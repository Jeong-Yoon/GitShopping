package com.ac.shopping.product.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;

import com.ac.shopping.product.service.ProductServiceImpl;

@Controller
public class ProductController {

	@Inject
	ProductServiceImpl productService;
}
