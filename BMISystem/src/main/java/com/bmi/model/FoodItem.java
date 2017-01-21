package com.bmi.model;
/**
 * Created by Cem Þanal.
 */

public class FoodItem {

    private String offset;
    private String group;
	private String name;
	private String ndbno;
    private String ds;
    private String uName;
    private float weight;
    private String measure;
    private float fCalory;
    private int amount;
    
	public FoodItem() {
		
	}
	
	public FoodItem(String uName, String offset, String group, String name, String ndbno, String ds, float weight, String measure, float fCalory, int amount) {
		this.uName = uName;
		this.offset = offset;
		this.group = group;
		this.name = name;
		this.ndbno = ndbno;
		this.ds = ds;
		this.weight = weight;
		this.measure = measure;
		this.fCalory = fCalory;
		this.amount = amount;
	}
	
	public String getuName() {
		return uName;
	}

	public void setuName(String uName) {
		this.uName = uName;
	}

    public String getOffset() {
        return offset;
    }

    public void setOffset(String offset) {
        this.offset = offset;
    }

    public String getGroup() {
        return group;
    }

    public void setGroup(String group) {
        this.group = group;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNdbno() {
        return ndbno;
    }

    public void setNdbno(String ndbno) {
        this.ndbno = ndbno;
    }

    public String getDs() {
        return ds;
    }

    public void setDs(String ds) {
        this.ds = ds;
    }

	public double getWeight() {
		return weight;
	}

	public void setWeight(float weight) {
		this.weight = weight;
	}
	
	public String getMeasure() {
		return measure;
	}

	public void setMeasure(String measure) {
		this.measure = measure;
	}
    
	public Float getfCalory() {
		return fCalory;
	}
	
	public void setfCalory(Float fCalory) {
		this.fCalory = fCalory;
	}
	
	public int getAmount() {
		return amount;
	}
	
	public void setAmount(int amount) {
		this.amount = amount;
	}
}

