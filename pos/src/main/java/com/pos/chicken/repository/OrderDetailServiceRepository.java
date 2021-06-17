package com.pos.chicken.repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pos.chicken.domain.OrderBean;
import com.pos.chicken.domain.OrderDetailBean;

@Service
@Transactional(value="transactionManager")
public class OrderDetailServiceRepository {
	
	@Autowired
	private OrderDetailRepository ordertaildao;
	
	public List<OrderDetailBean> oderdetailSelect(OrderDetailBean bean) {
		
		List<OrderDetailBean> result = null;
		if(bean!=null && bean.getOrderId()!=null) {
			Optional<OrderDetailBean> optional = ordertaildao.findById(bean.getOrderId());
			if(!optional.isEmpty()) {
				OrderDetailBean temp = optional.get();
				result = new ArrayList<OrderDetailBean>();
				result.add(temp);
				
				
				
				
			}
		}else {
			result = ordertaildao.findAll();
		}
		return result;
	}
	public OrderDetailBean oderdetailInsert(OrderDetailBean bean) {
		OrderDetailBean result = null;
		if(bean !=null && bean.getOrderId()!=null) {
			if(!ordertaildao.existsById(bean.getOrderId())) {
				result = ordertaildao.save(bean);
			}
		}
		return result;
		
	}
	
	public OrderDetailBean oderdetailUpdate(OrderDetailBean bean) {
		OrderDetailBean result = null;
		if(bean!= null & bean.getOrderId()!=null) {
			if(ordertaildao.existsById(bean.getOrderId())) {
				result  = ordertaildao.save(bean);
			}
		}
		return result;
	}
	
	

}
