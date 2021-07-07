package com.pos.chicken.controller;


import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pos.chicken.domain.EmpBean;
import com.pos.chicken.repository.EmpRepository;
import com.pos.chicken.repository.EmpServiceRepository;

@Controller
public class LoginController {
	
	@Autowired
	private EmpServiceRepository empServiceRepository;
	
	@Autowired EmpRepository empdao;
	
	@PostMapping(path = {"/back-pages/login.controller"})
	public String method(String empId,  //前端給我的empId
			String password,			//前端給我的password
			Model model,
			HttpSession session) {		
		//接收資料
		//驗證資料
//				Map<String, String> errors = new HashMap<>();
//				model.addAttribute("errors", errors);
//				if(empId==null || empId.length()==0) {
//					System.out.println("empId==null");
//					errors.put("empId","username11");
//				}
//				if(password==null || password.length()==0) {
//					System.out.println("password==null");
//					errors.put("password","empPassword11");
//				}
//				if(errors!=null && !errors.isEmpty()) {
//					return "/back-pages/login";
//				}
				
				
		//呼叫model		
//				EmpBean bean = empServiceRepository.login(empId, password);
				

				//呼叫model
				EmpBean bean = empServiceRepository.login(empId, password);
				
				if(bean==null) {
					System.out.println("login failed");
					return "/back-pages/login";
					
				}else {
					
					session.setAttribute("emp", bean);
					return "/back-pages/bakeIndex";
				}
				
	}
	
}
