package com.bmi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bmi.domain.FoodItem;
import com.bmi.service.AppService;
/**
 * Created by Cem Þanal.
 */

@Controller
public class FoodController {
	
	@Autowired
	public AppService appService;
	
	public void setAppService(AppService appService) {
		this.appService = appService;
	}
	
	@RequestMapping("/addFood")
	public String addFoodPage(Model model, FoodItem food) {
		model.addAttribute("addFood", food);
		return "addFood";
	}
	
	@RequestMapping("/newFood")
	public String addFood( Model model, FoodItem food) {
		model.addAttribute("addFood", food);
		return appService.addFood(food);
	}
	
    @RequestMapping(value = "/showFood")
	public String showFood(Model model, FoodItem food) {
    	model.addAttribute("showFood", food);
    	return appService.showFood(food);
	}
	
	@RequestMapping("/newFoodSuccess")
	public String foodSuccessForm(Model model, FoodItem food) {
		model.addAttribute("food", food);
		return "newFoodSuccess";
	}

	@RequestMapping("/newFoodFailed")
	public String foodFailForm(Model model, FoodItem food) {
		model.addAttribute("food", food);
		return "newFoodFailed";
	}
}
