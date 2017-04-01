package com.niit.controller;

import javax.jws.soap.SOAPBinding.Use;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.sparescart.dao.MyCartDAO;
import com.niit.sparescart.dao.UserDAO;
import com.niit.sparescart.domain.Mycart;
import com.niit.sparescart.domain.User;

@Controller
public class HelloController {
	
	@Autowired
	private UserDAO userDAO;
	
	@Autowired
    private User user;	
	
	@Autowired
	private MyCartDAO myCartDAO;
	
	@Autowired
	private Mycart myCart;
	
	@Autowired
	private HttpSession session;	
	
	@RequestMapping(value= "/", method = RequestMethod.GET)
	public ModelAndView ShowHomePage()
	{
		System.out.println("Welcome to home page");
		ModelAndView mv = new ModelAndView("/index");
		mv.addObject("msg", "Welcome to shopping cart");
		mv.addObject("isAdmin","false");
		return mv;
	}
	
	//@RequestMapping("/login")
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView ShowLoginPage()
	{
		System.out.println("Welcome to login page");
		ModelAndView mv = new ModelAndView("/index");
		mv.addObject("Isuserclickedlogin", "true");
		return mv;
	}
	
	@RequestMapping("/register")
	public ModelAndView Showregistration()
	{
		System.out.println("clicked a register page");
		ModelAndView mv = new ModelAndView("/index");
		mv.addObject("Isuserclickedregister", "true");
		return mv;
	}
	
	@RequestMapping("/myCart")
	public ModelAndView Showmycart()
	{
		System.out.println("clicked a mycart page");
		ModelAndView mv = new ModelAndView("/index");
		mv.addObject("Isuserclickedmycart", "true");
		return mv;
	}

	@RequestMapping("/validate")
	public  ModelAndView ValidateCredentials(@RequestParam("username")String id,@RequestParam("password")String p)
	{
	ModelAndView mv	 = new ModelAndView("/index");
	mv.addObject("isUserLoggedIn", "false");
    if(userDAO.validate(id, p)==true)
	{
    	//credentials are correct
    	mv.addObject("isUserLoggedIn", "true");

    	user=userDAO.getUserByID(id);
    	if(user.getRole().equals("Role_Admin"))
    	{
    	mv.addObject("isAdmin", "true");
    	}
	
    else
    {
    	mv.addObject("isAdmin","false");
    }
    	
		mv.addObject("successmessage", "Valid Credentials");
		session.setAttribute("loginmessage", "welcome:"+id);
		session.setAttribute("id", id);
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
		mv.addObject("isAdmin", "false");
		session.removeAttribute("loginmessage");
		return mv;
	}
}



