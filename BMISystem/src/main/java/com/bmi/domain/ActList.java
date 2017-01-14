package com.bmi.domain;

import java.util.ArrayList;
import com.bmi.model.ActItem;
/**
 * Created by Cem Þanal.
 */

public class ActList {
	private ArrayList<ActItem> acts;
	
	public ActList() {
		acts = new ArrayList<ActItem>();
	}
	
	public ActList(ArrayList<ActItem> acts) {
		this.acts = acts;
	}

	public ArrayList<ActItem> getActList() {
		return acts;
	}
	
	public void addActItem(ActItem act) {
		acts.add(act);
	}
}