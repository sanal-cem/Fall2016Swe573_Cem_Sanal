package com.bmi.model;
/**
 * Created by Cem Þanal.
 */

public class FNutMeasures {
	private String nid;
    private String label;
    private float eqv;
	private float qty;
    private float value;
    
	public FNutMeasures() {
		
	}
	
	public FNutMeasures(String nid, String label, float eqv, float qty, float value) {
		this.nid = nid;
		this.label = label;
		this.eqv = eqv;
		this.qty = qty;
		this.value = value;
	}
	
	public String getNid() {
		return nid;
	}

	public void setNid(String nid) {
		this.nid = nid;
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
