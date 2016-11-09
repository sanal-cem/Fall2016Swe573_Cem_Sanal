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
	
	@RequestMapping("/login")
	public String loginForm(Model model, User login) {
		model.addAttribute("login", login);
		return "user/login";
	}
	
	@RequestMapping("/loginSuccess")
	public String loginSuccessForm(Model model,
			@ModelAttribute("login") User login) {
		if(appService.login(login)) {
			return "user/loginSuccess";
		}
		return "user/loginFailed";
	}
	
	@RequestMapping("/loginFailed")
	public String loginFailedForm(Model model,
			@ModelAttribute("login") User login) {
		return "user/loginFailed";
	}

	@RequestMapping("/registration")
	public String registForm(Model model, User registration) {
		model.addAttribute("registration", registration);
		return "user/registration";
	}

	@RequestMapping("/registration/regSuccess")
	public String regSuccessForm(Model model,
			@ModelAttribute("registration") User registration) {
		if(appService.addUser(registration)) {
			return "user/regSuccess";
		}
		return "user/regFailed";
	}
	
	@RequestMapping("/registration/regFailed")
	public String regFailedForm(Model model,
			@ModelAttribute("login") User login) {
		return "user/regFailed";
	}
	
	@RequestMapping("/newfood")
	public String foodForm(Model model, Food food) {
		model.addAttribute("food", food);
		return "user/newFood";
	}
	
	@RequestMapping("/newfood/newFoodSuccess")
	public String regSuccessForm(Model model,
			@ModelAttribute("food") Food food) {
		if(appService.addFood(food)) {
			return "/newfood/newFoodSuccess";
		}
		return "/newfood/newFoodFailed";
	}
	
	@RequestMapping("/registration/regFailed")
	public String regFailedForm(Model model,
			@ModelAttribute("food") Food food) {
		return "/newfood/newFoodFailed";
	}
}