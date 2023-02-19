package com.ezen.jhc.web.user.dto.member;

import java.util.Date;

import lombok.Data;
import lombok.NoArgsConstructor;


@NoArgsConstructor
@Data
public class MemberDTO {
	Integer mem_num;
	String mem_email;
	String mem_pw;
	String mem_nick;
	String mem_birth;
	String mem_name;
	String mem_phone;
	String mem_note;
	Date mem_regdate;
}