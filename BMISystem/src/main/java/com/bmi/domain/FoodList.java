package com.bmi.domain;

import java.util.List;
import com.fasterxml.jackson.annotation.JsonProperty;
/**
 * Created by Cem Þanal.
 */

public class FoodList {
	
	@JsonProperty("foods")
	private List<FoodItem> foods;

	public List<FoodItem> getFoodList() {
		return foods;
	}
	
	public void setFoodList(List<FoodItem> foods) {
		this.foods = foods;
	}
}