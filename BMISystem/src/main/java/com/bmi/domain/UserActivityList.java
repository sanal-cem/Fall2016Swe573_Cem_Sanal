package com.bmi.domain;

import java.util.ArrayList;
import com.bmi.model.UserActivity;
/**
 * Created by Cem Þanal.
 */

public class UserActivityList {
	private ArrayList<UserActivity> acts;
	
	public UserActivityList() {
		acts = new ArrayList<UserActivity>();
	}
	
	public UserActivityList(ArrayList<UserActivity> acts) {
		this.acts = acts;
	}

	public ArrayList<UserActivity> getUActList() {
		return acts;
	}
	
	public UserActivity getUActListID(String actID) {
		UserActivity uAct;
		UserActivity uActGet = new UserActivity();
		int i = 0;
		int listSize = acts.size();
		for (i = 0; listSize > i; i++) {
			uAct = new UserActivity();
			uAct = acts.get(i);
			if(uAct.getActId().equals(actID)) {
				uActGet = uAct;
			}
		}
		return uActGet;
	}
	
	public void addActItem(UserActivity act) {
		acts.add(act);
	}
}
