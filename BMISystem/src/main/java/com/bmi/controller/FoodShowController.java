package com.bmi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bmi.domain.FNutMeasureList;
import com.bmi.domain.FNutrList;
import com.bmi.domain.FoodList;
import com.bmi.service.FoodShowService;
/**
 * Created by Cem Þanal.
 */

@Controller
public class FoodShowController {
	
	@Autowired
	public FoodShowService foodShowService;
	
	public void setAppService(FoodShowService foodShowService) {
		this.foodShowService = foodShowService;
	}
	
    @RequestMapping(value = "/showFood")
	public String showFoods(Model model,
			FoodList foodList,
			FNutrList fNutrList,
			FNutMeasureList fnutmsrList) {
    	model.addAttribute("showFood", foodList);
		model.addAttribute("fNutrList", fNutrList);
		model.addAttribute("fnutmsrList", fnutmsrList);
    	return foodShowService.showFood(foodList, fNutrList, fnutmsrList);
	}
	
}
