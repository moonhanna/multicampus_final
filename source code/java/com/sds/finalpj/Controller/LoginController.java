package com.sds.finalpj.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sds.finalpj.service.UsersService;
import com.sds.finalpj.vo.Users;

@Controller
public class LoginController {

	@Autowired
	UsersService usersservice;

	@RequestMapping("/")
	public String login(Model model) {

		return "login";
	}
	
	@RequestMapping(value = "/index", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView index() {
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("center", "main");
		mv.setViewName("index");
		
		return mv;
		
	}

	@RequestMapping(value = "/loginimpl", method = RequestMethod.POST)
	public ModelAndView loginimpl(HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");

		Users user = usersservice.userSearch(id);

		if (user.getUserid().equals("admin") && user.getUserpwd().equals(pwd)) {					
			mv.addObject("center", "main");
			mv.setViewName("index");
			return mv;
		}

		mv.setViewName("login");
		
		return mv;
		
	}

}
