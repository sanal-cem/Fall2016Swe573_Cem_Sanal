package com.bmi.domain;

import java.util.ArrayList;
import com.bmi.model.FMeasures;
/**
 * Created by Cem Şanal.
 */

public class FMeasureList {
	private ArrayList<FMeasures> fnutMeasureList;
	
	public FMeasureList() {
		fnutMeasureList = new ArrayList<FMeasures>();
	}
	
	public FMeasureList(ArrayList<FMeasures> fnutMeasureList) {
		this.fnutMeasureList = fnutMeasureList;
	}
	
	public ArrayList<FMeasures> getFMeasureList() {
		return fnutMeasureList;
	}
	
	public ArrayList<FMeasures> getFMeasureList(String fName) {
		FMeasures measure;
		ArrayList<FMeasures> fMeasureListGet = new ArrayList<FMeasures>();
		int i = 0;
		int listSize = fnutMeasureList.size();
		for (i = 0; listSize > i; i++) {
			measure = new FMeasures();
			measure = fnutMeasureList.get(i);
			if(measure.getFName().equals(fName)) {
				fMeasureListGet.add(measure);
			}
		}
		return fMeasureListGet;
	}
	
	public void setFMeasureList(ArrayList<FMeasures> fnutMeasureList) {
		this.fnutMeasureList = fnutMeasureList;
	}
	
	public void addFMeasureItem(FMeasures fnutMeasure) {
		fnutMeasureList.add(fnutMeasure);
	}
}
