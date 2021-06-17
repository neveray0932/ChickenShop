package com.pos.chicken;


import java.util.Locale;


import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.LocaleResolver;

import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.i18n.CookieLocaleResolver;
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
	
	
	

}
