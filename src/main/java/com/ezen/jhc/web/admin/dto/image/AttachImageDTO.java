package com.ezen.jhc.web.admin.dto.image;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class AttachImageDTO {
	
	// 경로
	private String uploadPath;
	
	// UUID
	private String uuid;
	
	// 파일 이름
	private String fileName;
	

	private String origin_img_path;

	private String thumb_img_path;

	private String lg_img_path;

	private String md_img_path;

	private String sm_img_path;
	
	// 상품 id
	private Integer p_num;
	
	public void setOrigin_img_path(String uploadPath, String uuid, String fileName) throws UnsupportedEncodingException {
		String urlPath = uploadPath + "/" +uuid + "_" + fileName;
		this.origin_img_path =URLEncoder.encode(urlPath, "UTF-8"); 
	}
	
	public void setThumb_img_path(String uploadPath, String uuid, String fileName) throws UnsupportedEncodingException {
		String urlPath = uploadPath + "/s_" + uuid + "_" + fileName;
		this.thumb_img_path =URLEncoder.encode(urlPath, "UTF-8"); 
	}

	public void setLg_img_path(String uploadPath, String uuid, String fileName) throws UnsupportedEncodingException {
		String urlPath = uploadPath + "/lg_" + uuid + "_" + fileName;
		this.lg_img_path =URLEncoder.encode(urlPath, "UTF-8"); 
	}
	
	public void setMd_img_path(String uploadPath, String uuid, String fileName) throws UnsupportedEncodingException {
		String urlPath = uploadPath + "/md_" + uuid + "_" + fileName;
		this.md_img_path =URLEncoder.encode(urlPath, "UTF-8"); 
	}

	public void setSm_img_path(String uploadPath, String uuid, String fileName) throws UnsupportedEncodingException {
		String urlPath = uploadPath + "/sm_" + uuid + "_" + fileName;
		this.sm_img_path =URLEncoder.encode(urlPath, "UTF-8");
	}
	
	
}
