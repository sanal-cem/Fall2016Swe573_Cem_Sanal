package com.bmi.model;
/**
 * Created by Cem Þanal.
 */

public class FNutrients {
	
	private String uName;
	private String fName;
    private String fndbno;
    private String nid;
	private String nName;
    private String group;
	private String nunit;
    private float nvalue;
    
	public FNutrients() {
		
	}
	
	public FNutrients(String uName, String fName, String fndbno, String nid, String nName, String group, String nunit, float nvalue) {
		this.uName = uName;
		this.fName = fName;
		this.fndbno = fndbno;
		this.nid = nid;
		this.nName = nName;
		this.group = group;
		this.nunit = nunit;
		this.nvalue = nvalue;
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
	
	public String getFndbno() {
		return fndbno;
	}

	public void setFndbno(String fndbno) {
		this.fndbno = fndbno;
	}
	
	public String getNid() {
		return nid;
	}

	public void setNid(String nid) {
		this.nid = nid;
	}
	
	public String getnName() {
		return nName;
	}

	public void setnName(String nName) {
		this.nName = nName;
	}
	
	public String getGroup() {
		return group;
	}
	
	public void setGroup(String group) {
		this.group = group;
	}
	
	public String getNunit() {
		return nunit;
	}

	public void setNunit(String nunit) {
		this.nunit = nunit;
	}
	
	public float getNvalue() {
		return nvalue;
	}

	public void setNvalue(float nvalue) {
		this.nvalue = nvalue;
	}
	
}
