package com.ezen.jhc.web.user.dto.faq;

import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class FaqDTO {
	
	Integer faq_num;
	String faq_title;
	String faq_content;
	Character faq_ctgr;

}