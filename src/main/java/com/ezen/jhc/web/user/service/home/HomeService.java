package com.ezen.jhc.web.user.service.home;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

public interface HomeService {
	
	public void getMainCtgrs(HttpSession session);
}
