package com.insurance.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/")
public class InsuranceSiteController {

	@RequestMapping(value="/index")
	public String sayHello(Model model){
		return "index";
	}

	@RequestMapping(value="/customer")
	public String sayHello3(Model model){
		return "customer";
	}

	@RequestMapping(value="/manager")
	public String sayHello4(Model model){
		return "manager";
	}

	@RequestMapping(value="/third")
	public String sayHello5(Model model){
		return "third";
	}
	@RequestMapping(value="/register")
	public String sayHello6(Model model){
		return "registration";
	}
	@RequestMapping(value="/login")
	public String sayHello7(Model model){
		return "login";
	}
	@RequestMapping(value="/thirdManager")
	public String sayHello8(Model model){
		return "thirdManager";
	}

}
