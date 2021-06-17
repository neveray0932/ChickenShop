package com.pos.chicken.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PublicController {
	
	@RequestMapping(
			path = {"/", "/index"}
			
			)
	public String index() {
		return "/index";
	}
	//前台
	@RequestMapping(
			path = {"/pages/home.page"}
	)
	
	public String home() {
		return "/font-pages/home";
	}
	
	@RequestMapping(
			path = {"/pages/menu.page"}
	)
	
	public String menu() {
		return "/font-pages/menu/menu";
	}
	
	@RequestMapping(
			path = {"/pages/shopcar.page"}
	)
	
	public String shop() {
		return "/font-pages/shop/shopcar";
	}
	@RequestMapping(
			path = {"/pages/order.page"}
	)
	
	public String order() {
		return "/font-pages/shop/order";
	}
	//後台
	
	@RequestMapping(
			path = {"/pages/emp.page"}
	)
	
	public String emp() {
		return "/back-pages/emp/emp";
	}
	
	
	@RequestMapping(
			path = {"/pages/menutestAjaxpage"}
	)
	
	public String MenuTestAjax() {
		return "/back-pages/prod/menutest";
	}
	@RequestMapping(
			path = {"/pages/menutestJava.page"}
	)
	
	public String MenuTestJava() {
		return "/back-pages/prod/menutest1";
	}
}

