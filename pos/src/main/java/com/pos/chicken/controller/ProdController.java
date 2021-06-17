package com.pos.chicken.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.MissingServletRequestParameterException;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.pos.chicken.repository.ProdServiceRepository;

@Controller
@RequestMapping(path= {"/test"})
public class ProdController {
	@Value("${web.upload-path}")
    private  String path1;

	@Autowired
	private ProdServiceRepository prodService;
	
	
	@PostMapping(path="/pages/prod.controller111")
	@ResponseBody
	public ResponseEntity<?> insert(
//			@RequestParam("Insert") String Insert,
			@RequestParam(value="prodID") Integer prodID,
			@RequestParam("prodName") String prodName,
			@RequestParam("prodCategory") String prodCategory,
			@RequestParam("prodCount") Integer prodCount,
			@RequestParam("prodPrice") Integer prodPrice,
			@RequestParam("prodUnit") String prodUnit,
			@RequestParam("prodImg") MultipartFile  prodImg,
			Model model
			)  
	{
//		if(Insert!=null && Insert.equals("Insert")) {
		String uploadedFileName = prodImg.getOriginalFilename();
		if (StringUtils.isEmpty(uploadedFileName)) {
            return new ResponseEntity("請選擇檔案!", HttpStatus.OK);
        }
			try {
				if(prodID==null) {
					return new ResponseEntity("請填寫產品編號!", HttpStatus.BAD_REQUEST);
				}
				prodService.insert(prodID, prodName, prodUnit, prodCategory, prodPrice, prodCount, prodImg);
				saveUploadedFiles(prodImg);
				model.addAttribute("msg", "Success Insert");
				System.out.println("ok");
				
				
			}
			
			catch(Exception e) {
				System.out.println(e);
				return new ResponseEntity("檔案太大無法上傳!",HttpStatus.BAD_REQUEST);
//				model.addAttribute("error", "Failed Insert");
//				return "/pages/menutest";
			}
			return  ResponseEntity.ok("成功上傳 - "+ uploadedFileName);
	                
		
//	}else {System.out.println("i dont know");}
//		return "/pages/menutest";
}
//	@RequestMapping(value="/pages/prod.controller111",method = RequestMethod.POST)
//		public void test() {
//		System.out.println("HELLO");
//	}
	private void saveUploadedFiles(MultipartFile files) throws IOException {

       

            byte[] bytes = files.getBytes();
            Path path = Paths.get(path1 + files.getOriginalFilename());
            Files.write(path, bytes);

        }

    
	
}

