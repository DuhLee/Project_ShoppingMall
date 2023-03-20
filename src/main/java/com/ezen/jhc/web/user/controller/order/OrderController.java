package com.ezen.jhc.web.user.controller.order;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezen.jhc.web.user.dto.cart.CartDTO;
import com.ezen.jhc.web.user.dto.member.MemberDTO;
import com.ezen.jhc.web.user.service.cart.CartServiceImpl;
import com.ezen.jhc.web.user.service.order.OrderServiceImpl;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
@RequestMapping("/order")
public class OrderController {

	@Autowired
	OrderServiceImpl orderService;
	
	@Autowired
	CartServiceImpl cartService;
	
	@PostMapping("/directPurchase")
	public String directPurchase(HttpSession session, HttpServletRequest req, HttpServletResponse resp) {		
		// 임시 데이터
		session.setAttribute("member", new MemberDTO(1, "dslkjf@naver.com", "2132", "1985/02/21", "두리두하", "01050505050", null, new Date(810501231065145L), 7832));
		
		cartService.getCartDto(session, req, resp);
		
		return "user/order/order";
	}
	
	@PostMapping("/fromCart")
	public String fromCart(HttpSession session, Model model) {
		// 임시 데이터
		session.setAttribute("member", new MemberDTO(1, "dslkjf@naver.com", "2132", "1985/02/21", "두리두하", "01050505050", null, new Date(810501231065145L), 50000));
				
		int mem_num = ((MemberDTO)session.getAttribute("member")).getMem_num();
		List<CartDTO> carts = cartService.getCarts(mem_num, session, model);
		
		int totalPrice = 0;
		int totalQuantity = 0;
		
		for (CartDTO cart : carts) {
			totalPrice += cart.getCart_amount();
			totalQuantity += cart.getCart_quantity();
		}
		
		model.addAttribute("carts", carts);
		model.addAttribute("totalPrice", totalPrice);
		model.addAttribute("totalQuantity", totalQuantity);
		
		return "user/order/order";
	}
	
	@PostMapping("/completed")
	public String orderCompleted(HttpSession session, HttpServletRequest req) {
		orderService.updateAddr(session, req);
		
		DateTimeFormatter format = DateTimeFormatter.ofPattern("yyyyMMdd");
		String now = LocalDate.now().format(format);
		req.setAttribute("now", now);
		
		return "user/order/orderCompleted";
	}

}
