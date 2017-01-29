package com.bmi.model;
/**
 * Created by Cem Þanal.
 */

public class FMeasures {
	
	private String uName;
	private String fName;
    private String label;
    private float eqv;
	private float qty;
    private float value;
    
	public FMeasures() {
		
	}
	
	public FMeasures(String uName, String fName, String label, float eqv, float qty, float value) {
		this.uName = uName;
		this.fName = fName;
		this.label = label;
		this.eqv = eqv;
		this.qty = qty;
		this.value = value;
	}
	
	public String getUName() {
		return uName;
	}

	public void setUName(String uName) {
		this.uName = uName;
	}
	
	public String getFName() {
		return fName;
	}

	public void setFName(String fName) {
		this.fName = fName;
	}
	
	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}
	
	public float getEqv() {
		return eqv;
	}

	public void setEqv(float eqv) {
		this.eqv = eqv;
	}
	
	public float getQty() {
		return qty;
	}

	public void setQty(float qty) {
		this.qty = qty;
	}
	
	public float getValue() {
		return value;
	}

	public void setValue(float value) {
		this.value = value;
	}
}
