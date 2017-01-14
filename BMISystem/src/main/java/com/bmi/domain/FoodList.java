package com.bmi.domain;

import java.util.ArrayList;
import com.bmi.model.FoodItem;
/**
 * Created by Cem Þanal.
 */

public class FoodList {
	private ArrayList<FoodItem> foods;
	
	public FoodList() {
		foods = new ArrayList<FoodItem>();
	}
	
	public FoodList(ArrayList<FoodItem> foods) {
		this.foods = foods;
	}
	
	public ArrayList<FoodItem> getFoodList() {
		return foods;
	}
	
	public FoodItem getFoodListName(String name) {
		FoodItem food;
		FoodItem foodGet = new FoodItem();
		int i = 0;
		int listSize = foods.size();
		for (i = 0; listSize > i; i++) {
			food = new FoodItem();
			food = foods.get(i);
			if(food.getName().equals(name)) {
				foodGet = food;
			}
		}
		return foodGet;
	}
	
	public void setFoodList(ArrayList<FoodItem> foods) {
		this.foods = foods;
	}
	
	public void addFoodItem(FoodItem food) {
		foods.add(food);
	}
}