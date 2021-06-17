package com.pos.chicken.service;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;


import com.pos.chicken.domain.OrderBean;
import com.pos.chicken.domain.OrderDetailBean;
import com.pos.chicken.domain.ProdBean;
import com.pos.chicken.repository.OrderDetailServiceRepository;

@SpringBootTest
public class OrderDetailServiceTest {
	@Autowired
	private OrderDetailServiceRepository odService;
	
	
	//@Test
	public void insert() {
		OrderDetailBean bean = new OrderDetailBean();
		ProdBean prodbean = new ProdBean();
		prodbean.setProdID(4);
		prodbean.setProdPrice(80);
		OrderBean orderbean = new OrderBean();
		orderbean.setOrderId(1);
		
		bean.setOrderId(orderbean.getOrderId());
		bean.setOrderCount(20);
		bean.setOrderUnitsprice(prodbean.getProdPrice());
		bean.setOrderPrice(bean.getOrderCount()*bean.getOrderUnitsprice());
		
		bean.setProdfk(prodbean);
		odService.oderdetailInsert(bean);
		
		
		
		
		
		
		
	}
	
	
	@Test
	public void select(){
		System.out.println(odService.oderdetailSelect(null));
	}
	
	

}
