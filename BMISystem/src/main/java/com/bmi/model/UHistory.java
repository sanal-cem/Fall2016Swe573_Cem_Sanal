package com.bmi.model;

import java.util.Date;
/**
 * Created by Cem Þanal.
 */

public class UHistory {

	private String uName;
	private Date IDate;
	private Float weight;
	private Float bmi;
	
	public UHistory() {
	}
	
    public UHistory(String uName, Date IDate, Float weight, Float bmi)
    {
        this.uName = uName;
        this.IDate = IDate;
        this.weight = weight;
        this.bmi = bmi;
    }

	public String getuName() {
		return uName;
	}

	public void setuName(String uName) {
		this.uName = uName;
	}

	public Date getIDate() {
		return IDate;
	}

	public void setIDate(Date iDate) {
		this.IDate = iDate;
	}

	public Float getWeight() {
		return weight;
	}

	public void setWeight(Float weight) {
		this.weight = weight;
	}

	public Float getBmi() {
		return bmi;
	}

	public void setBmi(Float bmi) {
		this.bmi = bmi;
	}
}
