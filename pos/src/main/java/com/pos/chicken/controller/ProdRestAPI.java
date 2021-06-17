package com.pos.chicken.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.pos.chicken.domain.ProdBean;
import com.pos.chicken.repository.ProdServiceRepository;

@RestController
@RequestMapping(path={"/public/api"})
public class ProdRestAPI {
	@Autowired
	private ProdServiceRepository prodService;
	
	
	@GetMapping("/prod")
//	
	public List<ProdBean> findAll() {
//		System.out.println();
		List<ProdBean> result= prodService.select(null);
		return (result);
	}
}
