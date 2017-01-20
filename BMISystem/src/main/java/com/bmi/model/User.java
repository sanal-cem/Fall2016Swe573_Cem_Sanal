package com.bmi.model;
/**
 * Created by Cem Þanal.
 */

public class User {

	private String uName;
	private String surName;
	private String name;
	private String pass;
	private String age;
	private String comment;
	private boolean isValid = false;
	private float bmi;
	private float height;
	private float weight;
	private String gender;
	
	public User() {
		isValid = true;
	}
	
    public User(String uName, String pass)
    {
        this.uName = uName;
        this.pass = pass;
    }

	public String getuName() {
		return uName;
	}

	public void setuName(String uName) {
		this.uName = uName;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getSurName() {
		return surName;
	}

	public void setSurName(String surName) {
		this.surName = surName;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}
	
	public boolean getIsValid() {
		return isValid;
	}

	public void setIsValid(boolean isValid) {
		this.isValid = isValid;
	}

	public float getBmi() {
		return bmi;
	}

	public void setBmi(float bmi) {
		this.bmi = bmi;
	}

	public float getHeight() {
		return height;
	}

	public void setHeight(float height) {
		this.height = height;
	}
	
	public float getWeight() {
		return weight;
	}

	public void setWeight(float weight) {
		this.weight = weight;
	}
	
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
}