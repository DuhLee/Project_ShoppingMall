package com.ezen.jhc.web.user.controller.order;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class OrderController {

	@GetMapping("/order")
	public String order() {
		return "user/order/order";
	}
	
}
