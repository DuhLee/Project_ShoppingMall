package com.ezen.jhc.web.user.mapper.home;

import java.util.List;

import com.ezen.jhc.web.user.dto.prod.MainCtgrDTO;
import com.ezen.jhc.web.user.dto.review.ReviewDTO;

public interface HomeMapper {
	

	List<ReviewDTO> get_review_list();
	
	List<ReviewDTO> get_review(Integer review_num);
	
	List<ReviewDTO> get_all_reviews();
	
	List<MainCtgrDTO> getMainCtgrs();
}
