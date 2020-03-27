package com.sds.finalpj.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sds.finalpj.service.AdvertisementService;
import com.sds.finalpj.vo.Advertisement;

@Controller
public class PieChartController {
	
	@Autowired
	AdvertisementService advertisementservice;

	@RequestMapping(value = "/userspiechart", method = { RequestMethod.GET, RequestMethod.POST })
	public void UsersPieChart(HttpServletRequest request, HttpServletResponse response) {

		System.out.println("hi piechart");

		response.setContentType("text/json; charset=EUC-KR");
		JSONArray ja = new JSONArray();
		ArrayList<Advertisement> list2 = advertisementservice.AdvertisementSearchAll();
		ArrayList<String> adcateregister = new ArrayList<String>();

		int[] getcategory = new int[5];
		

		for (int i = 0; i < list2.size(); i++) {
			Advertisement tmp2 = list2.get(i);
			adcateregister.add(tmp2.getAdcategory());
		}

//		// 카테고리별 광고 수
		for (int i = 0; i < adcateregister.size(); i++) {
			
			if (adcateregister.get(i).equals("living")) {
				getcategory[0]++;
			} else if (adcateregister.get(i).equals("food")) {
				getcategory[1]++;
			} else if (adcateregister.get(i).equals("culture")) {
				getcategory[2]++;
			} else if (adcateregister.get(i).equals("fashion")) {
				getcategory[3]++;
			} else if (adcateregister.get(i).equals("etc")) {
				getcategory[4]++;
			} else {

			}
		}
		
		try {		
			for(int i=0; i<getcategory.length; i++)
			{
				JSONObject obj = new JSONObject();
				obj.put("getcategory", getcategory[i]);
		
				ja.add(obj);
			}
			PrintWriter out = response.getWriter();
			out.write(ja.toJSONString());
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	
	
	}
}
