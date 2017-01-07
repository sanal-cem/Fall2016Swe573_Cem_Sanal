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
    private int fCalory;
    private String fIngred;
    
	public FoodItem() {
		
	}
	
	public FoodItem(String offset, String group, String name, String ndbno, String ds, String uName, int fCalory, String fIngred) {
		this.offset = offset;
		this.group = group;
		this.name = name;
		this.ndbno = ndbno;
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

    public String getndbno() {
        return ndbno;
    }

    public void setndbno(String ndbno) {
        this.ndbno = ndbno;
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

