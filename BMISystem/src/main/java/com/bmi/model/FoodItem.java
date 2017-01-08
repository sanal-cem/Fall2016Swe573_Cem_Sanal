package com.bmi.model;

/**
 * Created by Cem Þanal.
 */

public class FoodItem {

    /**
	 * @uml.property  name="offset"
	 */
    private String offset;
    /**
	 * @uml.property  name="group"
	 */
    private String group;
	/**
	 * @uml.property  name="name"
	 */
	private String name;
	/**
	 * @uml.property  name="ndbno"
	 */
	private String ndbno;
    /**
	 * @uml.property  name="ds"
	 */
    private String ds;
    /**
	 * @uml.property  name="uName"
	 */
    private String uName;
    /**
	 * @uml.property  name="fCalory"
	 */
    private int fCalory;
    /**
	 * @uml.property  name="fIngred"
	 */
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
	 * @uml.property  name="offset"
	 */
    public String getOffset() {
        return offset;
    }

    /**
	 * @param offset
	 * @uml.property  name="offset"
	 */
    public void setOffset(String offset) {
        this.offset = offset;
    }

    /**
	 * @return
	 * @uml.property  name="group"
	 */
    public String getGroup() {
        return group;
    }

    /**
	 * @param group
	 * @uml.property  name="group"
	 */
    public void setGroup(String group) {
        this.group = group;
    }

    /**
	 * @return
	 * @uml.property  name="name"
	 */
    public String getName() {
        return name;
    }

    /**
	 * @param name
	 * @uml.property  name="name"
	 */
    public void setName(String name) {
        this.name = name;
    }

    public String getndbno() {
        return ndbno;
    }

    public void setndbno(String ndbno) {
        this.ndbno = ndbno;
    }

    /**
	 * @return
	 * @uml.property  name="ds"
	 */
    public String getDs() {
        return ds;
    }

    /**
	 * @param ds
	 * @uml.property  name="ds"
	 */
    public void setDs(String ds) {
        this.ds = ds;
    }
    
	public Integer getfCalory() {
		return fCalory;
	}
	
	public void setfCalory(Integer fCalory) {
		this.fCalory = fCalory;
	}
	
	/**
	 * @return
	 * @uml.property  name="fIngred"
	 */
	public String getfIngred() {
		return fIngred;
	}
	
	/**
	 * @param fIngred
	 * @uml.property  name="fIngred"
	 */
	public void setfIngred(String fIngred) {
		this.fIngred = fIngred;
	}
}

