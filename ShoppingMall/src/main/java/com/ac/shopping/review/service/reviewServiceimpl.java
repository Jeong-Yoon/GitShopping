package com.ac.shopping.review.service;



import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ac.shopping.qa.dao.qaDAOImpl;
import com.ac.shopping.review.dao.reviewDAOimpl;

@Service
public class reviewServiceimpl implements reviewService {

	@Inject
	reviewDAOimpl reviewDao;
	
	public List<String> selectbox(String first, String second) {
		
		int case_type = 0;
		
		if(second.equals("-선택-")){
			
			second = "1";
		}
		
		if((second.equals("T-shits/Jackets"))||(second.equals("shorts_pants"))||
				(second.equals("귀걸이"))||(second.equals("분류 없음"))){
			
			second = "2";
		}
		
		else if((second.equals("맨투맨/후드"))||(second.equals("long_pants"))||
				(second.equals("목걸이"))){
			
			second = "3";
		}
		
		else if((second.equals("니트"))||(second.equals("training"))||
				(second.equals("팔찌"))){
			
			second = "4";
		}
		
		else if((second.equals("블라우스"))||(second.equals("양말"))){
			
			second = "5";
		}
		
		else if(second.equals("벨트")){
			
			second = "6";
		}
		
		//전체
		if(first.equals("1")&&second.equals("1")){			
			case_type = 1;
		}
		
		// t shirts
		else if(first.equals("1")&&second.equals("2")){			
			case_type = 2;
		}
		
		//맨투맨 후드
		else if(first.equals("1")&&second.equals("3")){			
			case_type = 3;
		}
		
		//니트
		else if(first.equals("1")&&second.equals("4")){			
			case_type = 4;
		}
		
		//블라우스
		else if(first.equals("1")&&second.equals("1")){			
			case_type = 5;
		}		
		
		//bottom 전체
		else if(first.equals("2")&&second.equals("1")){			
			case_type = 6;
		}
		
		//short
		else if(first.equals("2")&&second.equals("2")){			
			case_type = 7;
		}
		//long
		else if(first.equals("2")&&second.equals("3")){			
			case_type = 8;
		}
		//traing
		else if(first.equals("2")&&second.equals("4")){			
			case_type = 9;
		}
		
		//acc 전체
		else if(first.equals("3")&&second.equals("1")){			
			case_type = 10;
		}
		//귀걸이
		else if(first.equals("3")&&second.equals("2")){			
			case_type = 11;
		}
		//목걸이
		else if(first.equals("3")&&second.equals("3")){			
			case_type = 12;
		}
		//팔찌
		else if(first.equals("3")&&second.equals("4")){			
			case_type = 13;
		}
		//양말
		else if(first.equals("3")&&second.equals("5")){			
			case_type = 14;
		}
		//벨트
		else if(first.equals("3")&&second.equals("6")){			
			case_type = 15;
		}		
		
		else if(first.equals("4")){			
			case_type = 16;
		}
		else if(first.equals("5")){			
			case_type = 17;
		}	
		else if(first.equals("6")){			
			case_type = 18;
		}		
		
		return reviewDao.selectbox(case_type);
	}

}
