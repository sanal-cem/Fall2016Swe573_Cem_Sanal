package com.bmi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bmi.model.FoodItem;
import com.bmi.service.FoodService;
/**
 * Created by Cem Þanal.
 */

@Controller
public class FoodController {
	
	/**
	 * @uml.property  name="foodService"
	 * @uml.associationEnd  
	 */
	@Autowired
	public FoodService foodService;
	
	public void setAppService(FoodService foodService) {
		this.foodService = foodService;
	}
	
	@RequestMapping("/addFood")
	public String addFoodPage(Model model, FoodItem food) {
		model.addAttribute("addFood", food);
		return "addFood";
	}
	
	@RequestMapping("/newFood")
	public String addFood(Model model, FoodItem food) {
		model.addAttribute("addFood", food);
		return foodService.addFood(food);
	}
	
    @RequestMapping(value = "/showFood")
	public String showFood(Model model, FoodItem food) {
    	model.addAttribute("showFood", food);
    	return foodService.showFood(food);
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
