package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
	
	@RequestMapping(value= "/accessDenied", method = RequestMethod.GET)

		public ModelAndView ShowaccessDenied()
		{
			System.out.println("Welcome to home page");
			ModelAndView mv = new ModelAndView("/Accessdenied");
			mv.addObject("user", "You are not authorized to access this page");
			return mv;
		}
	}
	
	
