package com.sds.finalpj.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UsersChartController {

	@RequestMapping(value = "/userschart", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView UsersChart() {
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("center", "userschart");
		mv.setViewName("index");
		
		return mv;
		
	}


}
