package bmi.net.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import bmi.net.domain.FoodItem;
import bmi.net.service.AppService;

@Controller
public class FoodController {
	
	@Autowired
	public AppService appService;
	
	public void setAppService(AppService appService) {
		this.appService = appService;
	}
	
	@RequestMapping("/addFood")
	public String addFood(Model model, FoodItem food) {
		model.addAttribute("addFood", food);
		return "addFood";
	}
	
	@RequestMapping("/newFood")
	public String loginForm(Model model, FoodItem food) {
		model.addAttribute("addFood", food);
		return appService.addFood(food);
	}
	
	@RequestMapping("/newFoodSuccess")
	public String foodSuccessForm(Model model, FoodItem food) {
		model.addAttribute("food", food);
		return "newFoodSuccess";
	}

	@RequestMapping("/newFoodFailed")
	public String foodFailForm(Model model,
			@ModelAttribute("food") FoodItem food) {
		return "newFoodFailed";
	}
}
