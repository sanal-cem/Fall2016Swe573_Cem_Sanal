package com.bmi.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.google.gson.Gson;
import com.bmi.domain.FoodItem;
import com.bmi.domain.FoodList;
import com.bmi.model.User;

/**
 * Created by Cem Þanal.
 */
public class AppServiceImpl implements AppService {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
    User user = new User();

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	public String login(User userL) {
	    try
	    {
		    	user.setuName(userL.getuName());
		        user.setPass(userL.getPass());
		        if(user.getIsValid())
		        {
		        	try {
		    			String query = "SELECT UNAME, PASS, "
		    					+ "NAME, SURNAME , AGE, "
		    					+ "COMMENT FROM USERS "
		    					+ "WHERE UNAME LIKE '"
		    					+ userL.getuName() + "'"
		    					+ " AND PASS LIKE '"
		    					+ userL.getPass() + "'";
		    		    for(Map<String, Object> row : jdbcTemplate.queryForList(query)){
		    		    	user.setuName(row.get("UNAME").toString());
		    		    	userL.setuName(row.get("UNAME").toString());
		    		    	user.setPass(row.get("PASS").toString());
		    		    	userL.setPass(row.get("PASS").toString());
		    		    	user.setName(row.get("NAME").toString());
		    		    	userL.setName(row.get("NAME").toString());
		    		    	user.setSurName(row.get("SURNAME").toString());
		    		    	userL.setSurName(row.get("SURNAME").toString());
		    		    	user.setAge(row.get("AGE").toString());
		    		    	userL.setAge(row.get("AGE").toString());
		    		    	user.setComment(row.get("COMMENT").toString());
		    		    	userL.setComment(row.get("COMMENT").toString());
		    		     }
		    		    if(user.getName().isEmpty() && user.getSurName().isEmpty()) 
		    		    	return "loginFailed";
		    		} catch (Exception e) {
		    			System.out.println(e.getMessage());
		    			e.printStackTrace();
		    			return "loginFailed";
		    		}
		        	return "loginSuccess";
		        }else
		        	//notValid
		            return "logreg";
	    } catch (Throwable exc)
	    {
	        System.out.println(exc);
	    }
	    return "logreg";
	}
	
	public String reg(User reg) {
		try {
			String sql = "INSERT INTO USERS("
					+ "UNAME, PASS, SURNAME, "
					+ "NAME, AGE, COMMENT"
					+ ") values(?,?,?,?,?,?)";
			jdbcTemplate.update(sql, new Object[] {
					reg.getuName(), reg.getPass(),
					reg.getSurName(), reg.getName(),
					reg.getAge(), reg.getComment()});
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
			return "regFailed";
		}
		return "regSuccess";
	}
	
	public String addFood(FoodItem food) {
		try {
			String sql = "INSERT INTO UFOOD("
					+ "UNAME, FOFFSET,"
					+ "FGROUP, FNAME, FNDBNO,"
					+ " FDS, FCALORY, FINGRED"
					+ ") values(?,?,?,?,?,?,?,?)";
			jdbcTemplate.update(sql, new Object[] { user.getuName(),
					food.getOffset(), food.getGroup(),
					food.getName(), food.getnDbNo(),
					food.getDs(), food.getfCalory(),
					food.getfIngred() });
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
			return "newFoodFailed";
		}
		return "newFoodSuccess";
	}
	
	public String showFood(FoodItem food) {
		List<Map<String, Object>> foodRows = null;
		List<FoodItem> foodL = new ArrayList<>();
		try {
			// Chosen user name inserted after LIKE expression.
			String query = "SELECT UNAME, FOFFSET,"
					+ "FGROUP, FNAME, FNDBNO,"
					+ " FDS, FCALORY, FINGRED "
					+ "FROM UFOOD "
					+ "WHERE UNAME LIKE "
					+ "'" + user.getuName() + "'";
		    foodRows = jdbcTemplate.queryForList(query);
		    for(Map<String, Object> row : foodRows){
//			   ***deneme amaçlý tek food koyuldu, sayfa deðiþtikçe tüm food'larýn görülmesi saðlanmalý.
		    	
		       if(row.get("UNAME") != null) {
		    	   food.setuName(row.get("UNAME").toString());
		       }
		       else {
		    	   food.setuName(" ");
		       }
		       
		       if(row.get("FOFFSET") != null) {
		    	   food.setOffset(Integer.parseInt(row.get("FOFFSET").toString()));
		       }
		       else {
		    	   food.setOffset(0);
		       }
		       
		       if(row.get("FGROUP") != null) {
		    	   food.setGroup(row.get("FGROUP").toString());
		       }
		       else {
		    	   food.setGroup(" ");
		       }
		       
		       if(row.get("FNAME") != null) {
		    	   food.setName(row.get("FNAME").toString());
		       }
		       else {
		    	   food.setName(" ");
		       }
		       
		       if(row.get("FNDBNO") != null) {
		    	   food.setNdbno(row.get("FNDBNO").toString());
		       }
		       else {
		    	   food.setNdbno(" ");
		       }
		       
		       if(row.get("FDS") != null) {
		    	   food.setDs(row.get("FDS").toString());
		       }
		       else {
		    	   food.setDs(" ");
		       }

		       if(row.get("FDS") != null) {
		    	   food.setfCalory(Integer.parseInt(row.get("FCALORY").toString()));
		       }
		       else {
		    	   food.setfCalory(0);
		       }

		       if(row.get("FINGRED") != null) {
		    	   food.setfIngred(row.get("FINGRED").toString());
		       }
		       else {
		    	   food.setfIngred(" ");
		       }
		       foodL.add(food);

		     }
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return "showFood";
	}
	
	public String getAllFoodsUSDA() {
		
	    final String API_KEY = "J1JqoqoyHlHqBle6EQi3Vj1p356YJZYulgiYvzLp";
	    final String SEARCH_URL = "http://api.nal.usda.gov/ndb/search/?format=json&api_key=" + API_KEY + "&q=ab";
	    
	    String jsonResponse = "";
	    // Fetching Food data from USDA API
		try (CloseableHttpClient httpClient = HttpClientBuilder.create().build()) {
			HttpGet request = new HttpGet(SEARCH_URL.toString());
			HttpResponse result = httpClient.execute(request);

			jsonResponse = EntityUtils.toString(result.getEntity(), "UTF-8");

			Gson gson = new Gson();

			FoodList foodList = gson.fromJson(jsonResponse, FoodList.class);
			List<FoodItem> foods = foodList.getFoodList();
			
//			if (foods.length > 0) {
//			
//            int n = foods.length();
//            for (int i = 0; i < n; i++) {
//			
//                // Get each food one by one
//                int offset = food.getInt("offset");
//                String group = food.getString("group");
//                String name = food.getString("name");
//                String nDbNo = food.getString("nDbNo");
//                String ds = food.getString("ds");
//                String uName = food.getString("uName");
//                int fCalory = food.getInt("fCalory");
//                String fIngred = food.getString("fIngred");
//
//                // Save each food as FoodItem
//                FoodItem fItem = new FoodItem(offset, group, name, nDbNo, ds, uName, fCalory, fIngred);
//                fItem.add(fItem);
//            }
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		
		
		//loop olacak
		//foods query
//		FoodItem food = new FoodItem(,,,,);
//		addFood(food);
		
		return "USDAFoodFetchSuccess";
	}
}