package com.ezen.jhc.web.user.dto.review;

import java.util.Date;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class ReviewDTO {
	Integer review_num;
	String review_content;
	String review_image_path;
	Integer review_star;
	Date review_regdate;
	Integer mem_num;
	String mem_name;

	Integer p_num;
	String p_name;
	String sm_img_path;

	
	String star;
	String user_name;
	
	public String getStar () {
		if (review_star == 0) {
			return "☆☆☆☆☆";
		} else if (review_star == 1) {
			return "★☆☆☆☆";
		} else if (review_star == 2) {
			return "★★☆☆☆";
		} else if (review_star == 3) {
			return "★★★☆☆";
		} else if (review_star == 4) {
			return "★★★★☆";
		} else if (review_star == 5) {
			return "★★★★★";
		}
	
		return "없음";
	}

	public String getUser_name() {
		String user_name = mem_name.replace(mem_name.charAt(1), '*');

		 if (mem_name.length() > 4) {
			user_name = user_name.replace(mem_name.charAt(2), '*');
		}
		return user_name;
	}
}
