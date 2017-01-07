package com.bmi.domain;

import java.util.List;

import com.bmi.model.ActItem;
/**
 * Created by Cem Þanal.
 */

public class ActList {
	
	private List<ActItem> acts;
	
	public ActList() {
		
	}
	
	public ActList(List<ActItem> acts) {
		this.acts = acts;
	}

	public List<ActItem> getActList() {
		return acts;
	}
	
	public void addActItem(ActItem act) {
		acts.add(act);
	}
}