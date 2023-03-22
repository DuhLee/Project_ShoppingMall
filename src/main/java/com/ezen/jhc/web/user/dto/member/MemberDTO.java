package com.ezen.jhc.web.user.dto.member;

import java.io.Serializable;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class MemberDTO implements Serializable {
	
	// 직렬화 - 클래스 정보가 변경되어도 SerialVersionUID가 달라지지 않게 명시한 설정
	private static final long serialVersionUID = 2429846791672541980L;
	
	// 테이블 : members
	Integer mem_num;
	String mem_email;
	String mem_pw;
	String mem_birth;
	String mem_name;
	String mem_phone;
	String mem_note;
	Date mem_regdate;
	Integer mem_point;
	
	// 회원 정보 페이지에서 -가 정규표현식에 걸려서 숫자만 있는 번호 getter 생성
	String phoneWithOnlyNum;
	
	public String getPhoneWithOnlyNum() {
		return mem_phone.replaceAll("-", "");
	}
}
