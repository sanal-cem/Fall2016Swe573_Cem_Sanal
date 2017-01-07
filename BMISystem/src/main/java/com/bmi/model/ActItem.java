package com.bmi.model;

import java.util.Date;

/**
 * Created by Cem Þanal.
 */

public class ActItem {

	private String uName;
    private String actId;
	private String actName;
	private String actType;
    private int actClry;
    private Date actTime;

	public ActItem() {
		
	}
	
	public ActItem(String uName, String actId, String actName, String actType, int actClry, Date actTime) {
		this.uName = uName;
		this.actId = actId;
		this.actName = actName;
		this.actType = actType;
		this.actClry = actClry;
		this.actTime = actTime;
	}
	
    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName;
    }
	
    public String getActId() {
        return actId;
    }

    public void setActId(String actId) {
        this.actId = actId;
    }
	
    public String getActName() {
        return actName;
    }

    public void setActName(String actName) {
        this.actName = actName;
    }
	
    public String getActType() {
        return actType;
    }

    public void setActType(String actType) {
        this.actType = actType;
    }

    public int getActClry() {
        return actClry;
    }

    public void setActClry(int actClry) {
        this.actClry = actClry;
    }

    public Date getActTime() {
        return actTime;
    }

    public void setActTime(Date actTime) {
        this.actTime = actTime;
    }
}

