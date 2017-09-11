package com.ac.shopping.qa.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ac.shopping.qa.dao.*;
import com.ac.shopping.qa.dto.qa_dto;;



@Service
public class qaServiceimpl implements qaService{

	@Inject
	qaDAOImpl qaDao;
	
	public int query_case(String search_query_option, String search_type, String search_keyword){
		
		int query_case=0;
		
		//전체를 보여주는 케이스
		if(((search_query_option.equals("all"))&&(search_type.equals(""))&&(search_keyword.equals("")))||
		((search_query_option.equals(""))&&(search_type.equals(""))&&(search_keyword.equals("")))){
			query_case=1;
		}
		//onchange 시에 보여주게 자를 박스
		else if((!search_query_option.equals("all"))&&(search_type.equals(""))&&(search_keyword.equals(""))){
			query_case=2;
		}
		
		// 입력값만 선택한 경우 나머지는 전체 검색
		else if((search_query_option.equals("all"))&&(search_type.equals("all"))&&(!search_keyword.equals(""))){
			query_case=3;
		}

		// 특수 케이스
		else if((search_query_option.equals("all"))&&(search_type.equals("BOARD_INDEX"))&&(!search_keyword.equals(""))){
			query_case=10;
		}
		
		// 타입은 전체이고 검색 타입 선택 후 검색한경우
		else if((search_query_option.equals("all"))&&(!search_type.equals("all"))&&(!search_keyword.equals(""))){
			query_case=4;
		}
				
		// 타입만 선택하는 케이스
		else if((!search_query_option.equals("all"))&&(search_type.equals("all"))){
			query_case=5;
		}
		
		// 타입만 선택하는 케이스(특수케이스)
		else if((!search_query_option.equals("all"))&&(search_type.equals("BOARD_INDEX"))){
			query_case=11;
		}	
		
		// 타입만 선택하는 케이스
		else if((!search_query_option.equals("all"))&&(!search_type.equals("all"))){
			query_case=6;
		}	
		return query_case;
	}
	

	public int all_count(String search_query_option, String search_type, String search_keyword) {		
		
		int query_case = query_case(search_query_option,search_type,search_keyword);		
		return qaDao.allcount(search_query_option, search_type, search_keyword, query_case);
	}

	public List<qa_dto> listAll(int start, int end, String search_query_option, String search_type, String search_keyword) {
		
		int query_case = query_case(search_query_option,search_type,search_keyword);	
		return qaDao.alllist(start, end, search_query_option, search_type, search_keyword, query_case);
	}
	
}
