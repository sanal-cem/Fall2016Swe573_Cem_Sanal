package bmi.net.controller;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.io.Serializable;
import java.util.List;
import bmi.net.domain.FoodItem;

/**
 * Created by Cem Þanal on 30.11.2016.
 */
@JsonIgnoreProperties(ignoreUnknown = true)
//@JsonRootName(value = "list")
public class FoodSearchRes implements Serializable{

    String q;
    int sr;
    String ds;
    int start;
    int end;
    int total;
    String group;
    String sort;
    List<FoodItem> item;

    public String getQ() {
        return q;
    }

    public void setQ(String q) {
        this.q = q;
    }

    public int getSr() {
        return sr;
    }

    public void setSr(int sr) {
        this.sr = sr;
    }

    public String getDs() {
        return ds;
    }

    public void setDs(String ds) {
        this.ds = ds;
    }

    public int getStart() {
        return start;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public int getEnd() {
        return end;
    }

    public void setEnd(int end) {
        this.end = end;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public String getGroup() {
        return group;
    }

    public void setGroup(String group) {
        this.group = group;
    }

    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort;
    }

    public List<FoodItem> getItem() {
        return item;
    }

    public void setItem(List<FoodItem> item) {
        this.item = item;
    }
}
