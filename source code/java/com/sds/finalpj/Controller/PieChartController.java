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

import com.sds.finalpj.service.AdvertisementService;
import com.sds.finalpj.service.UsersService;
import com.sds.finalpj.vo.Advertisement;
import com.sds.finalpj.vo.UserInterest;
import com.sds.finalpj.vo.Users;

@Controller
public class PieChartController {

	@Autowired
	AdvertisementService advertisementservice;

	@Autowired
	UsersService userservice;

	@RequestMapping(value = "/userspiechart", method = { RequestMethod.GET, RequestMethod.POST })
	public void UsersPieChart(HttpServletRequest request, HttpServletResponse response) {

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
			for (int i = 0; i < getcategory.length; i++) {
				JSONObject obj = new JSONObject();
				obj.put("getcategory", getcategory[i]);
				ja.add(obj);
			}
			// System.out.println(ja);
			PrintWriter out = response.getWriter();
			out.write(ja.toJSONString());
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@RequestMapping(value = "/barchart", method = { RequestMethod.GET, RequestMethod.POST })
	public void UsersChart(HttpServletRequest request, HttpServletResponse response) {

		response.setContentType("text/json; charset=EUC-KR");
		JSONArray ja = new JSONArray();

		ArrayList<Users> ulist = userservice.userSearchAll();

		ArrayList<UserInterest> uslist = userservice.interestSearchAll();
		ArrayList<String> userinfo = new ArrayList<String>();
		ArrayList<String> usergen = new ArrayList<String>();
		ArrayList<String> livingint = new ArrayList<String>();
		ArrayList<String> foodint = new ArrayList<String>();
		ArrayList<String> fashionint = new ArrayList<String>();
		ArrayList<String> cultureint = new ArrayList<String>();
		ArrayList<String> etcint = new ArrayList<String>();

		int[] getgenderM = new int[5];
		int[] getgenderF = new int[5];

		for (int i = 0; i < ulist.size(); i++) {
			Users tmp = ulist.get(i);
			UserInterest ttmp = uslist.get(i);

			userinfo.add(tmp.getUserid());
			usergen.add(tmp.getUsergender());
			livingint.add(ttmp.getLiving());
			foodint.add(ttmp.getFood());
			fashionint.add(ttmp.getFashion());
			cultureint.add(ttmp.getCulture());
			etcint.add(ttmp.getEtc());

		}

//		월 별 광고 수;
		for (int i = 0; i < ulist.size(); i++) {

			if (usergen.get(i).equals("M")) {
				if (livingint.get(i).equals("Y")) {
					getgenderM[0]++;
				}
				if (foodint.get(i).equals("Y")) {
					getgenderM[1]++;
				}
				if (fashionint.get(i).equals("Y")) {
					getgenderM[2]++;
				}
				if (cultureint.get(i).equals("Y")) {
					getgenderM[3]++;
				}
				if (etcint.get(i).equals("Y")) {
					getgenderM[4]++;
				}
			} else if (usergen.get(i).equals("F")) {
				if (livingint.get(i).equals("Y")) {
					getgenderF[0]++;
				}
				if (foodint.get(i).equals("Y")) {
					getgenderF[1]++;
				}
				if (fashionint.get(i).equals("Y")) {
					getgenderF[2]++;
				}
				if (cultureint.get(i).equals("Y")) {
					getgenderF[3]++;
				}
				if (etcint.get(i).equals("Y")) {
					getgenderF[4]++;
				}

			} else {

			}
		}

		try {
			for (int i = 0; i < getgenderM.length; i++) {
				JSONObject obj = new JSONObject();
				obj.put("getgenderM", getgenderM[i]);
				obj.put("getgenderF", getgenderF[i]);

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