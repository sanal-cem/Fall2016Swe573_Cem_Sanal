package com.bmi.model;
/**
 * Created by Cem Þanal.
 */

public class ActivityItem {

	private String uName;
    private String actId;
    private String actCode;
    private double actMETS;
	private String actGroupID;
	private String actDesc;

	public ActivityItem() {
		
	}
	
	public ActivityItem(String uName, String actId, String actCode, double actMETS, String actGroupID, String actDesc) {
		this.uName = uName;
		this.actId = actId;
		this.actCode = actCode;
		this.actMETS = actMETS;
		this.actGroupID = actGroupID;
		this.actDesc = actDesc;
	}

    public String getUName() {
        return uName;
    }

    public void setUName(String uName) {
        this.uName = uName;
    }
	
	public String getActId() {
        return actId;
    }

    public void setActId(String actId) {
        this.actId = actId;
    }

    public String getActCode() {
        return actCode;
    }

    public void setActCode(String actCode) {
        this.actCode = actCode;
    }

    public double getActMETS() {
        return actMETS;
    }

    public void setActMETS(double actMETS) {
        this.actMETS = actMETS;
    }

    public String getActGroupID() {
        return actGroupID;
    }

    public void setActGroupID(String actGroupID) {
        this.actGroupID = actGroupID;
    }

    public String getActDesc() {
        return actDesc;
    }

    public void setActDesc(String actDesc) {
        this.actDesc = actDesc;
    }
}

