package com.bmi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bmi.model.ActItem;
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
	
	@RequestMapping("/addActivity")
	public String addActPage(Model model, ActItem act) {
		model.addAttribute("addActivity", act);
		return "addActivity";
	}
	
	@RequestMapping("/newActivity")
	public String addAct( Model model, ActItem act) {
		model.addAttribute("addActivity", act);
		return actService.addActivity(act);
	}
	
    @RequestMapping(value = "/showActivity")
	public String showAct(Model model, ActItem act) {
    	model.addAttribute("showActivity", act);
    	return actService.showActivity(act);
	}
	
	@RequestMapping("/newActivitySuccess")
	public String actSuccessForm(Model model, ActItem act) {
		model.addAttribute("act", act);
		return "newActivitySuccess";
	}

	@RequestMapping("/newActivityFailed")
	public String actFailForm(Model model, ActItem act) {
		model.addAttribute("act", act);
		return "newActivityFailed";
	}
}
