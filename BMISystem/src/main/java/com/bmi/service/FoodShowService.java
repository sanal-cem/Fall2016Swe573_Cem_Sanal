package com.bmi.service;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.bmi.domain.FMeasureList;
import com.bmi.domain.FNutrList;
import com.bmi.domain.FoodList;
import com.bmi.model.FMeasures;
import com.bmi.model.FNutrients;
import com.bmi.model.FoodItem;
/**
 * Created by Cem Þanal.
 */

public class FoodShowService {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	// show food from local database.
	public String showFood(FoodList foodList, FNutrList fNutrList, FMeasureList fnutmsrList) {
		List<Map<String, Object>> foodRows = null;
		List<Map<String, Object>> nutrRows = null;
		List<Map<String, Object>> measRows = null;
		FNutrients fNutrient;
		FoodItem foodItem;
		FMeasures fNutrMeasure;
		// get food items.
		try {
			String query = "SELECT FGROUP, FNAME, FNDBNO, "
					+ "FMEASURE, FUNIT, FCALORY, AMOUNT "
					+ "FROM UFOODS WHERE UNAME LIKE "
					+ '"' + AccountService.user.getuName() + '"';
		    foodRows = jdbcTemplate.queryForList(query);
		    for(Map<String, Object> row : foodRows){
		    	foodItem = new FoodItem();
		       
		       if(row.get("FGROUP") != null) {
		    	   foodItem.setGroup(row.get("FGROUP").toString());
		       }
		       else {
		    	   foodItem.setGroup(" ");
		       }
		       
		       if(row.get("FNAME") != null) {
		    	   foodItem.setName(row.get("FNAME").toString());
		       }
		       else {
		    	   foodItem.setName(" ");
		       }
		       
		       if(row.get("FNDBNO") != null) {
		    	   foodItem.setNdbno(row.get("FNDBNO").toString());
		       }
		       else {
		    	   foodItem.setNdbno(" ");
		       }
		       
		       if(row.get("FMEASURE") != null) {
		    	   foodItem.setMeasure(row.get("FMEASURE").toString());
		       }
		       else {
		    	   foodItem.setMeasure(" ");
		       }
		       
		       if(row.get("FUNIT") != null) {
		    	   foodItem.setFunit(row.get("FUNIT").toString());
		       }
		       else {
		    	   foodItem.setFunit(" ");
		       }
		       
		       if(row.get("FCALORY") != null) {
		    	   foodItem.setfCalory(Float.parseFloat(row.get("FCALORY").toString()));
		       }
		       else {
		    	   foodItem.setfCalory(Float.parseFloat("0"));
		       }
		       
		       if(row.get("AMOUNT") != null) {
		    	   foodItem.setAmount(Integer.parseInt(row.get("AMOUNT").toString()));
		       }
		       else {
		    	   foodItem.setAmount(Integer.parseInt("0"));
		       }

		       foodList.addFoodItem(foodItem);

		       // get nutrient items.
		       query = "SELECT FNDBNO, NID, "
						+ "NNAME, NGROUP, NUNIT, NVALUE "
						+ "FROM UFNUTRIENTS WHERE FNDBNO LIKE " + '"'
						+  foodItem.getNdbno() + '"'
						+ " AND UNAME LIKE " + '"' + AccountService.user.getuName() + '"'
						+ " AND FNAME LIKE " + '"' + foodItem.getName() + '"';
			   nutrRows = jdbcTemplate.queryForList(query);
			   for(Map<String, Object> nrow : nutrRows){
				   fNutrient = new FNutrients();
				   
			       if(nrow.get("FNDBNO") != null) {
			    	   fNutrient.setFndbno(nrow.get("FNDBNO").toString());
			       }
			       else {
			    	   fNutrient.setFndbno(" ");
			       }
				   
			       if(nrow.get("NID") != null) {
			    	   fNutrient.setNid(nrow.get("NID").toString());
			       }
			       else {
			    	   fNutrient.setNid(" ");
			       }
			       
			       if(nrow.get("NNAME") != null) {
			    	   fNutrient.setnName(nrow.get("NNAME").toString());
			       }
			       else {
			    	   fNutrient.setnName(" ");
			       }
			       
			       if(nrow.get("NGROUP") != null) {
			    	   fNutrient.setGroup(nrow.get("NGROUP").toString());
			       }
			       else {
			    	   fNutrient.setGroup(" ");
			       }
			       
			       if(nrow.get("NUNIT") != null) {
			    	   fNutrient.setNunit(nrow.get("NUNIT").toString());
			       }
			       else {
			    	   fNutrient.setNunit(" ");
			       }

			       if(nrow.get("NVALUE") != null) {
			    	   fNutrient.setNvalue(Float.parseFloat(nrow.get("NVALUE").toString()));
			       }
			       else {
			    	   fNutrient.setNvalue(Float.parseFloat("0"));
			       }
			       fNutrList.addFNutrient(fNutrient);
			   }
			   
			   // get measure items.
		       query = "SELECT FNAME, NNAME, LABEL, EQV, "
						+ "QTY, VALUE FROM UFMEASURES "
		    		    + "WHERE UNAME LIKE " + '"' + AccountService.user.getuName() + '"'
						+ " AND FNAME LIKE " + '"' + foodItem.getName() + '"';
			   measRows = jdbcTemplate.queryForList(query);
			   for(Map<String, Object> mrow : measRows){
				   fNutrMeasure = new FMeasures();
			       
			       if(mrow.get("FNAME") != null) {
			    	   fNutrMeasure.setFName(mrow.get("FNAME").toString());
			       }
			       else {
			    	   fNutrMeasure.setFName(" ");
			       }
			       
			       if(mrow.get("NNAME") != null) {
			    	   fNutrMeasure.setNName(mrow.get("NNAME").toString());
			       }
			       else {
			    	   fNutrMeasure.setNName(" ");
			       }
				   
			       if(mrow.get("LABEL") != null) {
			    	   fNutrMeasure.setLabel(mrow.get("LABEL").toString());
			       }
			       else {
			    	   fNutrMeasure.setLabel(" ");
			       }
			       
			       if(mrow.get("EQV") != null) {
			    	   fNutrMeasure.setEqv(Float.parseFloat(mrow.get("EQV").toString()));
			       }
			       else {
			    	   fNutrMeasure.setEqv(Float.parseFloat("0"));
			       }
			       
			       if(mrow.get("QTY") != null) {
			    	   fNutrMeasure.setQty(Float.parseFloat(mrow.get("QTY").toString()));
			       }
			       else {
			    	   fNutrMeasure.setQty(Float.parseFloat("0"));
			       }

			       if(mrow.get("VALUE") != null) {
			    	   fNutrMeasure.setValue(Float.parseFloat(mrow.get("VALUE").toString()));
			       }
			       else {
			    	   fNutrMeasure.setValue(Float.parseFloat("0"));
			       }
			       fnutmsrList.addFMeasureItem(fNutrMeasure);
			    }
		    }
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return "showFood";
	}
}

