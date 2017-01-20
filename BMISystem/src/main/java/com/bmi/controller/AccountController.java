package com.bmi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bmi.model.User;
import com.bmi.service.AccountService;
/**
 * Created by Cem Þanal
 */

@Controller
public class AccountController {

	@Autowired
	public AccountService accountService;

	public void setAppService(AccountService accountService) {
		this.accountService = accountService;
	}
	
	@RequestMapping("/logreg")
	public String logRegForm(Model model,
			User user) {
		model.addAttribute("user", user);
		return "logreg";
	}
	
	@RequestMapping("/reg")
	public String loginForm(Model model,
			User user) {
		model.addAttribute("user", user);
		return accountService.reg(user);
	}
	
	@RequestMapping("/login")
	public String loginFunc(Model model,
			User user) {
		model.addAttribute("user", user);
		return accountService.login(user);
	}
	
	@RequestMapping("/loginSuccess")
	public String loginSuccessForm(Model model,
			@ModelAttribute("user") User user) {
		return "loginSuccess";
		}
	
	@RequestMapping("/loginFailed")
	public String loginFailForm() {
		return "loginFailed";
	}
	
	@RequestMapping("/regSuccess")
	public String regSuccessForm(Model model,
			@ModelAttribute("user") User user) {
		return "regSuccess";
	}
	
	@RequestMapping("/regFailed")
	public String regFailForm() {
		return "regFailed";
	}
	
	@RequestMapping("/settings")
	public String settingsForm(Model model,
			User user) {
		model.addAttribute("user", AccountService.user);
		return "settings";
	}
	
	@RequestMapping("/update")
	public String updateForm(Model model,
			User user) {
		model.addAttribute("user", user);
		return accountService.update(user);
	}
	
	@RequestMapping("/updSuccess")
	public String updSuccessForm(Model model,
			@ModelAttribute("user") User user) {
		return "updSuccess";
	}
	
	@RequestMapping("/updFailed")
	public String updFailForm(Model model,
			@ModelAttribute("user") User user) {
		return "updFailed";
	}
}