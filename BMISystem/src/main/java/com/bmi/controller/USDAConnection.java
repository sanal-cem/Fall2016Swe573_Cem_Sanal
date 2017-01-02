package com.bmi.controller;

import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bmi.service.AppService;
/**
 * Created by Cem Þanal.
 */

@Controller
public class USDAConnection {

	@Autowired
	public AppService appService;
	
    private static final String API_KEY = "J1JqoqoyHlHqBle6EQi3Vj1p356YJZYulgiYvzLp";
    private static final String SEARCH_URL = "http://api.nal.usda.gov/ndb/search/?format=json&api_key=" + API_KEY + "&q=";

    @RequestMapping(value = "/foodSearch" , method = RequestMethod.GET)
    public String searchFood(Model model)
    {
    	appService.getAllFoodsUSDA();
        return "foodSearch";
    }
    
    @RequestMapping(value = "/foodList" , method = RequestMethod.GET, params = {"keyword"})
	public String searchFood(@RequestParam(value = "keyword") String keyword) {

		String url = SEARCH_URL;
		url += keyword;

		String jsonResponse = "";
		try (CloseableHttpClient httpClient = HttpClientBuilder.create().build()) {
			HttpGet request = new HttpGet(url.toString());
			HttpResponse result = httpClient.execute(request);

			jsonResponse = EntityUtils.toString(result.getEntity(), "UTF-8");
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return jsonResponse;
	}
	
}
