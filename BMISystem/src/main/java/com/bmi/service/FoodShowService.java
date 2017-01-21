package com.bmi.service;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.bmi.domain.FNutMeasureList;
import com.bmi.domain.FNutrList;
import com.bmi.domain.FoodList;
import com.bmi.model.FNutMeasures;
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
	public String showFood(FoodList foodList, FNutrList fNutrList, FNutMeasureList fnutmsrList) {
		List<Map<String, Object>> foodRows = null;
		List<Map<String, Object>> nutrRows = null;
		List<Map<String, Object>> measRows = null;
		FNutrients fNutrient;
		FoodItem foodItem;
		FNutMeasures fNutrMeasure;
		// get food items.
		try {
			foodItem = new FoodItem();
			String query = "SELECT UNAME, FOFFSET, "
					+ "FGROUP, FNAME, FNDBNO, FDS, "
					+ "FWEIGHT, FMEASURE, FCALORY "
					+ "FROM FOODS WHERE UNAME LIKE "
					+ "'" + AccountService.user.getuName() + "'";
		    foodRows = jdbcTemplate.queryForList(query);
		    for(Map<String, Object> row : foodRows){
		       
		       if(row.get("UNAME") != null) {
		    	   foodItem.setuName(row.get("UNAME").toString());
		       }
		       else {
		    	   foodItem.setuName(" ");
		       }
		       
		       if(row.get("FOFFSET") != null) {
		    	   foodItem.setWeight(Integer.parseInt(row.get("FOFFSET").toString()));
		       }
		       else {
		    	   foodItem.setWeight(0);
		       }
		       
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
		       
		       if(row.get("FDS") != null) {
		    	   foodItem.setDs(row.get("FDS").toString());
		       }
		       else {
		    	   foodItem.setDs(" ");
		       }

		       if(row.get("FWEIGHT") != null) {
		    	   foodItem.setWeight(Float.parseFloat(row.get("FWEIGHT").toString()));
		       }
		       else {
		    	   foodItem.setWeight(0);
		       }
		       
		       if(row.get("FMEASURE") != null) {
		    	   foodItem.setMeasure(row.get("FMEASURE").toString());
		       }
		       else {
		    	   foodItem.setMeasure(" ");
		       }
		       
		       if(row.get("FCALORY") != null) {
		    	   foodItem.setfCalory(Float.parseFloat(row.get("FCALORY").toString()));
		       }
		       else {
		    	   foodItem.setfCalory(Float.parseFloat("0"));
		       }

		       foodList.addFoodItem(foodItem);

		       // get nutrient items.
		       fNutrient = new FNutrients();
		       query = "SELECT FNDBNO, NID, "
						+ "NNAME, NGROUP, NUNIT, NVALUE "
						+ "FROM FNUTRIENTS WHERE FNDBNO LIKE "
						+ "'" + foodItem.getNdbno() + "'";
			   nutrRows = jdbcTemplate.queryForList(query);
			   for(Map<String, Object> nrow : nutrRows){
			       
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
			    	   fNutrient.setNname(nrow.get("NNAME").toString());
			       }
			       else {
			    	   fNutrient.setNname(" ");
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
		       fNutrMeasure = new FNutMeasures();
		       query = "SELECT NID, LABEL, EQV, "
						+ "QTY, VALUE FROM FNUTMEASURES "
		    		    + "WHERE NID LIKE "
						+ "'" + fNutrient.getNid() + "'";
			   measRows = jdbcTemplate.queryForList(query);
			   for(Map<String, Object> mrow : measRows){
			       
			       if(mrow.get("NID") != null) {
			    	   fNutrMeasure.setNid(mrow.get("NID").toString());
			       }
			       else {
			    	   fNutrMeasure.setNid(" ");
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
			       fnutmsrList.addFNutMeasureItem(fNutrMeasure);
			    }
		    }
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return "showFood";
	}
}

