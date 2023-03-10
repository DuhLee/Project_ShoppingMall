package com.ezen.jhc.web.user.mapper.member;

import com.ezen.jhc.web.user.dto.member.MemberAddressDTO;
import com.ezen.jhc.web.user.dto.member.MemberDTO;

public interface OrdererMapper {

	public MemberDTO getMemberByNum(int mem_num);
	
	public MemberAddressDTO getAddressByNum(int mem_num);
}
