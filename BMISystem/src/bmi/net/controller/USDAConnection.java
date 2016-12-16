package bmi.net.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.databind.ObjectMapper;

import bmi.net.domain.FoodItem;
import bmi.net.controller.FoodSearchRes;

import java.util.LinkedHashMap;
import java.util.List;

/**
 * Created by Cem Þanal on 30.11.2016.
 */
@Controller
public class USDAConnection {

    private static final String API_KEY = "J1JqoqoyHlHqBle6EQi3Vj1p356YJZYulgiYvzLp";
    private static final String SEARCH_URL = "http://api.nal.usda.gov/ndb/search/?format=json&api_key=" + API_KEY + "&q=";
//    private static final String REPORT_URL = "http://api.nal.usda.gov/ndb/reports/?format=json&type=f&api_key=" + API_KEY + "&ndbno=";
    
    private LinkedHashMap getResultMap(String url)
    {
        RestTemplate restTemplate = new RestTemplate();
        LinkedHashMap resultMap = restTemplate.getForObject(url, LinkedHashMap.class);
        return resultMap;
    }


    @RequestMapping(value = "/foodSearch" , method = RequestMethod.GET)
    public String searchFood()
    {
        return "foodSearch";
    }

    @RequestMapping(value = "/foodList" , method = RequestMethod.GET, params = {"keyword"})
    public List<FoodItem> searchFood(@RequestParam(value = "keyword") String keyword)
    {
        LinkedHashMap resultMap = getResultMap(SEARCH_URL + keyword);
        ObjectMapper mapper = new ObjectMapper();
        FoodSearchRes searchResult = mapper.convertValue(resultMap.get("list"), FoodSearchRes.class);
        List<FoodItem> foodList = searchResult.getItem();
        return foodList;
    }

}
