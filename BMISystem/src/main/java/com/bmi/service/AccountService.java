package com.bmi.service;

import java.util.Date;
import java.util.List;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.bmi.domain.FoodList;
import com.bmi.domain.UHistoryList;
import com.bmi.domain.UserActivityList;
import com.bmi.model.FoodItem;
import com.bmi.model.UHistory;
import com.bmi.model.User;
import com.bmi.model.UserActivity;
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
	
	public String login(User userL, UHistoryList uHistList, UserActivityList uActListG, FoodList foodListG) {
	    try
	    {
        if(user.getIsValid())
        {
        	try {
    			String query = "SELECT UNAME, PASS, "
    					+ " NAME, SURNAME , AGE, GENDER, "
    					+ " COMMENT, HEIGHT, WEIGHT, "
    					+ " BMI, WEIGHTTYPE FROM USERS "
    					+ " WHERE UNAME LIKE "
    					+ '"' + userL.getuName() + '"'
    					+ " AND PASS LIKE " + '"'
    					+ userL.getPass() + '"';
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
    		    	user.setHeight(Float.parseFloat(row.get("HEIGHT").toString()));
    		    	userL.setHeight(Float.parseFloat(row.get("HEIGHT").toString()));
    		    	user.setWeight(Float.parseFloat(row.get("WEIGHT").toString()));
    		    	userL.setWeight(Float.parseFloat(row.get("WEIGHT").toString()));
    		    	user.setBmi(Float.parseFloat(row.get("BMI").toString()));
    		    	userL.setBmi(Float.parseFloat(row.get("BMI").toString()));
    		    	user.setWeightType(row.get("WEIGHTTYPE").toString());
    		    	userL.setWeightType(row.get("WEIGHTTYPE").toString());
    		     }
    		} catch (Exception e) {
    			System.out.println(e.getMessage());
    			e.printStackTrace();
    			return "loginFailed";
    		}
	    	if(user.getPass().equals(userL.getPass()) == false)
	    		return "loginFailed";
	    	
	    	if(user.getuName().equals(userL.getuName()) == false)
	    		return "loginFailed";
	    	getGraphs(userL, uHistList, uActListG, foodListG);
        	return "loginSuccess";
        }else
        	//user name or password are not Valid
            return "logreg";
	    } catch (Throwable exc)
	    {
	        System.out.println(exc);
	    }
	    return "logreg";
	}
	
	public String getGraphs(User userL, UHistoryList uHistList, UserActivityList uActListG, FoodList foodListG) {
    	SimpleDateFormat dd = new SimpleDateFormat("yyyy-MM-dd");
    	Date hDate;
    	UHistory uHist;
    	try {
			String query = "SELECT UNAME, IDATE, "
					+ " WEIGHT, BMI "
					+ " FROM UHISTORY "
					+ " WHERE UNAME LIKE " + '"'
					+ userL.getuName() + '"';
		    for(Map<String, Object> row : jdbcTemplate.queryForList(query)){
		    	//DEÐÝÞTÝRÝLECEKLER
		    	hDate = dd.parse(row.get("IDATE").toString());
		    	uHist = new UHistory(row.get("UNAME").toString(),
		    			hDate,
		    			Float.parseFloat(row.get("WEIGHT").toString()),
		    			Float.parseFloat(row.get("BMI").toString())
		    			);
		    	uHistList.addUHistItem(uHist);
		     }
		    
			   UserActivity uAct;
			   // Chosen user name inserted after LIKE expression.
			   query = "SELECT ACTID, DURATION, "
					+ " TSTART, CALORIE FROM UACTIVITY "
					+ " WHERE UNAME LIKE " + '"' + AccountService.user.getuName() + '"';
			   List<Map<String, Object>> actRows = jdbcTemplate.queryForList(query);
			    for(Map<String, Object> urow : actRows){
			       uAct = new UserActivity();
				   
				   if(urow.get("ACTID") != null) {
				   uAct.setActId(urow.get("ACTID").toString());
				   }
				   else {
					   uAct.setActId(" ");
				   }
				   
				   if(urow.get("DURATION") != null) {
					   uAct.setDuration(Float.parseFloat(urow.get("DURATION").toString()));
				   }
				   else {
					   uAct.setDuration(0);
				   }
				   
				   if(urow.get("TSTART") != null) {
					   uAct.setTstart(dd.parse(urow.get("TSTART").toString().substring(0, 10)));
				   }
				   else {
					   Date d = dd.parse("1900-01-01");
					   uAct.setTstart(d);
				   }
				   
				   if(urow.get("CALORIE") != null) {
					   uAct.setCalorie(Float.parseFloat(urow.get("CALORIE").toString()));
				   }
				   else {
					   uAct.setCalorie(0);
				   }
				   uActListG.addActItem(uAct);
				}

				FoodItem foodItem;
				query = "SELECT FGROUP, FNAME, FCALORY, "
						+ "AMOUNT, FDATE FROM UFOODS "
						+ "WHERE UNAME LIKE "
						+ '"' + AccountService.user.getuName() + '"';
				List<Map<String, Object>> foodRows = jdbcTemplate.queryForList(query);
				for(Map<String, Object> row : foodRows){
					foodItem = new FoodItem();

				   if(row.get("FNAME") != null) {
					   foodItem.setName(row.get("FNAME").toString());
				   }
				   else {
					   foodItem.setName(" ");
				   }
				   
				   if(row.get("FCALORY") != null) {
					   foodItem.setfCalory(Float.parseFloat(row.get("FCALORY").toString()));
				   }
				   else {
					   foodItem.setfCalory(Float.parseFloat("0"));
				   }
				   
				   if(row.get("AMOUNT") != null) {
					   foodItem.setAmount(Integer.parseInt(row.get("AMOUNT").toString()));
				   }
				   else {
					   foodItem.setAmount(Integer.parseInt("0"));
				   }
				   
				   if(row.get("FDATE") != null) {
					   foodItem.setfDate(dd.parse(row.get("FDATE").toString().substring(0, 10)));
				   }
				   else {
					   Date d = dd.parse("1900-01-01");
					   foodItem.setfDate(d);
				   }
				
				   foodListG.addFoodItem(foodItem);
				}
				} catch (Exception e) {
					System.out.println(e.getMessage());
					e.printStackTrace();
				}
				return "loginSuccess";
	}
	
	public String reg(User userR) {
		float uBMI = calcUsersBMI(userR);
		userR.setBmi(uBMI);
		findUWeightType(userR);
		
		try {
			String sql = "INSERT INTO USERS("
					+ " UNAME, PASS, SURNAME, "
					+ " NAME, AGE, GENDER, COMMENT, "
					+ " HEIGHT, WEIGHT, BMI, WEIGHTTYPE "
					+ ") values(?,?,?,?,?,?,?,?,?,?,?)";
			jdbcTemplate.update(sql, new Object[] {
					userR.getuName(), userR.getPass(),
					userR.getSurName(), userR.getName(),
					userR.getAge(), userR.getGender(),
					userR.getComment(), userR.getHeight(),
					userR.getWeight(), uBMI, userR.getWeightType()
					});
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
			return "regFailed";
		}
		
		Calendar dtoday = Calendar.getInstance();
		dtoday.set(Calendar.HOUR_OF_DAY, 0);
		try {
			String sql = "INSERT INTO UHISTORY "
					+ " (UNAME, IDATE, WEIGHT, BMI)"
					+ " VALUES (?,?,?,?) ";
			jdbcTemplate.update(sql, new Object[] {
					userR.getuName(), dtoday,
					userR.getWeight(), uBMI
					});
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
			return "regFailed";
		}
		
		return "regSuccess";
	}
	
	protected float calcUsersBMI(User u) {

		float weight = u.getWeight();
		float height = u.getHeight();
		float bmi = 0;

        if(height == 0) {
        	bmi = 0;
        }
        else {
        	//metric calculation.
        	bmi = ((weight)/(height * height));
        }
        return bmi;
	}
	//calculates weight situation considering gender.
	protected void findUWeightType(User u) {
		if(u.getGender() == "M"){
			if (u.getBmi() > 27.2 ) {
				u.setWeightType("O");
			}
			else if (u.getBmi() <= 27.2 ) {
				u.setWeightType("N");
			}
			else if (u.getBmi() <= 18.5 ) {
				u.setWeightType("U");
			}
		}
		else {
			if (u.getBmi() > 25 ) {
				u.setWeightType("O");
			}
			else if (u.getBmi() <= 18.5 ) {
				u.setWeightType("U");
			}
			else if (u.getBmi() <= 25 ) {
				u.setWeightType("N");
			}
		}
	}
	
	public String update(User userU) {
		float uBMI = calcUsersBMI(userU);
		userU.setBmi(uBMI);
		findUWeightType(userU);
		Calendar dtoday = Calendar.getInstance();
		dtoday.set(Calendar.HOUR_OF_DAY, 0);
		try {
			String sql = "UPDATE USERS "
					+ " SET UNAME = ?, PASS = ?, SURNAME = ?, "
					+ " NAME = ?, AGE = ?, GENDER = ?, COMMENT = ?, "
					+ " HEIGHT = ?, WEIGHT = ?, BMI = ?, WEIGHTTYPE = ? "
					+ " WHERE UNAME = '" + user.getuName() + "'";
			jdbcTemplate.update(sql, new Object[] {
					userU.getuName(), userU.getPass(),
					userU.getSurName(), userU.getName(),
					userU.getAge(), userU.getGender(),
					userU.getComment(), userU.getHeight(),
					userU.getWeight(), uBMI, userU.getWeightType()
					});
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
			return "updFailed";
		}
    	user.setuName(userU.getuName());
    	user.setPass(userU.getPass());
    	user.setName(userU.getName());
    	user.setSurName(userU.getSurName());
    	user.setAge(userU.getAge());
    	user.setGender(userU.getGender());
    	user.setComment(userU.getComment());
    	user.setHeight(userU.getHeight());
    	user.setWeight(userU.getWeight());
    	user.setBmi(uBMI);
    	user.setWeightType(userU.getWeightType());
    	
		try {
			String sql = "INSERT INTO UHISTORY "
					+ " (UNAME, IDATE, WEIGHT, BMI)"
					+ " VALUES (?,?,?,?) ";
			jdbcTemplate.update(sql, new Object[] {
					user.getuName(), dtoday,
					userU.getWeight(), uBMI
					});
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
			return "updFailed";
		}
    	
		return "updSuccess";
	}
}