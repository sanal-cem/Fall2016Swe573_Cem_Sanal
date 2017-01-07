package com.bmi.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.bmi.model.ActItem;

public class ActivityService {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	public String addActivity(ActItem act) {
		try {
			String sql = "INSERT INTO UACTIVITY("
					+ "UNAME, ACTID, ACTNAME, "
					+ "ACTTYPE, ACTCALORY, ACTTIME"
					+ ") values(?,?,?,?,?,?)";
			jdbcTemplate.update(sql, new Object[] { RegLoginService.user.getuName(),
					act.getActId(), act.getActName(),
					act.getActType(), act.getActClry(),
					act.getActTime()			});
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
			return "newActivityFailed";
		}
		return "newActivitySuccess";
	}
	
	public String showActivity(ActItem act) {
		List<Map<String, Object>> actRows = null;
 	    SimpleDateFormat dd = new SimpleDateFormat("yyyy-MM-dd");
		try {
			// Chosen user name inserted after LIKE expression.
			String query = "SELECT UNAME, ACTID,"
					+ "ACTNAME, ACTTYPE, ACTCALORY,"
					+ "ACTTIME FROM UACTIVITY"
					+ "  WHERE UNAME LIKE "
					+ "'" + RegLoginService.user.getuName() + "'";
			actRows = jdbcTemplate.queryForList(query);
		    for(Map<String, Object> row : actRows){
//			   *Every ActItem should be shown.
			   if(row.get("UNAME") != null) {
			   act.setuName(row.get("UNAME").toString());
			   }
			   else {
				   act.setuName(" ");
			   }
			   
			   if(row.get("ACTID") != null) {
			   act.setActId(row.get("ACTID").toString());
			   }
			   else {
				   act.setActId(" ");
			   }
			   
			   if(row.get("ACTNAME") != null) {
			   act.setActName(row.get("ACTNAME").toString());
			   }
			   else {
				   act.setActName(" ");
			   }
			   
			   if(row.get("ACTTYPE") != null) {
			   act.setActType(row.get("ACTTYPE").toString());
			   }
			   else {
				   act.setActType(" ");
			   }
			   
			   if(row.get("ACTCALORY") != null) {
			   act.setActClry(Integer.parseInt(row.get("ACTCALORY").toString()));
			   }
			   else {
				   act.setActClry(0);
			   }
			   
			   if(row.get("ACTTIME") != null) {
			   act.setActTime(dd.parse(row.get("ACTTIME").toString().substring(0, 10)));
			   }
			   else {
				   Date d = dd.parse("1900-01-01");
				   act.setActTime(d);
			   }
			
//			   acts.addActItem(act);

		     }
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return "showActivity";
	}
}
