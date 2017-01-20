package com.bmi.model;

public class ActivityGroup {

	String uName;
	String actGrpId;
	String actName;
	
	public ActivityGroup() {
		
	}
	
	public ActivityGroup(String uName, String actGrpId, String actName) {
		this.actGrpId = actGrpId;
		this.actName = actName;
	}

    public String getUName() {
        return uName;
    }

    public void setUName(String uName) {
        this.uName = uName;
    }

    public String getActGrpId() {
        return actGrpId;
    }

    public void setActGrpId(String actGrpId) {
        this.actGrpId = actGrpId;
    }

    public String getActName() {
        return actName;
    }

    public void setActName(String actName) {
        this.actName = actName;
    }
}
