package com.cufflink.common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainPage {
	
	@RequestMapping("/")
	public String mainpage() {
		return "clients/mainpage";
	}
}
