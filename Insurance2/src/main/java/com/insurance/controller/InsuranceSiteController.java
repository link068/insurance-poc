package com.insurance.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/")
public class InsuranceSiteController {

	@RequestMapping(value="/index")
	public String showIndex(Model model){
		return "index";
	}

	@RequestMapping(value="/customer")
	public String showCustomer(Model model){
		return "customer";
	}

	@RequestMapping(value="/manager")
	public String showManager(Model model){
		return "manager";
	}

	@RequestMapping(value="/third")
	public String showThird(Model model){
		return "third";
	}
	@RequestMapping(value="/register")
	public String showRegistration(Model model){
		return "customerApplication";
	}
	@RequestMapping(value="/login")
	public String showLogin(Model model){
		return "login";
	}
	@RequestMapping(value="/thirdManager")
	public String showThirdManager(Model model){
		return "thirdManager";
	}
	@RequestMapping(value="/customerApplication")
	public String customerApplication(Model model){
		return "customerApplication";
	}

}
