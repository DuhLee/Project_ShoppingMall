package com.ezen.jhc.web.user.dto.review;

import java.util.Date;

import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class ReviewDTO {
	
	// reviews
	Integer	review_num;
	Integer p_num;
	Integer mem_num;
	// 테이블 조인 : members
	String	mem_name;
	String	review_content;
	String	review_image_path;
	Integer	review_star;
	Date	review_regdate;
	
}
