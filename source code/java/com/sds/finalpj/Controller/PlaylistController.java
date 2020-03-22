package com.sds.finalpj.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PlaylistController {

	@RequestMapping("/playlist")
	public ModelAndView playlist() {
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("center", "playlist");
		mv.setViewName("index");

		return mv;
	}
	
}
