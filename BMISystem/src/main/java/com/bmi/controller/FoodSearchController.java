package com.bmi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bmi.domain.FoodList;
import com.bmi.model.FoodItem;
import com.bmi.domain.FMeasureList;
import com.bmi.domain.FNutrList;
import com.bmi.service.USDAFoodService;
/**
 * Created by Cem �anal.
 */

@Controller
public class FoodSearchController {

	@Autowired
	public USDAFoodService USDAfoodService;
	
	public void setAppService(USDAFoodService USDAfoodService) {
		this.USDAfoodService = USDAfoodService;
	}

    @RequestMapping(value = "/foodSearch" , method = RequestMethod.GET)
    public String foodSearch()
    {
        return "foodSearch";
    }
    
    @RequestMapping(value = "/foodList", method = RequestMethod.GET)
	public String foodList(
			@RequestParam(value = "keyword") String keyword,
			Model model,
			FoodList foodList,
			FNutrList fNutrList,
			FMeasureList fMsrList) {
		model.addAttribute("foodList", foodList);
		model.addAttribute("fNutrList", fNutrList);
		model.addAttribute("fMsrList", fMsrList);
		USDAfoodService.USDAFoodFetching(foodList, fNutrList, fMsrList, keyword);
		return "foodList";
	}
	// users chosen foodItem
	@RequestMapping(value = "/addFood", method = RequestMethod.GET)
	public String addFood(
			@RequestParam(value = "foodName") String foodName,
			@RequestParam(value = "amount") String amount,
			@RequestParam(value = "date") String date,
			@RequestParam(value = "measLabel") String measLabel,
			Model model) {
		model.addAttribute("foodName", foodName);
		return USDAfoodService.addFood(foodName, amount, date, measLabel);
	}
	
	@RequestMapping("/newFoodSuccess")
	public String foodSuccessForm(Model model,
			String foodName) {
		model.addAttribute("foodName", foodName);
		return "newFoodSuccess";
	}

	@RequestMapping("/newFoodFailed")
	public String foodFailForm(Model model,
			FoodItem food) {
		model.addAttribute("food", food);
		return "newFoodFailed";
	}
}
