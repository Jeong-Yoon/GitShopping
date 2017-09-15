package com.ac.shopping.product.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.ac.shopping.member.dto.MemberDTO;
import com.ac.shopping.product.dao.ProductDAO;
import com.ac.shopping.product.dao.ProductDAOImpl;
import com.ac.shopping.product.dto.Outer_OnepieceDTO;
import com.ac.shopping.product.dto.ShoesDTO;
import com.ac.shopping.product.dto.TBADTO;

@Service
public class ProductServiceImpl implements ProductService {

	@Inject
	ProductDAO productDao;

	@Override
	public List<ShoesDTO> listShoes() {
		return productDao.listShoes();
	}
	
	@Override
	public List<TBADTO> listTba() {
		return productDao.listTba();
	}

	@Override
	public List<TBADTO> topListProduct(int first_value,int second_value,int start, int end, String var) {
		int idf = 1;
		if(var.equals("tshirt")) {
			idf = 2;
		} else if(var.equals("mtmh")) {
			idf = 3;
		} else if(var.equals("blouse")) {
			idf = 4;
		} else if(var.equals("knit")) {
			idf = 5;
		}
		
		return productDao.topListProduct(first_value,second_value,start,end,idf);
	}

	@Override
	public List<TBADTO> bottomListProduct(int first_value, int second_value, int start, int end,String var) {
		int idf = 1;
		if(var.equals("spants")) {
			idf = 2;
		} else if(var.equals("lpants")) {
			idf = 3;
		} else if(var.equals("training")) {
			idf = 4;
		}
				
		return productDao.bottomListProduct(first_value, second_value, start, end,idf);
	}

	@Override
	public List<TBADTO> accListProduct(String var) {
		int idf = 1;
		if(var.equals("earings")) {
			idf = 2;
		} else if(var.equals("necklaces")) {
			idf = 3;
		} else if(var.equals("bracelets")) {
			idf = 4;
		} else if(var.equals("socks")) {
			idf = 5;
		} else if(var.equals("belts")) {
			idf = 6;
		}
		return productDao.accListProduct(idf);
	}

	@Override
	public List<Outer_OnepieceDTO> onepieceListProduct() {
		return productDao.onepieceListProduct();
	}
	@Override
	public HashMap onepieceDetail(String pro_no) {
		return productDao.onepieceDetail(pro_no);
	}

	@Override
	public List<Outer_OnepieceDTO> outerListProduct() {
		return productDao.outerListProduct();
	}
	@Override
	public HashMap outerDetail(String pro_no) {
		return productDao.outerDetail(pro_no);
	}

	@Override
	public int all_count_tba(int first_value,int second_value, String var) {
		
		int idf = 1;
		if(var.equals("tshirt")) {
			idf = 2;
		} else if(var.equals("mtmh")) {
			idf = 3;
		} else if(var.equals("blouse")) {
			idf = 4;
		} else if(var.equals("knit")) {
			idf = 5;
		}
		
		return productDao.all_count_tba(first_value,second_value, idf);
	}
	
	@Override
	public int all_count_bottom(int first_value,int second_value, String var) {
		
		int idf = 1;
		if(var.equals("spants")) {
			idf = 2;
		} else if(var.equals("lpants")) {
			idf = 3;
		} else if(var.equals("training")) {
			idf = 4;
		}
		
		return productDao.all_count_bottom(first_value,second_value, idf);
	}	

	@Override
	public HashMap detailshoes(String pro_no) {
		return productDao.detailshoes(pro_no);
	}

	@Override
	public HashMap topDetail(String pro_no) {
		return productDao.topDetail(pro_no);
	}

	@Override
	public HashMap bottomDetail(String pro_no) {
		return productDao.bottomDetail(pro_no);
	}

	@Override
	public HashMap accDetail(String pro_no) {
		return productDao.accDetail(pro_no);
	}
	
	@Override
	public void addCart(String pro_no, String m_id) {
		productDao.addCart(pro_no, m_id);
	}
	
	@Override
	public boolean addCart_chk(String pro_no, String m_id) {
		return productDao.addCart_chk(pro_no, m_id);
	}
	
	
}
