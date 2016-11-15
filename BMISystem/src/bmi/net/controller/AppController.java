package bmi.net.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import bmi.net.model.User;
import bmi.net.domain.Food;
import bmi.net.service.AppService;

@Controller
public class AppController {

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
	public String logFailedForm(Model model, User logreg) {
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
	public String loginFailedForm(Model model,
			@ModelAttribute("logreg") User logreg) {
		return "loginFailed";
	}
	
	@RequestMapping("/regSuccess")
	public String regSuccessForm(Model model,
			@ModelAttribute("logreg") User logreg) {
		return "regSuccess";
	}
	
	@RequestMapping("/regFailed")
	public String regFailedForm(Model model,
			@ModelAttribute("logreg") User logreg) {
		return "regFailed";
	}
	
	@RequestMapping("/newFoodSuccess")
	public String foodForm(Model model, Food food) {
		model.addAttribute("food", food);
		return "newFoodSuccess";
	}
	
	@RequestMapping("/newFoodFailed")
	public String regSuccessForm(Model model,
			@ModelAttribute("food") Food food) {
		if(appService.addFood(food)) {
			return "newFoodSuccess";
		}
		return "newFoodFailed";
	}
	
	@RequestMapping("/newFoodFailed")
	public String regFailedForm(Model model,
			@ModelAttribute("food") Food food) {
		return "newFoodFailed";
	}
}