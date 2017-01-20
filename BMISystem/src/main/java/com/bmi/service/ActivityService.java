package com.bmi.service;

import java.io.File;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.bmi.domain.ActivityGroupList;
import com.bmi.domain.ActivityList;
import com.bmi.domain.UserActivityList;
import com.bmi.model.ActivityGroup;
import com.bmi.model.ActivityItem;
import com.bmi.model.UserActivity;
/**
 * Created by Cem Þanal.
 */

public class ActivityService {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	private ActivityList actListGlbl = new ActivityList();
	private ActivityGroupList actGroupListGlbl = new ActivityGroupList();
	private UserActivityList userActListGlbl = new UserActivityList();
    private static final String jsonLoc = "C:/Users/Cem/Documents/workspace-sts-3.8.2.RELEASE/BMISystem/src/main/webapp/resources/json/";

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	public String addUsersActivity(String duration, String date, String actID) {
		boolean check = true;
		
		SimpleDateFormat dd = new SimpleDateFormat("dd/MM/yyyy");
		ActivityItem actItem = new ActivityItem();
		actItem = actListGlbl.getActListID(actID);
		
		try {
			UserActivity userActivity = new UserActivity(AccountService.user.getuName(), actItem.getActId(), Double.parseDouble(duration), dd.parse(date.substring(0, 10)));
			userActListGlbl.addActItem(userActivity);
			
			List<Map<String, Object>> actRows = null;
			String query = "SELECT ACTID FROM UACTIVITY "
					+ "WHERE UNAME LIKE '" + AccountService.user.getuName()
					+ "' AND ACTID LIKE '" + actID + "'";
			actRows = jdbcTemplate.queryForList(query);
			for(Map<String, Object> row : actRows){
		    	
				   if(row.get("ACTID") != null) {
					   check = false;
				   }
				   else {
					   check = true;
				   }
			}
			if(check == true) {
				String sql = "INSERT INTO UACTIVITY ("
						+ "UNAME, ACTID, DURATION, TSTART "
						+ ") values(?,?,?,?)";
				jdbcTemplate.update(sql, new Object[] {
						AccountService.user.getuName(),
						userActivity.getActId(),
						userActivity.getDuration(),
						userActivity.getTstart()
						});

				actRows = null;
				query = "SELECT ACTID "
						+ "FROM UACTIVITYINFO "
						+ "WHERE UNAME LIKE '" + AccountService.user.getuName()
						+ "' AND ACTID LIKE '" + actItem.getActId() + "'";
				actRows = jdbcTemplate.queryForList(query);
				for(Map<String, Object> row : actRows){
			    	
					   if(row.get("ACTID") != null) {
						   check = false;
					   }
					   else {
						   check = true;
					   }
				}
				if(check == true) {
					sql = "INSERT INTO UACTIVITYINFO ("
							+ "UNAME, ACTID, ACTCODE, ACTMETS, "
							+ "ACTGROUPID, ACTDESC"
							+ ") values(?,?,?,?,?,?)";
					jdbcTemplate.update(sql, new Object[] {
							AccountService.user.getuName(),
							actItem.getActId(), actItem.getActCode(),
							actItem.getActMETS(), actItem.getActGroupID(),
							actItem.getActDesc()
							});
					
					ActivityGroup actGrp = new ActivityGroup();
					actGrp = actGroupListGlbl.getActGroupListID(actItem.getActGroupID());
					actRows = null;
					query = "SELECT ACTGRPID "
							+ "FROM UACTIVITYGRP "
							+ "WHERE UNAME LIKE '" + AccountService.user.getuName()
							+ "' AND ACTGRPID LIKE '" + actGrp.getActGrpId() + "'";
					actRows = jdbcTemplate.queryForList(query);
					for(Map<String, Object> row : actRows){
				    	
						   if(row.get("ACTGRPID") != null) {
							   check = false;
						   }
						   else {
							   check = true;
						   }
					}
					if(check == true) {
						sql = "INSERT INTO UACTIVITYGRP ("
								+ "UNAME, ACTGRPID, ACTNAME "
								+ ") values(?,?,?)";
						jdbcTemplate.update(sql, new Object[] {
								AccountService.user.getuName(),
								actGrp.getActGrpId(),
								actGrp.getActName()
								});
					}
				}
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
			return "newActivityFailed";
		}
		return "newActivitySuccess";
	}
	
	public String showUsersActivity(ActivityList actList, UserActivityList uActList) {
		List<Map<String, Object>> actRows = null;
		ActivityItem actItem;
		try {
			String query = "SELECT UNAME, ACTID, ACTCODE, "
					+ "ACTMETS, ACTGROUPID, ACTDESC "
					+ "FROM UACTIVITYINFO "
					+ "WHERE UNAME LIKE '" + AccountService.user.getuName() + "'";
			actRows = jdbcTemplate.queryForList(query);
		    for(Map<String, Object> row : actRows){
		    	actItem = new ActivityItem();
		    	
			   if(row.get("UNAME") != null) {
				   actItem.setUName(row.get("UNAME").toString());
			   }
			   else {
				   actItem.setUName(" ");
			   }
			   if(row.get("ACTID") != null) {
				   actItem.setActId(row.get("ACTID").toString());
			   }
			   else {
				   actItem.setActId(" ");
			   }
			   
			   if(row.get("ACTCODE") != null) {
				   actItem.setActCode(row.get("ACTCODE").toString());
			   }
			   else {
				   actItem.setActCode(" ");
			   }
			   
			   if(row.get("ACTMETS") != null) {
				   actItem.setActMETS(Float.parseFloat(row.get("ACTMETS").toString()));
			   }
			   else {
				   actItem.setActMETS(0);
			   }
			   
			   if(row.get("ACTGROUPID") != null) {
				   actItem.setActGroupID(row.get("ACTGROUPID").toString());
			   }
			   else {
				   actItem.setActGroupID(" ");
			   }
			   
			   if(row.get("ACTDESC") != null) {
				   actItem.setActDesc(row.get("ACTDESC").toString());
			   }
			   else {
				   actItem.setActDesc(" ");
			   }
			   actList.addActItem(actItem);
		    }

		   UserActivity uAct;
		   // Chosen user name inserted after LIKE expression.
		   SimpleDateFormat dd = new SimpleDateFormat("yyyy-MM-dd");
		   query = "SELECT UNAME, ACTID, DURATION, "
					+ "TSTART FROM UACTIVITY "
					+ "WHERE UNAME LIKE '" + AccountService.user.getuName() + "'";
			actRows = jdbcTemplate.queryForList(query);
		    for(Map<String, Object> urow : actRows){
		       uAct = new UserActivity();
		    	
			   if(urow.get("UNAME") != null) {
				   uAct.setUName(urow.get("UNAME").toString());
			   }
			   else {
				   uAct.setUName(" ");
			   }
			   
			   if(urow.get("ACTID") != null) {
				   uAct.setActId(urow.get("ACTID").toString());
			   }
			   else {
				   uAct.setActId(" ");
			   }
			   
			   if(urow.get("DURATION") != null) {
				   uAct.setDuration(Double.parseDouble(urow.get("DURATION").toString()));
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
			   uActList.addActItem(uAct);
		    }
		    
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return "showActivity";
	}
	public boolean JSONActivityFetching(ActivityList actList, ActivityGroupList actGroupList) {
		String actLink = jsonLoc + "activity.json";
		String actGrpLink = jsonLoc + "activityGroup.json";
		
		try {
			byte[] jsonData = Files.readAllBytes(Paths.get(actLink));
			String jsonString = new String(jsonData, StandardCharsets.UTF_8);
			JSONObject jsonObject = new JSONObject(jsonString);
			JSONArray jsonArray = jsonObject.getJSONArray("activities");
			ActivityItem actItem;
		    
		    int n = jsonArray.length();
	        for (int i = 0; i < n; i++) {
	          // Get each food one by one
				JSONObject jObj = jsonArray.getJSONObject(i);
	
	            // Add each food as FoodItem into the foodList
				actItem = new ActivityItem(
						AccountService.user.getuName(),
						jObj.getString("id"),
	            		jObj.getString("Code"),
	            		jObj.getDouble("METS"),
	            		jObj.getString("ActivityGroupId"),
	            		jObj.getString("Description")
	            		);
		        
		        actList.addActItem(actItem);
		        actListGlbl.addActItem(actItem);
	        }
	        
			jsonData = Files.readAllBytes(Paths.get(actGrpLink));
			jsonString = new String(jsonData, StandardCharsets.UTF_8);
			jsonObject = new JSONObject(jsonString);
			jsonArray = jsonObject.getJSONArray("activityGroups");
			ActivityGroup actGrpItem;
		    
		    int ng = jsonArray.length();
	        for (int j = 0; j < ng; j++) {
	          // Get each food one by one
	        	JSONObject jObj = jsonArray.getJSONObject(j);
	
	            // Add each food as FoodItem into the foodList
	        	actGrpItem = new ActivityGroup(
						AccountService.user.getuName(),
						jObj.getString("id"),
	            		jObj.getString("Name")
	            		);
		        
			actGroupList.addActGroupItem(actGrpItem);
	        actGroupListGlbl.addActGroupItem(actGrpItem);
	        }
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	        
		return true;
	}
}
