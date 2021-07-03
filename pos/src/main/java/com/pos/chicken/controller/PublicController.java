package com.pos.chicken.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PublicController {

	@RequestMapping(path = { "/", "/index" })
	public String index() {
		return "/index";
	}

	// 前台
	@RequestMapping(path = { "/pages/home.page" })
	public String home() {
		return "/font-pages/home";
	}

	@RequestMapping(path = { "/pages/menu1.page" })
	public String menu1() {
		return "/font-pages/menu/menu1";
	}
	
	@RequestMapping(path = { "/pages/menu.page" })
	public String menu() {
		return "/font-pages/menu/menu";
	}
	
	//購物車到訂單
	@RequestMapping(path = { "/shop/order" })
	public String ShopToOrder() {
		return "/font-pages/shop/order";
	}
	
	
	//pagesShopCar
	@RequestMapping(path = { "/pages/shopcar.page" })
	public String shop() {
		return "/font-pages/shop/shopcar";
	}

	@RequestMapping(path = { "/pages/order.page" })
	public String order() {
		return "/font-pages/shop/order";
	}
	
	//意見反饋
	@RequestMapping(path = { "/pages/feedback.page" })
	public String feedbackmessage() {
		return "/font-pages/feedback/message";
	}
	
	//	會員登入入口網
	@RequestMapping(path = { "/pages/login.page" })
	public String emplogin() {
		return "/back-pages/login";
	}
	
	// 後台
	@RequestMapping(path = { "/back-pages/includeBackpage.page" })
	public String includeBackpage() {
		return "/back-pages/includeBackpage";
	}
	
	
	@RequestMapping(path = { "/back-pages/bakeIndex.page" })
	public String bakeIndex() {
		return "/back-pages/bakeIndex";
	}
	
	
	//意見反饋
	@RequestMapping(path = { "/back-pages/feedback.page" })
	public String feedback() {
		return "/back-pages/feedback";
	}
	
	//員工
	@RequestMapping(path = { "/pages/emp.page" })
	public String emp() {
		return "/back-pages/emp/emp";
	}
	
	//訂單紀錄
	@RequestMapping(path = { "/shop/orderCheck.page" })
	public String orderCheck() {
		return "/back-pages/shop/orderCheck";
	}

//	@RequestMapping(path = { "/pages/menutestAjaxpage" })
//	public String MenuTestAjax() {
//		return "/back-pages/prod/menutest";
//	}

	//產品管理
	@RequestMapping(path = { "/pages/menutestJava.page" })
	public String MenuTestJava() {
		return "/back-pages/prod/menutest1";
	}
	
	//報表管理 /訂單銷售
	@RequestMapping(path = { "/report/reportSale.page" })
	public String reportSale() {
		return "/back-pages/report/reportSale";
	}
	
	//報表管理 /訂單銷售
	@RequestMapping(path = { "/report/reportSale2.page" })
	public String reportSale2() {
		return "/back-pages/report/reportSale2";
	}

	//報表管理 /訂單銷售
		@RequestMapping(path = { "/report/reportSale3.page" })
		public String reportSale3() {
			return "/back-pages/report/reportSale3";
		}
}
