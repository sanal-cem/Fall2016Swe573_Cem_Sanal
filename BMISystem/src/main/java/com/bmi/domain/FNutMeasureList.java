package com.bmi.domain;

import java.util.ArrayList;
import com.bmi.model.FNutMeasures;
/**
 * Created by Cem Şanal.
 */

public class FNutMeasureList {
	private ArrayList<FNutMeasures> fnutMeasureList;
	
	public FNutMeasureList() {
		fnutMeasureList = new ArrayList<FNutMeasures>();
	}
	
	public FNutMeasureList(ArrayList<FNutMeasures> fnutMeasureList) {
		this.fnutMeasureList = fnutMeasureList;
	}
	
	public ArrayList<FNutMeasures> getFNutMeasureList() {
		return fnutMeasureList;
	}
	
	public ArrayList<FNutMeasures> getFNutMeasureListFNutr(String nid) {
		FNutMeasures fNutrMeas;
		ArrayList<FNutMeasures> fnutMeasureListGet = new ArrayList<FNutMeasures>();
		int i = 0;
		int listSize = fnutMeasureList.size();
		for (i = 0; listSize > i; i++) {
			fNutrMeas = new FNutMeasures();
			fNutrMeas = fnutMeasureList.get(i);
			if(fNutrMeas.getNid().equals(nid)) {
				fnutMeasureListGet.add(fNutrMeas);
			}
		}
		return fnutMeasureListGet;
	}
	
	public void setFNutMeasureList(ArrayList<FNutMeasures> fnutMeasureList) {
		this.fnutMeasureList = fnutMeasureList;
	}
	
	public void addFNutMeasureItem(FNutMeasures fnutMeasure) {
		fnutMeasureList.add(fnutMeasure);
	}
}
