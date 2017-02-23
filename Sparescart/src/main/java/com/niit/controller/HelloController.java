package com.niit.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController {
	@Autowired
	private HttpSession session;
	
	
	@RequestMapping("/")
	public ModelAndView ShowHomePage()
	{
		System.out.println("Welcome to home page");
		ModelAndView mv = new ModelAndView("/index");
		mv.addObject("msg", "Welcome to shopping cart");
		return mv;
	}
	
	@RequestMapping("/login")
	public ModelAndView ShowLoginPage()
	{
		System.out.println("Welcome to login page");
		ModelAndView mv = new ModelAndView("/Login");
		mv.addObject("Isuserclickedlogin", "true");
		return mv;
	}
	
	@RequestMapping("/register")
	public ModelAndView Showregistration()
	{
		System.out.println("clicked a register page");
		ModelAndView mv = new ModelAndView("/Register");
		mv.addObject("Isuserclickedregister", "true");
		return mv;
	}
	
	@RequestMapping("/validate")
	public  ModelAndView ValidateCredentials(@RequestParam("userid")String id,@RequestParam("password")String p)
	{
	ModelAndView mv	 = new ModelAndView("/index");
	if(id.equals("niit")&&p.equals("niit@123"))
	{
		mv.addObject("successmessage", "Valid Credentials");
		session.setAttribute("loginmessage", "welcome:"+id);
	}
	else
	{
		mv.addObject("errormessage", "Invalid credentials...plz try again");
	}
	return mv;
	}
	
	@RequestMapping("/logout")
	public ModelAndView Logout()
	{
		ModelAndView mv = new ModelAndView("/index");
		session.removeAttribute("loginmessage");
		return mv;
	}
}



