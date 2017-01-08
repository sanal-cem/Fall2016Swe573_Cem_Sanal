package com.bmi.service;

import java.util.List;
import java.util.Map;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.json.JSONArray;
import org.json.JSONObject;

import com.bmi.domain.FoodList;
import com.bmi.model.FoodItem;

public class FoodService {
	
	/**
	 * @uml.property  name="jdbcTemplate"
	 * @uml.associationEnd  
	 */
	@Autowired
	private JdbcTemplate jdbcTemplate;

	/**
	 * @param jdbcTemplate
	 * @uml.property  name="jdbcTemplate"
	 */
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public String addFood(FoodItem food) {
		try {
			String sql = "INSERT INTO UFOOD("
					+ "UNAME, FOFFSET,"
					+ "FGROUP, FNAME, FNDBNO,"
					+ " FDS, FCALORY, FINGRED"
					+ ") values(?,?,?,?,?,?,?,?)";
			jdbcTemplate.update(sql, new Object[] { RegLoginService.user.getuName(),
					food.getOffset(), food.getGroup(),
					food.getName(), food.getndbno(),
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
		FoodList foodL = new FoodList();
		try {
			// Chosen user name inserted after LIKE expression.
			String query = "SELECT UNAME, FOFFSET,"
					+ "FGROUP, FNAME, FNDBNO,"
					+ " FDS, FCALORY, FINGRED "
					+ "FROM UFOOD "
					+ "WHERE UNAME LIKE "
					+ "'" + RegLoginService.user.getuName() + "'";
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
		    	   food.setOffset(row.get("FOFFSET").toString());
		       }
		       else {
		    	   food.setOffset("0");
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
		    	   food.setndbno(row.get("FNDBNO").toString());
		       }
		       else {
		    	   food.setndbno(" ");
		       }
		       
		       if(row.get("FDS") != null) {
		    	   food.setDs(row.get("FDS").toString());
		       }
		       else {
		    	   food.setDs(" ");
		       }

		       if(row.get("FCALORY") != null) {
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
		       foodL.addFoodItem(food);

		     }
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return "showFood";
	}
	
	public String getAllFoodsUSDA() {
		
	    final String API_KEY = "J1JqoqoyHlHqBle6EQi3Vj1p356YJZYulgiYvzLp";
	    final String SEARCH_URL = "http://api.nal.usda.gov/ndb/search/?format=json&api_key=" + API_KEY + "&q=";
	    
	    String jsonResponse = "";
	    // Fetching Food data from USDA API
		try (CloseableHttpClient httpClient = HttpClientBuilder.create().build()) {
			HttpGet request = new HttpGet(SEARCH_URL.toString());
			HttpResponse result = httpClient.execute(request);

			jsonResponse = EntityUtils.toString(result.getEntity(), "UTF-8");
			JSONObject outerObject = new JSONObject(jsonResponse);
		    JSONObject innerObject = outerObject.getJSONObject("list");
		    JSONArray jsonArray = innerObject.getJSONArray("item");
//		    FoodList fList = new FoodList();
		    FoodItem fItem;
		    
		    int n = jsonArray.length();
	            for (int i = 0; i < n; i++) {
	              // Get each food one by one
					JSONObject jObj = jsonArray.getJSONObject(i);
	
	                String offset = jObj.getString("offset");
	                String group = jObj.getString("group");
	                String name = jObj.getString("name");
	                String ndbno = jObj.getString("ndbno");
	                String ds = jObj.getString("ds");
	
	                fItem = new FoodItem(offset, group, name, ndbno, ds, RegLoginService.user.getuName(), 0, " ");
	                // Save each food as FoodItem
//	                fList.addFoodItem(fItem);
	            }
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return "USDAFoodFetchSuccess";
	}
}

