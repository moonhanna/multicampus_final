package com.sds.finalpj.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;

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
import com.sds.finalpj.vo.UserInterest;
import com.sds.finalpj.vo.Users;

@Controller
public class ChartController {

	@Autowired
	AdvertisementService advertisementservice;

	@RequestMapping(value = "/chart", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView Chart() {

		ModelAndView mv = new ModelAndView();
		mv.addObject("center", "chart");
		mv.setViewName("index");

		return mv;

	}

	@RequestMapping(value = "/userschart", method = { RequestMethod.GET, RequestMethod.POST })
	public void UsersChart(HttpServletRequest request, HttpServletResponse response) {
		
		response.setContentType("text/json; charset=EUC-KR");
		JSONArray ja = new JSONArray();
		ArrayList<Advertisement> list = advertisementservice.AdvertisementSearchAll();
		ArrayList<Integer> adregister = new ArrayList<Integer>();

		int[] getmonth = new int[12];
		int[] all = new int[12];

		for (int i = 0; i < list.size(); i++) {
			Advertisement tmp = list.get(i);
			adregister.add(tmp.getRegisterdate().getMonth() + 1);
		}

		// ¿ù º° ±¤°í ¼ö
		for (int i = 0; i < adregister.size(); i++) {
			
			if (adregister.get(i) == 1) {
				getmonth[0]++;
			} else if (adregister.get(i) == 2) {
				getmonth[1]++;
			} else if (adregister.get(i) == 3) {
				getmonth[2]++;
			} else if (adregister.get(i) == 4) {
				getmonth[3]++;
			} else if (adregister.get(i) == 5) {
				getmonth[4]++;
			} else if (adregister.get(i) == 6) {
				getmonth[5]++;
			} else if (adregister.get(i) == 7) {
				getmonth[6]++;
			} else if (adregister.get(i) == 8) {
				getmonth[7]++;
			} else if (adregister.get(i) == 9) {
				getmonth[8]++;
			} else if (adregister.get(i) == 10) {
				getmonth[9]++;
			} else if (adregister.get(i) == 11) {
				getmonth[10]++;
			} else if (adregister.get(i) == 12) {
				getmonth[11]++;
			} else {

			}

		}
		
		
		for(int i=0; i< getmonth.length; i++)
		{
			if(i == 0)
			{
				all[i] = getmonth[i];
			}else
			{
				all[i] = (all[i-1] + getmonth[i]);
			}

		}

		try {		
			for(int i=0; i<getmonth.length; i++)
			{
				JSONObject obj = new JSONObject();
				obj.put("getmonth", getmonth[i]);
				obj.put("all", all[i]);
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
