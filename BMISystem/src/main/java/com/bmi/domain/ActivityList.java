package com.bmi.domain;

import java.util.ArrayList;
import com.bmi.model.ActivityItem;
/**
 * Created by Cem Þanal.
 */

public class ActivityList {
	private ArrayList<ActivityItem> acts;
	
	public ActivityList() {
		acts = new ArrayList<ActivityItem>();
	}
	
	public ActivityList(ArrayList<ActivityItem> acts) {
		this.acts = acts;
	}

	public ArrayList<ActivityItem> getActList() {
		return acts;
	}
	
	public ActivityItem getActListID(String actID) {
		ActivityItem activity;
		ActivityItem activityGet = new ActivityItem();
		int i = 0;
		int listSize = acts.size();
		for (i = 0; listSize > i; i++) {
			activity = new ActivityItem();
			activity = acts.get(i);
			if(activity.getActId().equals(actID)) {
				activityGet = activity;
			}
		}
		return activityGet;
	}
	
	public void addActItem(ActivityItem act) {
		acts.add(act);
	}
}