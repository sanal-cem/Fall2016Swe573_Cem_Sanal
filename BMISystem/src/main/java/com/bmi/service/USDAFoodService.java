package com.bmi.service;

import java.util.ArrayList;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.bmi.domain.FMeasureList;
import com.bmi.domain.FNutrList;
import com.bmi.domain.FoodList;
import com.bmi.model.FMeasures;
import com.bmi.model.FNutrients;
import com.bmi.model.FoodItem;
import com.bmi.service.AccountService;
/**
 * Created by Cem Þanal.
 */

public class USDAFoodService {

    private static final String API_KEY = "J1JqoqoyHlHqBle6EQi3Vj1p356YJZYulgiYvzLp";
    private static final String SEARCH_URL = "http://api.nal.usda.gov/ndb/search/?format=json&sort=n&max=50&offset=0&api_key=" + API_KEY + "&q=";
    private static final String FOOD_URL = "http://api.nal.usda.gov/ndb/reports/?type=b&format=json&api_key=" + API_KEY + "&ndbno=";
    
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
    // users lists are saved into below list variables.
    private FoodList foodListGlbl = new FoodList();
    private FNutrList fNutrListGlbl = new FNutrList();
    private FMeasureList fnutmsrListGlbl = new FMeasureList();
	
	public String USDAConnection(String url) {

		String jsonResponse = "";
		
		try(CloseableHttpClient httpClient = HttpClientBuilder.create().build()) {
			HttpGet request = new HttpGet(url.toString());
			HttpResponse result = httpClient.execute(request);
			jsonResponse = EntityUtils.toString(result.getEntity(), "UTF-8");
		
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return jsonResponse;
	}
    
	public boolean USDAFoodFetching(FoodList foodList, FNutrList fNutrList, FMeasureList fnutmsrList, String keyword) {

		String url = SEARCH_URL;
		url += keyword;
		
		try {
			JSONObject outerObject = new JSONObject(USDAConnection(url));
		    JSONObject innerObject = outerObject.getJSONObject("list");
		    JSONArray jsonArray = innerObject.getJSONArray("item");
		    FoodItem foodItem;
		    
		    int n = jsonArray.length();
	        for (int i = 0; i < n; i++) {
	          // Get each food one by one
				JSONObject jObj = jsonArray.getJSONObject(i);
	
	            // Add each food as FoodItem into the foodList
	            foodItem = new FoodItem(AccountService.user.getuName()
	            		, jObj.getString("offset")
	            		, jObj.getString("group")
	            		, jObj.getString("name")
	            		, jObj.getString("ndbno")
	            		, jObj.getString("ds")
	            		, 0, " ", 0, 0);
		        
		        foodList.addFoodItem(foodItem);
		        foodListGlbl.addFoodItem(foodItem);
		        USDAgetFoodNutrients(foodItem, foodList, fNutrList, fnutmsrList);
	        }
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	        
		return true;
	}
	
	public boolean USDAgetFoodNutrients(FoodItem foodItem, FoodList foodList, FNutrList fNutrList, FMeasureList fnutmsrList) {
		
		String fndbno = foodItem.getNdbno();
		try {
			JSONObject outerObject = new JSONObject(USDAConnection(FOOD_URL + fndbno));
		    JSONObject innerObject = outerObject.getJSONObject("report");
		    JSONObject jsonFoodObject = innerObject.getJSONObject("food");
		    JSONArray jsonArrayNutr = jsonFoodObject.getJSONArray("nutrients");
		    FNutrients fNut;
		    
		    int nOuter = jsonArrayNutr.length();
		    JSONObject jObjNutrient = null;
	        for (int i = 0; i < nOuter; i++) {
	          // Get each nutrient one by one
	        	jObjNutrient = jsonArrayNutr.getJSONObject(i);
	
	            // Add each nutrient as FNutrients into fnut object.
	            fNut = new FNutrients(AccountService.user.getuName()
	            		, foodItem.getName()
	            		, fndbno
	            		, jObjNutrient.getString("nutrient_id")
	            		, jObjNutrient.getString("name")
	            		, jObjNutrient.getString("group")
	            		, jObjNutrient.getString("unit")
	            		, Float.parseFloat(jObjNutrient.getString("value")));

	            fNutrList.addFNutrient(fNut);
	            fNutrListGlbl.addFNutrient(fNut);
	            // Nutrient fetching for the food.
	            USDAgetFNutMeasures(jObjNutrient, foodItem.getName(), fnutmsrList);
	        }
	        
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return true;
	}
	
	public boolean USDAgetFNutMeasures(JSONObject jObjNutrient, String fName, FMeasureList fmsrList) {
        FMeasures fNutMes;
		try {
		    JSONArray jsonArrayMeas = jObjNutrient.getJSONArray("measures");
	        int nInner = jsonArrayMeas.length();
	        for (int j = 0; j < nInner; j++) {
	        	// Get each Nutrient Measure one by one.
				JSONObject jObjMeasure = jsonArrayMeas.getJSONObject(j);
				
				// Add each measure as FNutMeasures into fnutMes object.
				fNutMes = new FMeasures(AccountService.user.getuName()
	            		, fName
						, jObjMeasure.getString("label")
						, Float.parseFloat(jObjMeasure.getString("eqv"))
						, Float.parseFloat(jObjMeasure.getString("qty"))
						, Float.parseFloat(jObjMeasure.getString("value")));

				fmsrList.addFMeasureItem(fNutMes);
				fnutmsrListGlbl.addFMeasureItem(fNutMes);
	        }
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return true;
	}
	
	// adds food, nutrients and measures into the local database.
	public String addFood(String foodName, String amount) {
		FoodItem foodItem = new FoodItem();
		foodItem = foodListGlbl.getFoodListName(foodName);
		try {
				String sql = "INSERT INTO UFOODS( "
						+ "UNAME, FOFFSET, FGROUP, "
						+ "FNAME, FNDBNO, FDS, FWEIGHT, "
						+ "FMEASURE, FCALORY, AMOUNT"
						+ ") values(?,?,?,?,?,?,?,?,?,?)";
				jdbcTemplate.update(sql, new Object[] {
						AccountService.user.getuName(),
						foodItem.getOffset(), foodItem.getGroup(),
						foodName, foodItem.getNdbno(),
						foodItem.getDs(), foodItem.getWeight(),
						foodItem.getMeasure(), foodItem.getfCalory(),
						Integer.parseInt(amount)});
			
			
			FNutrients nutrient;
			ArrayList<FNutrients> fNutrList = new ArrayList<FNutrients>();
			FMeasures measure;
			ArrayList<FMeasures> fnutmsrList;
			
			fNutrList = fNutrListGlbl.getFNutrListFood(foodItem.getNdbno());
			int nutrListSize = fNutrList.size();
			for(int i = 0; i < nutrListSize; i++) {
				nutrient = new FNutrients();
				nutrient = fNutrList.get(i);
				sql = "INSERT INTO UFNUTRIENTS( UNAME, FNAME, "
						+ "FNDBNO, NID, NNAME,"
						+ " NGROUP, NUNIT, NVALUE"
						+ ") values(?,?,?,?,?,?,?,?)";
				jdbcTemplate.update(sql, new Object[] {
						AccountService.user.getuName(),
						foodItem.getName(),
						foodItem.getNdbno(), nutrient.getNid(),
						nutrient.getNname(), nutrient.getGroup(),
						nutrient.getNunit(), nutrient.getNvalue()});
			}
				
			fnutmsrList = new ArrayList<FMeasures>();
			fnutmsrList = fnutmsrListGlbl.getFMeasureList(foodItem.getName());
			int fnutmsrListSize = fnutmsrList.size();
			for(int j = 0; j < fnutmsrListSize; j++) {
				measure = new FMeasures();
				measure = fnutmsrList.get(j);
				sql = "INSERT INTO UFMEASURES( UNAME, FNAME, "
						+ "LABEL, EQV, QTY, VALUE"
						+ ") values(?,?,?,?,?,?)";
				jdbcTemplate.update(sql, new Object[] {
						AccountService.user.getuName(),
						foodItem.getName(), measure.getLabel(),
						measure.getEqv(), measure.getQty(), 
						measure.getValue()});
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
			return "newFoodFailed";
		}
		return "newFoodSuccess";
	}
}
