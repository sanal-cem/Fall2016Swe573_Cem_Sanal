package com.bmi.controller;

import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

//import com.bmi.domain.FoodList;
import com.bmi.model.FoodItem;
import com.bmi.service.FoodService;
import com.bmi.service.RegLoginService;

/**
 * Created by Cem Þanal.
 */

@Controller
public class USDAConnection {

	@Autowired
	public FoodService foodService;
	
    private static final String API_KEY = "J1JqoqoyHlHqBle6EQi3Vj1p356YJZYulgiYvzLp";
    private static final String SEARCH_URL = "http://api.nal.usda.gov/ndb/search/?format=json&api_key=" + API_KEY + "&q=";

    @RequestMapping(value = "/foodSearch" , method = RequestMethod.GET)
    public String searchFood()
    {
//    	should save USDA food data into local db.
    	foodService.getAllFoodsUSDA();
        return "foodSearch";
    }
    
    @RequestMapping(value = "/foodList" , method = RequestMethod.GET, params = {"keyword"})
	public String foodList(@RequestParam(value = "keyword") String keyword, Model model, FoodItem foodItem) {
		model.addAttribute("foodList", foodItem);
    	
		String url = SEARCH_URL;
		url += keyword;

		String jsonResponse = "";
		try (CloseableHttpClient httpClient = HttpClientBuilder.create().build()) {
			HttpGet request = new HttpGet(url.toString());
			HttpResponse result = httpClient.execute(request);

			jsonResponse = EntityUtils.toString(result.getEntity(), "UTF-8");
			JSONObject outerObject = new JSONObject(jsonResponse);
		    JSONObject innerObject = outerObject.getJSONObject("list");
		    JSONArray jsonArray = innerObject.getJSONArray("item");
//		    FoodList fList = new FoodList();
		    String offset = "";
		    String group = "";
		    String name = "";
		    String ndbno = "";
		    String ds = "";
		    
		    int n = jsonArray.length();
	            for (int i = 0; i < n; i++) {
	              // Get each food one by one
					JSONObject jObj = jsonArray.getJSONObject(i);
	
	                offset = jObj.getString("offset");
	                group = jObj.getString("group");
	                name = jObj.getString("name");
	                ndbno = jObj.getString("ndbno");
	                ds = jObj.getString("ds");
	
	                // Save each food as FoodItem
//	                fList.addFoodItem(fItem);
	            }
	        foodItem.setOffset(offset);
	        foodItem.setName(name);
	        foodItem.setndbno(ndbno);
	        foodItem.setDs(ds);
	        foodItem.setuName(RegLoginService.user.getuName());
	        foodItem.setfCalory(0);
	        foodItem.setfIngred(" ");
	        
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return "foodList";
	}
	
}
