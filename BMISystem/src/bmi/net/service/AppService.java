package bmi.net.service;

import java.util.List;
import java.util.Map;

//import java.util.List;
import bmi.net.domain.FoodItem;

import bmi.net.model.User;

public interface AppService {
	
	public String login(User login);
	public String reg(User reg);
	public String addFood(FoodItem food);
	public List<Map<String, Object>> getUsersFood();
//	public List<Food> getAllFoods();
	//public void updateUser(Registration registration);
	//public void delete(Integer rollNo);	
}