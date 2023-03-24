package com.ezen.jhc.web.user.service.home;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.ezen.jhc.web.user.dto.prod.MainCtgrDTO;
import com.ezen.jhc.web.user.mapper.home.HomeMapper;

@Service
public class HomeServiceImpl implements HomeService {

	@Autowired
	HomeMapper homeMapper;
	
	@Override
	public void getMainCtgrs(Model model) {
		List<MainCtgrDTO> list = homeMapper.getMainCtgrs();
		
		model.addAttribute("mainCtgrs", list);
	}

}
