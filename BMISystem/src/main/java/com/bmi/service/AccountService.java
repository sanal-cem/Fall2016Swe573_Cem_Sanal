package com.bmi.service;

import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.bmi.model.User;
/**
 * Created by Cem Þanal.
 */

public class AccountService {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
    public static User user = new User();

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	public String login(User userL) {
	    try
	    {
		    	user.setuName(userL.getuName());
		        user.setPass(userL.getPass());
		        if(user.getIsValid())
		        {
		        	try {
		    			String query = "SELECT UNAME, PASS, "
		    					+ "NAME, SURNAME , AGE, GENDER, "
		    					+ "COMMENT, BMI FROM USERS "
		    					+ "WHERE UNAME LIKE '"
		    					+ userL.getuName() + "'"
		    					+ " AND PASS LIKE '"
		    					+ userL.getPass() + "'";
		    		    for(Map<String, Object> row : jdbcTemplate.queryForList(query)){
		    		    	user.setuName(row.get("UNAME").toString());
		    		    	userL.setuName(row.get("UNAME").toString());
		    		    	user.setPass(row.get("PASS").toString());
		    		    	userL.setPass(row.get("PASS").toString());
		    		    	user.setName(row.get("NAME").toString());
		    		    	userL.setName(row.get("NAME").toString());
		    		    	user.setSurName(row.get("SURNAME").toString());
		    		    	userL.setSurName(row.get("SURNAME").toString());
		    		    	user.setAge(row.get("AGE").toString());
		    		    	userL.setAge(row.get("AGE").toString());
		    		    	user.setGender(row.get("GENDER").toString());
		    		    	userL.setGender(row.get("GENDER").toString());
		    		    	user.setComment(row.get("COMMENT").toString());
		    		    	userL.setComment(row.get("COMMENT").toString());
		    		    	user.setBmi(Double.parseDouble(row.get("BMI").toString()));
		    		    	userL.setBmi(Double.parseDouble(row.get("BMI").toString()));
		    		     }
		    		    if(user.getName().isEmpty() && user.getSurName().isEmpty()) 
		    		    	return "loginFailed";
		    		} catch (Exception e) {
		    			System.out.println(e.getMessage());
		    			e.printStackTrace();
		    			return "loginFailed";
		    		}
		        	return "loginSuccess";
		        }else
		        	//notValid
		            return "logreg";
	    } catch (Throwable exc)
	    {
	        System.out.println(exc);
	    }
	    return "logreg";
	}
	
	public String reg(User userR) {
		try {
			String sql = "INSERT INTO USERS("
					+ "UNAME, PASS, SURNAME, "
					+ "NAME, AGE, GENDER, COMMENT, "
					+ "HEIGHT, WEIGHT, BMI "
					+ ") values(?,?,?,?,?,?,?,?,?,?)";
			jdbcTemplate.update(sql, new Object[] {
					userR.getuName(), userR.getPass(),
					userR.getSurName(), userR.getName(),
					userR.getAge(), userR.getGender(),
					userR.getComment(), userR.getHeight(),
					userR.getWeight(), calcUsersBMI(userR)
					});
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
			return "regFailed";
		}
		return "regSuccess";
	}
	
	public double calcUsersBMI(User reg) {

		double weight = reg.getWeight();
		double height = reg.getHeight();
		// BMI gender'a göre hesaplanacak.
		String gender = reg.getGender();
        double bmi = 0.0;

        if(height == 0) {
        	bmi = 0;
        }
        else {
        	bmi = ((weight * 703)/(height * height));
        }

        return bmi;
	}
	
	public String update(User userU) {
		try {
			String sql = "UPDATE USERS "
					+ "SET UNAME = ?, PASS = ?, SURNAME = ?, "
					+ "NAME = ?, AGE = ?, GENDER = ?, COMMENT = ?, "
					+ "HEIGHT = ?, WEIGHT = ?, BMI = ? "
					+ "WHERE UNAME = '" + user.getuName() + "'";
			jdbcTemplate.update(sql, new Object[] {
					userU.getuName(), userU.getPass(),
					userU.getSurName(), userU.getName(),
					userU.getAge(), userU.getGender(),
					userU.getComment(), userU.getHeight(),
					userU.getWeight(), calcUsersBMI(userU)
					});
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
			return "updFailed";
		}
		return "updSuccess";
	}
}