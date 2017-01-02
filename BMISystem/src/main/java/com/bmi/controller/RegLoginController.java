package com.bmi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bmi.model.User;
import com.bmi.service.AppService;
/**
 * Created by Cem Þanal
 */

@Controller
public class RegLoginController {

	@Autowired
	public AppService appService;

	public void setAppService(AppService appService) {
		this.appService = appService;
	}
	
	@RequestMapping("/logreg")
	public String logRegForm(Model model, User logreg) {
		model.addAttribute("logreg", logreg);
		return "logreg";
	}
	
	@RequestMapping("/reg")
	public String loginForm(Model model, User reg) {
		model.addAttribute("reg", reg);
		return appService.reg(reg);
	}
	
	@RequestMapping("/login")
	public String loginFunc(Model model, User login) {
		model.addAttribute("login", login);
		return appService.login(login);
	}
	
	@RequestMapping("/loginSuccess")
	public String loginSuccessForm(Model model,
			@ModelAttribute("logreg") User logreg) {
		return "loginSuccess";
		}
	
	@RequestMapping("/loginFailed")
	public String loginFailForm(Model model,
			@ModelAttribute("logreg") User logreg) {
		return "loginFailed";
	}
	
	@RequestMapping("/regSuccess")
	public String regSuccessForm(Model model,
			@ModelAttribute("logreg") User logreg) {
		return "regSuccess";
	}
	
	@RequestMapping("/regFailed")
	public String regFailForm(Model model,
			@ModelAttribute("logreg") User logreg) {
		return "regFailed";
	}

}