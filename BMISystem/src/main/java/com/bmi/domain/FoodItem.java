package com.bmi.domain;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
/**
 * Created by Cem Þanal.
 */

@JsonIgnoreProperties(ignoreUnknown = true)
public class FoodItem {

    private int offset;
    private String group;
	@JsonProperty("nDbNo")
	private String nDbNo;
	
	@JsonProperty("name")
	private String name;
	
    private String ds;
    private String uName;
    private int fCalory;
    private String fIngred;
    
	public FoodItem() {
		
	}
	
	public FoodItem(int offset, String group, String name, String nDbNo, String ds, String uName, int fCalory, String fIngred) {
		this.offset = offset;
		this.group = group;
		this.name = name;
		this.nDbNo = nDbNo;
		this.ds = ds;
		this.uName = uName;
		this.fCalory = fCalory;
		this.fIngred = fIngred;
	}

	public String getuName() {
		return uName;
	}

	public void setuName(String uName) {
		this.uName = uName;
	}
	
    public int getOffset() {
        return offset;
    }

    public void setOffset(int offset) {
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

    public String getnDbNo() {
        return nDbNo;
    }

    public void setNdbno(String nDbNo) {
        this.nDbNo = nDbNo;
    }

    public String getDs() {
        return ds;
    }

    public void setDs(String ds) {
        this.ds = ds;
    }
    
	public Integer getfCalory() {
		return fCalory;
	}
	
	public void setfCalory(Integer fCalory) {
		this.fCalory = fCalory;
	}
	
	public String getfIngred() {
		return fIngred;
	}
	
	public void setfIngred(String fIngred) {
		this.fIngred = fIngred;
	}
}

