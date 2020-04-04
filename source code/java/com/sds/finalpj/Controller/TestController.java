package com.sds.finalpj.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TestController {

	@RequestMapping(value = "/test", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView test() {

		ModelAndView mv = new ModelAndView();
		mv.addObject("center", "test");
		mv.setViewName("index");

		return mv;

	}

}
