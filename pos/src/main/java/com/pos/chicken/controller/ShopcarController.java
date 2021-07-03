package com.pos.chicken.controller;

import java.util.Date;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pos.chicken.domain.EmpBean;
import com.pos.chicken.domain.OrderBean;
import com.pos.chicken.domain.OrderDetailBean;
import com.pos.chicken.domain.ProdBean;
import com.pos.chicken.repository.OrderDetailRepository;
import com.pos.chicken.repository.OrderDetailServiceRepository;
import com.pos.chicken.repository.OrderRepository;
import com.pos.chicken.repository.ProdRepository;
import com.pos.chicken.repository.ProdServiceRepository;

@Controller
@Transactional
public class ShopcarController {

	@Autowired
	private OrderRepository orderService;

	@Autowired
	private ProdServiceRepository prodService;
	
    @Autowired
    private JavaMailSender emailSender;
    
	@Autowired
	private ProdRepository prodDao;
	
	//orderDetailRepository
	@Autowired
	private OrderDetailRepository orderDdao;

	@Autowired
	private OrderDetailServiceRepository orderDetailServiceRepository;
	
	@RequestMapping(path = "/secure/shopcar.controller")
	public String shopcar(
			String orderInsert, // 從前端sumbit name="orderInsert"
			Integer[] prodID, // 前端ID
			String[] prodName,// 從前端產品名稱 name=prodName
			Integer[] prodCount, // 前端產品數量
			Model model,
			ProdBean prodBean,
			OrderDetailBean odBean,
			BindingResult bindingResult,
			OrderBean orderbean,
			String mailname
			) throws MessagingException {
		
//		System.out.println(mailname);
//		System.out.println("我是Name="+prodName);  
//		System.out.println("我是prodID="+prodID);  
//		System.out.println("我是prodCount="+prodCount);  
//		System.out.println("我是prodBean="+prodBean);  
//		System.out.println("我是odBean="+odBean);  
//		System.out.println("我是orderbean="+orderbean);  
		
		if (orderInsert != null && orderInsert.equals("Insert")) {
			int i=0;
			for(Integer prodInt : prodID) {
				 i++;
				prodBean.setProdID(prodInt); 
				prodBean.setProdCount(prodDao.getById(prodInt).getProdCount()-prodCount[i-1]);
				prodBean.setProdName(prodDao.getById(prodInt).getProdName()); 
				prodBean.setProdPrice(prodDao.getById(prodInt).getProdPrice());
				prodBean.setProdCategory(prodDao.getById(prodInt).getProdCategory());
				prodBean.setProdUnit(prodDao.getById(prodInt).getProdUnit());
				prodDao.save(prodBean);
				
			}
			//員工
			//			model.addAttribute("test3", prodBean.getProdName());
			//System.out.println("我是prodName="+prodBean.getProdName());
			System.out.println("我是test2="+prodBean.getProdPrice()); 
			EmpBean empbean = new EmpBean();
			empbean.setEmpID("Emp001");
			
			//訂單主表
//			orderbean.setOrderId(7);
			orderbean.setEmpfk(empbean);
			orderbean.setOrderDate(new Date());
			orderbean.setOrderMark("我是備註");
			
//			orderbean.setOrderdetails(null);
//			orderbean.setOrderId(null);
			orderService.save(orderbean);
//			System.out.println("print:"+orderbean);
			
			model.addAttribute("test", orderbean);
			int k=0;
			for(Integer prodInt : prodID) {
				k++;
				//訂單明細odBean
				odBean.setOrderId( orderbean.getOrderId() );	//1				1
				odBean.setOrderCount(prodCount[k-1]);  ;			//總數6			3
				odBean.setOrderUnitsprice( prodDao.getById(prodInt).getProdPrice() ); 	 //單價	
				odBean.setOrderPrice( prodCount[k-1]*prodDao.getById(prodInt).getProdPrice() ); //總價價
				odBean.setProdfk( prodDao.getById(prodInt) );						//2天使雞排		1惡魔雞排

//				orderDdao.save(odBean);
				
				orderDdao.addOrderToDetail(orderbean.getOrderId(),
						prodDao.getById(prodInt).getProdID(), prodCount[k-1], 
						prodCount[k-1]*prodDao.getById(prodInt).getProdPrice(),
						prodDao.getById(prodInt).getProdPrice());
				
				
			}
			
			//使用jpa sql語句方法
			Object[] aa = orderDdao.findByOrderAll(odBean.getOrderId()).toArray();
			model.addAttribute("test2", aa);
			
//			印出總金額
			Object totalprice =orderDetailServiceRepository.orderPrice(odBean.getOrderId());
			model.addAttribute("test4", totalprice);
			System.out.println("印出東西:"+orderDetailServiceRepository.orderPrice(odBean.getOrderId()));
//			印出總數量
			Object ordercoint =orderDetailServiceRepository.ordercoint(odBean.getOrderId());
			model.addAttribute("test5", ordercoint);
			System.out.println("印出東西:"+orderDetailServiceRepository.ordercoint(odBean.getOrderId()));
//			印出商品內容
//			System.out.println("印商品名稱:"+orderDetailServiceRepository.orderprod(odBean.getOrderId()));
			
			
//			Object list = orderDetailServiceRepository.orderprod(odBean.getOrderId()).toString();
			
			
			
			
			
			
			
//			for(Object obj :list) {
//				Object[] array = (Object[]) obj;
//				System.out.println("aa="+array[0]+":"+array[1]);;
//			}
			
//			List<OrderDetailBean> bb = orderDdao.findByOrderPrice(odBean.getOrderPrice());
//			System.out.println(bb);
//			model.addAttribute("test4", bb);
//			
//			System.out.println("AAA"+aa[0]);
//			for(Object pname : aa ) {
//				System.out.println("FFFF"+pname);
//			}

			sendSimpleMessage(prodName,mailname,orderbean);
			

		}

		return "/font-pages/shop/order";
	}


	public void sendSimpleMessage(String[] prodName,
  	      String to, OrderBean orderbean ) throws MessagingException {
		System.out.println(prodName);
		String Prodhql = "select p.prod_name from prod p, orderdetail o where p.Prod_ID = o.Prod_ID and o.order_id = 13";
  	        SimpleMailMessage message = new SimpleMailMessage(); 
  	
		MimeMessage mimeMessage = emailSender.createMimeMessage(); 
  		  MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage,"utf-8");
  		  
  		  messageHelper.setTo(to);
  		  messageHelper.setSubject("springboot透過 Gmail 去發信");

		messageHelper.setText("<html><body><table style=\"border-collapse: collapse;border: 1px solid black;\">\r\n"
  		  		+ "\r\n"
  		  		+ "    <tr style=\" border: 1px solid black;\">\r\n"
  		  		+ "        <th style=\" border: 1px solid black; background-color:pink; width: 200px; height: 100px;\">訂單號碼 </th>\r\n"
  		  		+ "        <th style=\" border: 1px solid black; background-color:pink; width: 200px; height: 100px;\">產品名稱 </th>\r\n"
  		  		+ "        <th style=\" border: 1px solid black; background-color:pink; width: 200px; height: 100px;\">訂單總數量 </th>\r\n"
  		  		+ "        <th style=\" border: 1px solid black; background-color:pink; width: 200px; height: 100px;\">訂單總金額 </th>\r\n"
  		  		+ "    </tr>\r\n"
  		  		+ "\r\n"
  		  		+ "    <tr>\r\n"
  		  		+ "        <td style=\' border: 1px solid black; height: 75px;\'>"+orderbean.getOrderId()+"</td>\r\n"
  		  		+ "        <td style=\" border: 1px solid black; height: 75px;\">"+"天使雞排"+" </td>\r\n"
  		  		+ "        <td style=\" border: 1px solid black; height: 75px;\">"+orderDetailServiceRepository.ordercoint(orderbean.getOrderId()).toString()+" </td>\r\n"
  		  		+ "        <td style=\" border: 1px solid black; height: 75px;\">"+orderDetailServiceRepository.orderPrice(orderbean.getOrderId()).toString()+" </td>\r\n"
  		  		+ "    </tr>\r\n"
  		  		+ "</table></body></html>", true);

  		  
  		emailSender.send(messageHelper.getMimeMessage());
  		
//  		System.out.println(orderDdao.findByOrderAll(orderbean.getOrderId()));
  		
  		
  		
  	    }

	
	@GetMapping("/oderdetail/{id}")
	public String findByPrimaryKey(@PathVariable("id") Integer id ,Model model) {
//		System.out.println("id = " + id);
		OrderDetailBean bean1 = new OrderDetailBean();
		bean1.setOrderId(id);
		List<OrderDetailBean> a = orderDdao.selectOrderToDetail(id);
//		System.out.println(a);
		model.addAttribute("select", a);
//		List<OrderDetailBean> result = orderDService.oderdetailSelect(bean1);
//		System.out.println("結果1"+result);
		
//		Optional<OrderDetailBean> result2 = orderDdao.findById(id);
//		System.out.println("結果2"+result2);
//		if(result != null && !result.isEmpty()) {
//			//success 200
//			//ResponseEntity<OrderDetailBean> entity = ResponseEntity.ok(result.get(0));
//			model.addAttribute("select",result);
//			return "/back-pages/shop/getOrderDetail";
//			}	
		
		return "/back-pages/shop/getOrderDetail";
	}
}

