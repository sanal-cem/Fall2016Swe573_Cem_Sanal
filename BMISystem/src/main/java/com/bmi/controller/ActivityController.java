package com.bmi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bmi.domain.ActivityGroupList;
import com.bmi.domain.ActivityList;
import com.bmi.domain.UserActivityList;
import com.bmi.service.ActivityService;
/**
 * Created by Cem Þanal.
 */

@Controller
public class ActivityController {

	@Autowired
	public ActivityService actService;
	
	public void setAppService(ActivityService actService) {
		this.actService = actService;
	}
	
	@RequestMapping("/activityList")
	public String fetchShowActivities(
			Model model,
			ActivityList actList,
			ActivityGroupList actGrpList) {
		model.addAttribute("actList", actList);
		model.addAttribute("actGrpList", actGrpList);
		actService.JSONActivityFetching(actList, actGrpList);
		return "activityList";
	}
	
	@RequestMapping("/addActivity")
	public String addUsersActivity(
			Model model,
			@RequestParam(value = "duration") String duration,
			@RequestParam(value = "date") String date,
			@RequestParam(value = "actID") String actID) {
		
		model.addAttribute("duration", duration);
		model.addAttribute("date", date);
		model.addAttribute("actID", actID);
		return actService.addUsersActivity(duration, date, actID);
	}
	
    @RequestMapping(value = "/showActivity")
	public String showUsersActivity(Model model,
			ActivityList actList,
			UserActivityList uActList) {
    	model.addAttribute("actList", actList);
    	model.addAttribute("uActList", uActList);
    	return actService.showUsersActivity(actList, uActList);
	}
	
	@RequestMapping("/newActivitySuccess")
	public String actSuccessForm(Model model,
			@ModelAttribute("actID") String actID) {
		return "newActivitySuccess";
	}

	@RequestMapping("/newActivityFailed")
	public String actFailForm(Model model) {
		return "newActivityFailed";
	}
}
