package com.bmi.domain;

import java.util.List;

import com.bmi.model.FoodItem;
/**
 * Created by Cem Þanal.
 */

public class FoodList {
	
	private List<FoodItem> foods;
	
	public FoodList() {
		
	}
	
	public FoodList(List<FoodItem> foods) {
		this.foods = foods;
	}
	
	public List<FoodItem> getFoodList() {
		return foods;
	}
	
	public void setFoodList(List<FoodItem> foods) {
		this.foods = foods;
	}
	
	public void addFoodItem(FoodItem food) {
		foods.add(food);
	}
}