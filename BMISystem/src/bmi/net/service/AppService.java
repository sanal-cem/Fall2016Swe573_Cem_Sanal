package bmi.net.service;

import java.util.List;
import java.util.Map;

//import java.util.List;
import bmi.net.domain.Food;

import bmi.net.model.User;

public interface AppService {
	
	public boolean addUser(User registration);
	public boolean login(User login);
	public boolean addFood(Food food);
	public List<Map<String, Object>> getUsersFood();
//	public List<Food> getAllFoods();
	//public void updateUser(Registration registration);
	//public void delete(Integer rollNo);	
}