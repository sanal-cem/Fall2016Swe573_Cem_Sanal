package bmi.net.domain;

public class Food {
	private String uName;
	private String foodId;
	private String fName;
	private String fType;
	private Integer fCalory;
	private String fIngred;

//	public Food(String uName, String foodId, String fName, String fType, Integer fCalory, String fIngred) {
//		this.uName = uName;
//		this.foodId = foodId;
//		this.fName = fName;
//		this.fType = fType;
//		this.fCalory = fCalory;
//		this.fIngred = fIngred;
//	}

	public String getuName() {
		return uName;
	}

	public void setuName(String uName) {
		this.uName = uName;
	}

	public String getfoodId() {
		return foodId;
	}

	public void setfoodId(String foodId) {
		this.foodId = foodId;
	}
	
	public String getfName() {
		return fName;
	}
	
	public void setfName(String fName) {
		this.fName = fName;
	}
	
	public String getfType() {
		return fType;
	}
	
	public void setfType(String fType) {
		this.fType = fType;
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