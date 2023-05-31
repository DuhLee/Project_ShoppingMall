package com.ezen.jhc.web.admin.controller.order;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.ezen.jhc.web.admin.dto.order.OrderDTO;
import com.ezen.jhc.web.admin.dto.order.OrderDetailDTO;
import com.ezen.jhc.web.admin.service.order.AdminOrderService;

@Controller
public class AdminOrderViewController {

	@Autowired
	AdminOrderService orderService;
	
	@Autowired(required = false)
	OrderDTO orderDTO;
	
	@Autowired(required = false)
	List<OrderDetailDTO> orderDetails;
	
	@GetMapping("admin/order/detail")
	public String getOrderDetail(Model model, Integer ord_num) {
		
		orderDTO = orderService.getOrderOrd_num(ord_num);
		
		orderDetails = orderService.getOrderDetailList(ord_num);
		System.out.println(orderDTO);
		model.addAttribute("order", orderDTO);
		model.addAttribute("orderDetails", orderDetails);
		
		return "admin/order/admin_order_detail";
		
	}
}
