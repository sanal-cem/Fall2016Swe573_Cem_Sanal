package com.bmi.domain;

import java.util.ArrayList;
import com.bmi.model.UHistory;
/**
 * Created by Cem Þanal.
 */

public class UHistoryList {
	private ArrayList<UHistory> uHists;
	
	public UHistoryList() {
		uHists = new ArrayList<UHistory>();
	}
	
	public UHistoryList(ArrayList<UHistory> uHistories) {
		this.uHists = uHistories;
	}
	
	public ArrayList<UHistory> getUHistList() {
		return uHists;
	}
	
	public void setUHistList(ArrayList<UHistory> uHistories) {
		this.uHists = uHistories;
	}
	
	public void addUHistItem(UHistory uHist) {
		uHists.add(uHist);
	}
}
