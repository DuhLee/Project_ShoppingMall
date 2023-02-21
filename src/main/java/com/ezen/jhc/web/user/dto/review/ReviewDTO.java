package com.ezen.jhc.web.user.dto.review;

import java.util.Date;

import com.ezen.jhc.web.user.dto.member.MemberDTO;
import com.ezen.jhc.web.user.dto.prod.ProdDTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class ReviewDTO {
	
	Integer	review_num;
	Integer	p_num;
	Integer	mem_num;
	String	review_content;
	String	review_image_path;
	Integer	review_star;
	Date	review_regdate;
	
}
