package com.bmi.service;

import com.bmi.domain.FoodItem;
import com.bmi.model.User;

/**
 * Created by Cem Þanal.
 */
public interface AppService {
	
	public String login(User login);
	public String reg(User reg);
	public String addFood(FoodItem food);
	public String showFood(FoodItem food);
	public String getAllFoodsUSDA();
	//public void updateUser(Registration registration);
	//public void delete(Integer rollNo);	
}