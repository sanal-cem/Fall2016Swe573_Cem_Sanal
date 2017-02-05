package com.bmi.model;

import java.util.Date;

public class UserActivity {
	private String actId;
	private String uName;
	private float duration;
	private Date tstart;
	private float calorie;
	
	public UserActivity() {
		
	}
	
	public UserActivity(String uName, String actId, float duration, Date tstart, float calorie) {
		this.uName = uName;
		this.actId = actId;
		this.duration = duration;
		this.tstart = tstart;
		this.calorie = calorie;
	}

    public String getActId() {
        return actId;
    }

    public void setActId(String actId) {
        this.actId = actId;
    }

    public String getUName() {
        return uName;
    }

    public void setUName(String uName) {
        this.uName = uName;
    }
    
    public float getDuration() {
        return duration;
    }

    public void setDuration(float duration) {
        this.duration = duration;
    }
    
    public Date getTstart() {
        return tstart;
    }

    public void setTstart(Date tstart) {
        this.tstart = tstart;
    }
    
    public float getCalorie() {
        return calorie;
    }

    public void setCalorie(float cal) {
        this.calorie = cal;
    }
}
