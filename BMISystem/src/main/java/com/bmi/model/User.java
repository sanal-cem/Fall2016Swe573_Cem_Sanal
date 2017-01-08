package com.bmi.model;

/**
 * Created by Cem Þanal.
 */
public class User {
	/**
	 * @uml.property  name="uName"
	 */
	private String uName;
	/**
	 * @uml.property  name="surName"
	 */
	private String surName;
	/**
	 * @uml.property  name="name"
	 */
	private String name;
	/**
	 * @uml.property  name="pass"
	 */
	private String pass;
	/**
	 * @uml.property  name="age"
	 */
	private String age;
	/**
	 * @uml.property  name="comment"
	 */
	private String comment;
	/**
	 * @uml.property  name="isValid"
	 */
	private boolean isValid = false;
	/**
	 * @uml.property  name="bmi"
	 */
	private double bmi;
	/**
	 * @uml.property  name="height"
	 */
	private double height;
	/**
	 * @uml.property  name="weight"
	 */
	private double weight;
	
	public User() {
		isValid = true;
	}
	
    public User(String uName, String pass)
    {
        this.uName = uName;
        this.pass = pass;
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
	 * @uml.property  name="pass"
	 */
	public String getPass() {
		return pass;
	}
	
	/**
	 * @param pass
	 * @uml.property  name="pass"
	 */
	public void setPass(String pass) {
		this.pass = pass;
	}

	/**
	 * @return
	 * @uml.property  name="surName"
	 */
	public String getSurName() {
		return surName;
	}
	
	/**
	 * @param surName
	 * @uml.property  name="surName"
	 */
	public void setSurName(String surName) {
		this.surName = surName;
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

	/**
	 * @return
	 * @uml.property  name="age"
	 */
	public String getAge() {
		return age;
	}
	
	/**
	 * @param age
	 * @uml.property  name="age"
	 */
	public void setAge(String age) {
		this.age = age;
	}

	/**
	 * @return
	 * @uml.property  name="comment"
	 */
	public String getComment() {
		return comment;
	}
	
	/**
	 * @param comment
	 * @uml.property  name="comment"
	 */
	public void setComment(String comment) {
		this.comment = comment;
	}
	
	public boolean getIsValid() {
		return isValid;
	}
	
	/**
	 * @param isValid
	 * @uml.property  name="isValid"
	 */
	public void setIsValid(boolean isValid) {
		this.isValid = isValid;
	}
	
	/**
	 * @return
	 * @uml.property  name="bmi"
	 */
	public double getBmi() {
		return bmi;
	}
	
	/**
	 * @param bmi
	 * @uml.property  name="bmi"
	 */
	public void setBmi(double bmi) {
		this.bmi = bmi;
	}
	
	/**
	 * @return
	 * @uml.property  name="height"
	 */
	public double getHeight() {
		return height;
	}
	
	/**
	 * @param height
	 * @uml.property  name="height"
	 */
	public void setHeight(double height) {
		this.height = height;
	}
	
	/**
	 * @return
	 * @uml.property  name="weight"
	 */
	public double getWeight() {
		return weight;
	}
	
	/**
	 * @param weight
	 * @uml.property  name="weight"
	 */
	public void setWeight(double weight) {
		this.weight = weight;
	}
}