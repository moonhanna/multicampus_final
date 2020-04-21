package com.sds.finalpj.Controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sds.finalpj.service.BillboardService;
import com.sds.finalpj.vo.Billboard;

@Controller
public class MapController {
	
	@Autowired
	BillboardService billboardservice;

	@RequestMapping(value = "/map", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView index() {
		
		ArrayList<Billboard> list = billboardservice.BillboardSearchAll();
		double latitude;
		double longitude;
		
		Billboard tmp = list.get(0);
		latitude = tmp.getLatitude();
		longitude = tmp.getLongitude();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("center", "map");
		mv.addObject("latitude", latitude);
		mv.addObject("longitude", longitude);
		mv.addObject("url", "//dapi.kakao.com/v2/maps/sdk.js?appkey=e68bc7578d6d86ef183c2aff62c3ed4c");
		mv.setViewName("index");
		
		return mv;
		
	}


}
