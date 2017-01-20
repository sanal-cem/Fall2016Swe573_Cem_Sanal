package com.bmi.domain;

import java.util.ArrayList;

import com.bmi.model.ActivityGroup;

public class ActivityGroupList {
	private ArrayList<ActivityGroup> actgrps;
	
	public ActivityGroupList() {
		actgrps = new ArrayList<ActivityGroup>();
	}
	
	public ActivityGroupList(ArrayList<ActivityGroup> acts) {
		this.actgrps = acts;
	}

	public ArrayList<ActivityGroup> getActList() {
		return actgrps;
	}
	
	public ActivityGroup getActGroupListID(String groupID) {
		ActivityGroup actGroup;
		ActivityGroup actGroupGet = new ActivityGroup();
		int i = 0;
		int listSize = actgrps.size();
		for (i = 0; listSize > i; i++) {
			actGroup = new ActivityGroup();
			actGroup = actgrps.get(i);
			if(actGroup.getActGrpId().equals(groupID)) {
				actGroupGet = actGroup;
			}
		}
		return actGroupGet;
	}
	
	public void addActGroupItem(ActivityGroup actGrp) {
		actgrps.add(actGrp);
	}
}
