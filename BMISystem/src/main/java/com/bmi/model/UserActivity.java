package com.bmi.model;

import java.util.Date;

public class UserActivity {
	private String actId;
	private String uName;
	private double duration;
	private Date tstart;
	
	public UserActivity() {
		
	}
	
	public UserActivity(String uName, String actId, double duration, Date tstart) {
		this.uName = uName;
		this.actId = actId;
		this.duration = duration;
		this.tstart = tstart;
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
    
    public double getDuration() {
        return duration;
    }

    public void setDuration(double duration) {
        this.duration = duration;
    }
    
    public Date getTstart() {
        return tstart;
    }

    public void setTstart(Date tstart) {
        this.tstart = tstart;
    }
}
