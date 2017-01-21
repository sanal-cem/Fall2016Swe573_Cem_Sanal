package com.bmi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bmi.domain.FoodList;
import com.bmi.model.FoodItem;
import com.bmi.domain.FNutMeasureList;
import com.bmi.domain.FNutrList;
import com.bmi.service.USDAFoodService;
/**
 * Created by Cem Þanal.
 */

@Controller
public class FoodSearchController {

	@Autowired
	public USDAFoodService USDAfoodService;
	
	public void setAppService(USDAFoodService USDAfoodService) {
		this.USDAfoodService = USDAfoodService;
	}

    @RequestMapping(value = "/foodSearch" , method = RequestMethod.GET)
    public String searchFood()
    {
        return "foodSearch";
    }
    
    @RequestMapping(value = "/foodList", method = RequestMethod.GET)
	public String foodList(
			@RequestParam(value = "keyword") String keyword,
			Model model,
			FoodList foodList,
			FNutrList fNutrList,
			FNutMeasureList fnutmsrList) {
		model.addAttribute("foodList", foodList);
		model.addAttribute("fNutrList", fNutrList);
		model.addAttribute("fNutmsrList", fnutmsrList);
		USDAfoodService.USDAFoodFetching(foodList, fNutrList, fnutmsrList, keyword);
		return "foodList";
	}
	
	@RequestMapping(value = "/addFood", method = RequestMethod.GET)
	public String addFood(
			@RequestParam(value = "foodName") String foodName,
			@RequestParam(value = "amount") String amount,
			Model model) {
		// users' chosen foodItem
		model.addAttribute("foodName", foodName);
		return USDAfoodService.addFood(foodName, amount);
	}
	
	@RequestMapping("/newFoodSuccess")
	public String foodSuccessForm(Model model,
			FoodItem food) {
		model.addAttribute("food", food);
		return "newFoodSuccess";
	}

	@RequestMapping("/newFoodFailed")
	public String foodFailForm(Model model,
			FoodItem food) {
		model.addAttribute("food", food);
		return "newFoodFailed";
	}
}
