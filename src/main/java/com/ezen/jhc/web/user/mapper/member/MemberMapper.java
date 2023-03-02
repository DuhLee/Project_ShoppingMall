package com.ezen.jhc.web.user.mapper.member;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.ezen.jhc.web.user.dto.member.MemberDTO;

public interface MemberMapper {

	// 이메일 주소로 중복 확인
	@Select("select count(*) from members where mem_email = #{mem_email}")
	public Integer checkMem(String mem_email);
	
	// 가입
	@Insert("INSERT INTO members VALUES(mem_num_seq.nextval, #{mem_email}, #{mem_pw}, #{mem_birth}, #{mem_name}, #{mem_phone}, #{mem_note}, sysdate)")
	public void join(MemberDTO dto);
	
	// 로그인
	@Select("select count(*) from members where mem_email = #{mem_email} and mem_pw = #{mem_pw}")
	public Integer checkEmailPw(@Param("mem_email") String mem_email, @Param("mem_pw") String mem_pw);

	@Select("select * from members where mem_email = #{mem_email}")
	public String getMemName(String mem_email);
	
}
