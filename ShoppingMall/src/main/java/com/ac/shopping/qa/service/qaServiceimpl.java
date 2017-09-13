package com.ac.shopping.qa.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ac.shopping.qa.dao.*;
import com.ac.shopping.qa.dto.qa_dto;



@Service
public class qaServiceimpl implements qaService{

	@Inject
	qaDAOImpl qaDao;
	
	//게시판 리스트
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
	
	// 게시글 쓰기
    @Override
    public void create(qa_dto vo) throws Exception {
        String title = vo.getBOARD_TITLE();
        String content = vo.getBOARD_CONTENT();
        String writer = vo.getBOARD_WRITER();
        String query_type = vo.getBOARD_QUERY_TYPE();
        
        // *태그문자 처리 (< ==> &lt; > ==> &gt;)
        // replace(A, B) A를 B로 변경
        title = title.replace("<", "&lt;");
        title = title.replace("<", "&gt;");
        writer = writer.replace("<", "&lt;");
        writer = writer.replace("<", "&gt;");
        // *공백문자 처리
        title = title.replace("  ",    "&nbsp;&nbsp;");
        writer = writer.replace("  ",    "&nbsp;&nbsp;");
        // *줄바꿈 문자처리
        content = content.replace("\n", "<br>");
        vo.setBOARD_TITLE(title);
        vo.setBOARD_CONTENT(content);
        vo.setBOARD_WRITER(writer);
        vo.setBOARD_QUERY_TYPE(query_type);
        qaDao.create(vo);
    }

    //게시글 수정
    @Override
	public void update(qa_dto vo) throws Exception {
		qaDao.update(vo);
	}
//    
  
    
    
    
    //게시글 읽기
    @Override
    public qa_dto read(int BOARD_INDEX) throws Exception {
        return qaDao.read(BOARD_INDEX);
    }
    
	
    //게시글 삭제
    @Override
    public void delete(int BOARD_INDEX) throws Exception {
    	qaDao.delete(BOARD_INDEX);
    }

 
}
