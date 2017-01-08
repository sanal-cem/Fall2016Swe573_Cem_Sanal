package com.bmi.model;

import java.util.Date;

/**
 * Created by Cem Þanal.
 */

public class ActItem {

	/**
	 * @uml.property  name="uName"
	 */
	private String uName;
    /**
	 * @uml.property  name="actId"
	 */
    private String actId;
	/**
	 * @uml.property  name="actName"
	 */
	private String actName;
	/**
	 * @uml.property  name="actType"
	 */
	private String actType;
    /**
	 * @uml.property  name="actClry"
	 */
    private int actClry;
    /**
	 * @uml.property  name="actTime"
	 */
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
	
    /**
	 * @return
	 * @uml.property  name="uName"
	 */
    public String getuName() {
        return uName;
    }

    /**
	 * @param uName
	 * @uml.property  name="uName"
	 */
    public void setuName(String uName) {
        this.uName = uName;
    }
	
    /**
	 * @return
	 * @uml.property  name="actId"
	 */
    public String getActId() {
        return actId;
    }

    /**
	 * @param actId
	 * @uml.property  name="actId"
	 */
    public void setActId(String actId) {
        this.actId = actId;
    }
	
    /**
	 * @return
	 * @uml.property  name="actName"
	 */
    public String getActName() {
        return actName;
    }

    /**
	 * @param actName
	 * @uml.property  name="actName"
	 */
    public void setActName(String actName) {
        this.actName = actName;
    }
	
    /**
	 * @return
	 * @uml.property  name="actType"
	 */
    public String getActType() {
        return actType;
    }

    /**
	 * @param actType
	 * @uml.property  name="actType"
	 */
    public void setActType(String actType) {
        this.actType = actType;
    }

    /**
	 * @return
	 * @uml.property  name="actClry"
	 */
    public int getActClry() {
        return actClry;
    }

    /**
	 * @param actClry
	 * @uml.property  name="actClry"
	 */
    public void setActClry(int actClry) {
        this.actClry = actClry;
    }

    /**
	 * @return
	 * @uml.property  name="actTime"
	 */
    public Date getActTime() {
        return actTime;
    }

    /**
	 * @param actTime
	 * @uml.property  name="actTime"
	 */
    public void setActTime(Date actTime) {
        this.actTime = actTime;
    }
}

