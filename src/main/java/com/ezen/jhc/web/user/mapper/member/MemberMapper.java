package com.ezen.jhc.web.user.mapper.member;

import java.util.List;

import com.ezen.jhc.web.user.dto.member.MemberDTO;

public interface MemberMapper {
	
	public List<MemberDTO> getAll();
	
	public MemberDTO get(String mem_email);
	
	public Integer join(MemberDTO memberDto);
	
	// param : 사용하는 포인트 (쿼리문 : SET mem_point = mem_point - #{mem_point})
	public void updateMemPoint(MemberDTO memberDto);
}
