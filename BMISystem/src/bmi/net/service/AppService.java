package bmi.net.service;

import java.util.List;
import java.util.Map;

//import java.util.List;
import bmi.net.domain.Food;

import bmi.net.model.User;

public interface AppService {
	
	public String login(User login);
	public String reg(User reg);
	public boolean addFood(Food food);
	public List<Map<String, Object>> getUsersFood();
//	public List<Food> getAllFoods();
	//public void updateUser(Registration registration);
	//public void delete(Integer rollNo);	
}