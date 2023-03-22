package com.ezen.jhc.web.user.controller.prod;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.ezen.jhc.web.user.dto.member.MemberDTO;
import com.ezen.jhc.web.user.dto.prod.ProdColorDTO;
import com.ezen.jhc.web.user.dto.prod.ProdDTO;
import com.ezen.jhc.web.user.dto.prod.ProdSizeDTO;
import com.ezen.jhc.web.user.service.prod.ProductServiceImpl;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
public class ProdDetailController {

	@Autowired
	ProductServiceImpl prodService;
	
	@GetMapping("/prodDetail")
	public String prodDetail(Model model, Integer p_num, HttpSession session) {
		Map<String, ProdColorDTO> colors = prodService.getColors(p_num);
		List<ProdSizeDTO> sizes = prodService.getSizes(p_num);
		ProdColorDTO color = prodService.getInitialColor(p_num);
		ProdDTO prod = prodService.getProd(p_num);
		
		model.addAttribute("colors", colors);
		model.addAttribute("color", color);
		model.addAttribute("sizes", sizes);
		model.addAttribute("prod", prod);
		
		log.info("pd controller 도착");
		log.info(session.getAttribute("member"));
		
		return "user/prod/product_details";
	}
	
	
}
