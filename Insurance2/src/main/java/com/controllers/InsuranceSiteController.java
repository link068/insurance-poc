package com.controllers;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class InsuranceSiteController {
	
	@RequestMapping(value="/")
	public String sayHello(Model model){
		
		return "index";
	}
}
