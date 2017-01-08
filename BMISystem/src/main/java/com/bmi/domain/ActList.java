package com.bmi.domain;

import java.util.List;

import com.bmi.model.ActItem;
/**
 * Created by Cem Þanal.
 */

public class ActList {
	
	/**
	 * @uml.property  name="acts"
	 * @uml.associationEnd  multiplicity="(0 -1)" elementType="com.bmi.model.ActItem"
	 */
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