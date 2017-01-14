package com.bmi.domain;

import java.util.ArrayList;
import com.bmi.model.FNutrients;
/**
 * Created by Cem Şanal.
 */

public class FNutrList {
	private ArrayList<FNutrients> fnutrients;
	
	public FNutrList() {
		fnutrients = new ArrayList<FNutrients>();
	}
	
	public FNutrList(ArrayList<FNutrients> fnutrients) {
		this.fnutrients = fnutrients;
	}
	
	public ArrayList<FNutrients> getFNutrList() {
		return fnutrients;
	}
	
	public ArrayList<FNutrients> getFNutrListFood(String fndbno) {
		FNutrients fNutr;
		ArrayList<FNutrients> fnutrientsGet = new ArrayList<FNutrients>();
		int i = 0;
		int listSize = fnutrients.size();
		for (i = 0; listSize > i; i++) {
			fNutr = new FNutrients();
			fNutr = fnutrients.get(i);
			if(fNutr.getFndbno().equals(fndbno)) {
				fnutrientsGet.add(fNutr);
			}
		}
		return fnutrientsGet;
	}
	
	public void setFNutrList(ArrayList<FNutrients> fnutrients) {
		this.fnutrients = fnutrients;
	}
	
	public void addFNutrient(FNutrients fnutrient) {
		fnutrients.add(fnutrient);
	}
}
