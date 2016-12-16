package bmi.net.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import bmi.net.model.User;
import bmi.net.service.AppService;

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
	
	//bir þekilde kaldýrýlmalý.
	@RequestMapping("/regSuccess/logreg")
	public String logRegSuccessForm(Model model, User logreg) {
		model.addAttribute("logreg", logreg);
		return "logreg";
	}
	
	//bir þekilde kaldýrýlmalý.
	@RequestMapping("/loginFailed/logreg")
	public String logFailForm(Model model, User logreg) {
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