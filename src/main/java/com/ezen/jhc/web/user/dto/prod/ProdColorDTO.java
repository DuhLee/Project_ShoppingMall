package com.ezen.jhc.web.user.dto.prod;

import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class ProdColorDTO {
	
	Integer	pc_num;
	String	pc_name;
	String	pc_code;
	String	pc_img_path;
	String  pc_origin_img_path;
	String  pc_lg_img_path;
	String  pc_md_img_path;
	Integer	p_num;

}
