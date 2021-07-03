package com.pos.chicken;


import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;

@Configuration
public class mvcconfig implements WebMvcConfigurer{
	
//	@Bean
//	public LocaleResolver localeResolver() {
//		CookieLocaleResolver localeResolver = new CookieLocaleResolver();
//		localeResolver.setDefaultLocale(Locale.TAIWAN);
//		localeResolver.setCookieName("langs");
//		return localeResolver;
//	}

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		LocaleChangeInterceptor interceptor = new LocaleChangeInterceptor();
		interceptor.setParamName("param1");
		registry.addInterceptor(interceptor);
	}
//	
//	@Override
//	public void addResourceHandlers(ResourceHandlerRegistry registry) {
//        //抓取圖片路徑 System.getProperty("user.dir")+
//		System.out.println(System.getProperty("user.dir"));
//        String path = System.getProperty("user.dir")+"/src/main/resources/static/img";
//        
//        //static/img/**  是對應resource工程目錄
//        //前面是靜態資料夾的路徑(static)					//後面是本地端的絕對路徑
////        registry.addResourceHandler("/img/**").addResourceLocations("file:"+path);
//        registry.addResourceHandler("static/img/**").addResourceLocations("file:C:\\JavaFramework\\eclipse-workspace\\pos-2.0\\src\\main\\resources\\static\\img");
////        System.out.println(registry.addResourceHandler("/static/img/**"));
//     }


}
