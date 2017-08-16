package com.myplace.yoonspace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ITController {
	
	@RequestMapping("itmain")
	public String to_itmain() {
		return "it/main";
	}
	
	@RequestMapping("githome")
	public String to_githome(){
		return "it/githome";
	}
}
